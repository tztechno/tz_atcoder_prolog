abc102_a.pl
######################################
######################################
######################################
######################################
######################################
######################################
######################################
######################################
######################################
:- use_module(library(clpfd)).

main :-
        read_num(N),
        find_ans(N, Ans),
        write(Ans),
        nl.

find_ans(N, N) :-
        N mod 2 #= 0.
find_ans(N, Ans) :-
        N mod 2 #= 1,
        Ans #= N * 2.


read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

######################################
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

f(N) :- N mod 2 =:= 0.

main :-
    get_number(N),
    (f(N) -> writeln(N) ; Result is N*2, writeln(Result)).
######################################
