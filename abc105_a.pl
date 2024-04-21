abc105_a.pl
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

/* memo
    code(int)
    string_code(1, S, C), (C: code)
    char_code(X, Y) (X: char, Y: code)
    string_chars(S, S2) (S: string, S2: [char])
    to_lower(C, C2) (C: char? C2: code?)

    f(0, [], []).
    f(Z, [X|Xs], [Y|Ys]) :- X = Y, f(Z1, Xs, Ys), Z is Z1 + 1.
    f(Z, [_|Xs], [_|Ys]) :- f(Z, Xs, Ys).

    match: =, \=

    numeric: <,=<, >, >= (eval)
    lexicographically: @<. @=<, @>, @>=
    value?: =:=, =\= (eval)
    identical: ==, \==
*/

main :-
	get_number(N),
    get_number(M),
    (N mod M =:= 0) -> writeln("0") ; writeln("1").
#######################################
:- use_module(library(clpfd)).

main :-
        read_num(N),
        read_num(K),
        N mod K #= 0,
        write(0),
        nl.
main :-
        write(1),
        nl.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

#######################################
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

f(A, B) :- A mod B =:= 0.

main :-
    get_number(A, B),
    f(A, B) -> writeln(0) ; writeln(1). 
#######################################
