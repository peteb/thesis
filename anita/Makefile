target: anita

parser:
	java -Xmx2g -classpath lib/antlr-3.5.2-complete-no-st3.jar:lib/json.jar:. org.antlr.Tool -Xconversiontimeout 10000 -verbose src/anita/parser/Anita.g && rm Anita.tokens

build:
	javac -d classes -classpath lib/antlr-3.5.2-complete-no-st3.jar:lib/json.jar:. `find src -name "*.java"`

anita: parser build
