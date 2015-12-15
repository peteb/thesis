#!/usr/bin/env ruby
# options:
# --libs      libraries to compile and link against
# --lflags    arguments to the linker
# --pflags    arguments to the parser
# --cflags    arguments to the compiler
# --l         library search dir

ROOT = "#{File.dirname(__FILE__)}" unless defined?(ROOT)
ANITA = ROOT + "/../anita/bin/anita"
LIBTHORN = ROOT + "/libthorn/libthorn.bc"
LLVM_BINS = `#{ROOT}/../llvm-config --bindir`
TC = ROOT + "/tlc"
LD = LLVM_BINS + "llvm-ld"
AS = LLVM_BINS + "llvm-as"
AN_FLAGS = []
TC_FLAGS = ["--emit-ll", "--emit-ast"]
LD_FLAGS = ["-native", LIBTHORN]
AS_FLAGS = ["-f"]

files = []
libs = []
lflags = []
pflags = []
cflags = []

as_lib = false

# parse arguments, set flags and add files
target = files
prefix = ""
has_mname = false
lib_prefix = []

ARGV.each do |arg|
  if (arg[0...2] == "--")
    prefix = ""

    case arg[2..-1]
    when "libs"
      target = libs
    when "lflags"
      target = LD_FLAGS
    when "pflags"
      target = AN_FLAGS
    when "cflags"
      target = TC_FLAGS
    when "L"
      target = lib_prefix
    when "as_lib"
      as_lib = true
    when "mname"
      prefix = "--mname="
      target = TC_FLAGS
      has_mname = true

    else
      if target != files
        target << arg
      else
        #raise "Unknown option: " + arg[2..-1]
      end
    end
  else
    target << prefix + arg
  end
end

if (libs.any?)
  #	TC_FLAGS << "--libs" << libs
  TC_FLAGS << libs.map {|l| "-l" + l}
  LD_FLAGS << libs.map {|l| (lib_prefix[0] or "") + l + ".bc"}
end

cflags << "--as-lib" if as_lib

files.each do |file|
  TC_FLAGS << ["--mname=" + file] unless has_mname

  an = [ANITA] + AN_FLAGS + [file]
  tc = [TC] + ["-"] + TC_FLAGS + cflags
  ld = [LD] + ["-"] + LD_FLAGS
  as = [AS] + AS_FLAGS

  exec_anita = an.join(" ")
  exec_tc = tc.join(" ")
  exec_ld = ld.join(" ")
  exec_as = as.join(" ")

  tmp_file = `mktemp /tmp/tlc.XXXXX`.chomp;

  exec = "#{exec_anita} | #{exec_tc} -o compiled.bc && llvm-link compiled.bc libthorn/libthorn.o -o linked.bc && clang -lgc linked.bc"
  puts exec
  #	exec = "#{exec_anita} || #{exec_tc} || #{exec_as} || #{exec_ld}"
  exc_ret = system(exec)
  system("rm #{tmp_file}")

  exit 1 unless exc_ret
end
