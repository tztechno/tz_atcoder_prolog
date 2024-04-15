abc070_b.pl
##############################
##############################
##############################
##############################
##############################
##############################
##############################
:- use_module(library(clpfd)).

main :-
	read_num(A),
	read_num(B),
        read_num(C),
        read_num(D),
        Lower #= max(A, C),
        Upper #= min(B, D),
        Time #= Upper - Lower,
        Time #> 0,
	write(Time),
	nl,
	halt.
 
main :- write(0),
	nl,
	halt.
	
read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

##############################
[大文字を使う]
:- use_module(library(clpfd)).
    
read_str(S) :-
  read_string(current_input, ' \n', '', _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).    
    
main :-
    read_num(A),
    read_num(B),
    read_num(C),
    read_num(D),
    Max is max(min(B,D)-max(A,C),0),
    write(Max),
    nl.
    
##############################
