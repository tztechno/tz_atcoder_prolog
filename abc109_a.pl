abc109_a.pl
#############################################
#############################################
#############################################
#############################################
#############################################
[AC]

:- use_module(library(clpfd)).

main :-
        read_num(A),
        read_num(B),
        satisfy(A, B),
        write('Yes'),
        nl.
main :-
        write('No'),
        nl.

satisfy(A, B) :-
        C in 1..3,
        A * B * C mod 2 #= 1,
        label([C]).

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

#############################################

:- use_module(library(clpfd)).

main :-
        read_num(A),
        read_num(B),
        C is (A * B) mod 2,
        C =:= 1,
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

#############################################
[ERROR: -g main: false]

main :-
    read_num(A),
    read_num(B),
    C is (A + B) mod 2,
    (C =:= 1 ->
        write('Yes');
        write('No')
    ),
    nl.

read_str(S) :-
    read_string(current_input, '\n', '', _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).
    
#############################################
[python]
a,b=map(int,input().split())
if (a*b)%2==1:
    print('Yes')
else:
    print('No')
#############################################
