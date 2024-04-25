abc108_a.pl
##############################################
##############################################
##############################################
##############################################
##############################################
##############################################
:- use_module(library(clpfd)).

main :-
        read_num(K),
        num_of_odd(K, O),
        num_of_even(K, E),
        Ans #= O * E,
        write(Ans),
        nl.

num_of_odd(N, O) :-
        N mod 2 #= 0,
        O #= N // 2.
num_of_odd(N, O) :-
        N mod 2 #= 1,
        O #= (N // 2) + 1.
num_of_even(N, E) :-
        E #= N // 2.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
##############################################
:- use_module(library(clpfd)).

main :-
    read_num(X),
    F #= X // 2,
    S #= (X + 1) // 2,
    Ans #= F * S,
    writeln(Ans).

read_str(S) :-
    read_string(current_input, '\n', '\r', _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).
##############################################
