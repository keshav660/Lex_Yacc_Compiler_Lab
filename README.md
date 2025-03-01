# Lex & Yacc Compiler Lab (PCS 601)

This repository contains the Lex and Yacc programs designed for the PCS 601 Compiler Lab. The programs demonstrate various lexical analysis and parsing techniques used in compiler design. 

## 📜 Contents:
- **Lex Programs**: Tokenizing identifiers, keywords, numbers, and special patterns.
- **Yacc Programs**: Syntax parsing and grammar analysis.
- **Mini Compiler Project**: Combining Lex and Yacc for simple language parsing.

## 🔧 Prerequisites:
- Install `lex` and `yacc` (or `flex` and `bison`) on your system.
  - You have Linux Operation System (kali , ubuntu etc.........) .
  
## 🚀 Running the Programs:
1. Compile Lex files:
   
lex filename.l  
cc lex.yy.c -o output  
./a.out 


2. Compile Lex & Yacc together:

yacc -d filename.y  
lex filename.l  
cc lex.yy.c y.tab.c -o parser  
./parser  


📂 *Programs List:*

identifier_recognizer.l - Recognizes valid C identifiers.
keyword_counter.l - Counts keywords in a given text.
arithmetic_parser.y - Parses and evaluates arithmetic expressions.
comment_remover.l - Removes comments from C code.
digit_checker.l - Identifies digits in an input stream.
email_validator.l - Validates email addresses using regex.
floating_point_checker.l - Recognizes valid floating-point numbers.
palindrome_checker.l - Checks if a given string is a palindrome.
operator_identifier.l - Identifies and categorizes operators in code.
constant_extractor.l - Extracts constants from a given program.
whitespace_remover.l - Removes unnecessary whitespace from input.
balanced_parentheses.y - Validates balanced parentheses in expressions.
string_tokenizer.l - Tokenizes strings and extracts words.
case_converter.l - Converts uppercase letters to lowercase and vice versa.
character_counter.l - Counts occurrences of characters in text.
hexadecimal_checker.l - Identifies valid hexadecimal numbers.
switch_case_checker.y - Parses switch-case structures in C programs.
date_validator.l - Validates date formats using regex.
function_parser.y - Parses function definitions in C programs.
variable_scope_checker.l - Identifies variable declarations and their scopes.

🎯 *Future Enhancements:*
Implement symbol tables.
Add more complex grammar parsing examples.
Extend to intermediate code generation.
Enhance lexical analysis with DFA-based recognizers.




***💻 Developed by Keshav Bhatt 🚀***


