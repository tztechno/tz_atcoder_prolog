abc097_a.pl
#########################################
#########################################
#########################################
#########################################
#########################################
get_number(Number) :-
    get_string(String),
    number_string(Number, String).

get_string(String) :-
    current_input(Input),
    read_string(Input, ' \n', '', _, String).

f(A, B, C, D) :- abs(C - A) =< D.
f(A, B, C, D) :- abs(C - B) =< D , abs(B - A) =< D.

main :-
	get_number(A),
    get_number(B),
    get_number(C),
    get_number(D),
	f(A, B, C, D) -> writeln("Yes") ; writeln("No").

#########################################
:- use_module(library(clpfd)).

main :-
        read_num(A),
        read_num(B),
        read_num(C),
        read_num(D),
        can_talk(A, B, C, D),
        write('Yes'),
        nl.
main :-
        write('No'),
        nl.

can_talk(A, _, C, D) :-
        abs(C - A) #=< D.
can_talk(A, B, C, D) :-
        abs(B - A) #=< D,
        abs(C - B) #=< D.
        

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

#########################################

#########################################
