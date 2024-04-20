abc023_a.pl
############################
############################
############################
get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

get_number(Number) :-
  get_string(String),
  number_string(Number, String).

main :-
  get_number(A),
  B is A//10,
  C is A-B*10+B,
  writeln(C).
############################
:- use_module(library(clpfd)).

main :-
	read_num(X),
        TensPlace #= X // 10,
        OnesPlace #= X mod 10,
        Ans #= TensPlace + OnesPlace,
        writeln(Ans).
	
read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
############################
:- use_module(library(clpfd)).

main :-
    read_num(A),
    B #= (A // 10) + (A mod 10),
    write(B),
    nl.

read_str(S) :-
    read_string(user_input, '\n', '', _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).
############################
