#!/usr/bin/env ruby
#
# $Id: run_tests.rb 1287 2010-05-03 14:43:48Z ptr $
# thorn-llvm
#
# Usage:
#   run_tests [test_files ...]
# 
# Description:
#   Runs all tests in current folder if no arguments are given.
#   Each test can have a .libs file which states library dependencies, tests 
#   can also have an .opts file which contains the command line arguments for the tool
# 
#   If there's a shell script in the current folder called 'run_test', it will be used
#   for running each test.
# 
#   test_stats will be run at the end with all tests that succeeded as args
# 
# (c) Copyright 2010 Peter Backman. All Rights Reserved. 
#

ROOT = "#{File.dirname(__FILE__)}/" unless defined?(ROOT)


def colorize(text, color_code)
  "\e[#{color_code}m#{text}\e[0m"
end

def red(text); colorize(text, 31); end
def green(text); colorize(text, 32); end

def redirect_output(to)
	old_stdout = $stdout.dup
	old_stderr = $stderr.dup
	
	$stdout.reopen(File.new(to, "w"))
	$stderr.reopen($stdout)
	
	ret = yield
	
	$stdout.reopen(old_stdout)
	$stderr.reopen(old_stderr)

	ret
end

def header(caption)
	"-- " + caption + " " + (caption.size..75).collect {"-"}.to_s
end

system("rm *.log")

entries = Dir.new(".").entries
anitas = entries.select {|x| x.match('.anita') and not x.match('tunit.anita')};
$failed_tests = []
$successful_tests = []


def test_file(file)
	basename = File.basename(file, ".anita")
	puts header(file.chomp ".anita")
	puts "*** Compiling..."
	
	begin
		libs_file = File.open(basename + ".libs")
	rescue
	end
	
	exec_line = ROOT + "ctc " + file
	exec_line = exec_line + " --libs " + libs_file.read if libs_file
	
	compile_success = redirect_output(basename + ".log") do
		system(exec_line)
	end
	
	unless compile_success
		puts red("*** Compilation failed!")
		$failed_tests << file
	else
		puts green("*** Compilation successful.")
		puts "*** Running test..."
	
		begin
			opts_file = File.open(basename + ".opts")
		rescue
		end

		# if there's an .opts file for the test, load cmdline arguments from it
	
		options = []
		options = opts_file.read.strip.split(" ") if opts_file

		binary = "./a.out"
		
		if File.exists? "./run_test"
			binary = "./run_test"
			options = [basename] + options
		end
		
		run_success = redirect_output(basename + ".log") do
			system(binary, *options)
		end
	
		if run_success
			$successful_tests << file
			puts green("*** Test successful.")
		else
			$failed_tests << file
			puts red("*** Test failed!")
		end
	end

	puts "\n"
	puts File.open(basename + ".log").read.strip
	
	puts
end

ARGV.each {|x| test_file(x)}

if ARGV.size < 1
	anitas.each do |file|
		test_file(file)
	end
end

sum_tests = $successful_tests.size + $failed_tests.size

puts header("statistics")
unless $successful_tests.none?
	puts "Successful tests: " + $successful_tests.size.to_s + "/" + sum_tests.to_s
	$successful_tests.each {|x| puts "  " + green(x)}
end

unless $failed_tests.none?
	puts "Failed tests: " + $failed_tests.size.to_s + "/" + sum_tests.to_s
	$failed_tests.each {|x| puts "  " + red(x)}
end

if File.exists? "./test_stats" and $successful_tests.any?
	# report_file = "report" + `date \"+%Y%m%d_%H%M%S\"`.chomp + ".txt"
	report_file = "report.txt"
	
	redirect_output(report_file) do
		system("./test_stats", *$successful_tests)
	end
	
	puts File.open(report_file, "r").read
end

exit 1 if $failed_tests.any?