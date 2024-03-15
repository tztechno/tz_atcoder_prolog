########################################################
tanson
########################################################
########################################################
########################################################
########################################################
########################################################
########################################################
//abc200_a
:- use_module(library(clpfd)).

main :-
        read_num(N),
        century(N, Ans),
        write(Ans),
        nl.

century(N, C) :-
        N mod 100 #\= 0,
        C #= (N // 100) + 1.
century(N, C) :-
        N mod 100 #= 0,
        C #= N // 100.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

########################################################
//abc199_a
:- use_module(library(clpfd)).

main :-
        read_num(A),
        read_num(B),
        read_num(C),
        A * A + B * B #< C * C,
        write('Yes'),
        nl.
main :-
        write('No'),
        nl.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
########################################################
//abc198_a
:- use_module(library(clpfd)).

main :-
        read_num(N),
        Ans #= N - 1,
        write(Ans),
        nl.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
########################################################
//abc197_a
main :-
        read_str(S),
        string_chars(S, [A, B, C]),
        string_chars(SS, [B, C, A]),
        write(SS),
        nl.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

########################################################
