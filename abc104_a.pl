abc104_a.pl
#######################################
#######################################
#######################################
#######################################
#######################################
get_number(Number) :-
    get_string(String),
    number_string(Number, String).

get_string(String) :-
    current_input(Input),
    read_string(Input, ' \n', '', _, String).

f("ABC", X) :- X < 1200, !.
f("ARC", X) :- X < 2800, !.
f("AGC", X).

main :-
	get_number(N),
    f(X, N),
    writeln(X).
#######################################
:- use_module(library(clpfd)).

main :-
        read_num(R),
        next_contest(R, Ans),
        write(Ans),
        nl.

next_contest(R, 'ABC') :-
        R #< 1200,
        !.
next_contest(R, 'ARC') :-
        R #< 2800,
        !.
next_contest(R, 'AGC').

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

#######################################

get_number(Number) :-
    get_string(String),
    number_string(Number, String).
    
get_string(String) :-
    current_input(Input),
    read_string(Input, ' \n', '', _, String).
    
main :-
    get_number(R),
    (   R < 1200 ->
        writeln("ABC")
    ;   R < 2800 ->
        writeln("ARC")
    ;   writeln("AGC")
    ).

#######################################
