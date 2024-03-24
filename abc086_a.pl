//abc086_a.pl
################################
################################
main :-
  readln(A),nth0(0,A,B1),nth0(1,A,B2),X is B1*B2,0 is mod(X,2) -> write('Even'); write('Odd').
################################
get_str(String) :-
 current_input(Input),
 read_string(Input," \n","",_,String).

get_num(Number) :-
 get_str(String),
 number_string(Number,String).

main :-
 get_num(A),get_num(B),P is A*B mod 2,
 (P=0 -> writeln("Even") ; writeln("Odd")).
################################
:- use_module(library(clpfd)).

main :-
        read_num(A),
        read_num(B),
        odd(A),
        odd(B),
        write('Odd'),
        nl.
main :-
        write('Even'),
        nl.

odd(N) :-
        N mod 2 #= 1.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
################################
:- set_prolog_flag(verbose,silent).
:- prompt(_, '').
:- use_module(library(readutil)).
read_line(Line):-read_string(user_input, "\n", " ", _, Str),string_chars(Str,Line).
read_num(N):-read_string(user_input, "\n", " ", _, Str),number_string(N,Str).
read_list(Ys):-read_string(user_input, "\n", " ", _, Str),
				split_string(Str, " ", "", Xs),
				maplist(string_number,Xs,Ys).
string_number(Str,N):-number_string(N,Str).

juge([A,B],"Even"):-(A*B) mod 2=:=0,!.
juge(_,"Odd").

main:-
	process,
	halt.

process:-
	/* your code goes here */
	read_list(D),
	juge(D,Ans),
	write(Ans),nl,
	true.
################################
get_number(Number) :-
    get_string(String),
    number_string(Number, String).

get_number(A, B) :-
    get_number(A),
    get_number(B).

get_number(A, B, C) :-
    get_number(A, B),
    get_number(C).

get_string(String) :-
    current_input(Input),
    read_string(Input, ' \n', '', _, String).

f(A, B) :- A * B mod 2 =:= 1.

main :-
    get_number(A, B),
    f(A, B) -> writeln("Odd") ; writeln("Even"). 


################################
