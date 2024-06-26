


##########################################################
##########################################################
main :-
	read_num(A),
        read_num(B),
	write(B), write(' '), write(A),
        nl.
	
read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
##########################################################
:- use_module(library(clpfd)).

main :-
        read_num(A),
        read_num(B),
        write(B),
        write(" "),
        write(A),
        nl.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).


##########################################################
