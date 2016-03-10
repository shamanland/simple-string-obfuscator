:: Usage: C:\>obfuscate_string.bat hello
:: This assumes javac & java commands are in your path
@ECHO OFF
set param_string=%1
javac SimpleStringObfuscator.java
java SimpleStringObfuscator %param_string%
@ECHO ON
