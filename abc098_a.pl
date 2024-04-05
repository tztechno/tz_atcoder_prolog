//abc098_a.pl
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
:- use_module(library(clpfd)).

main :-
        read_num(A),
        read_num(B),
        Ans #= max(A + B, max(A - B, A * B)),
        write(Ans),
        nl.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

##########################################
get_number(Number) :-
    get_string(String),
    number_string(Number, String).

get_number(A, B) :-
    get_number(A),
    get_number(B).

get_number(A, B, C) :-
    get_number(A),
    get_number(B),
    get_number(C).

get_string(String) :-
    current_input(Input),
    read_string(Input, ' \n', '', _, String).

main :-
    get_number(A, B),
    S = [A+B, A-B, A*B],
    max_list(S, Ans),
    writeln(Ans).
##########################################
