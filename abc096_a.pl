abc096_a.pl
#########################################
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
#########################################
#########################################
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

f(X, A, B) :- A =< B , X is A, !.
f(X, A, B) :- X is A - 1.

main :-
    get_number(A),
    get_number(B),
    f(X, A, B),
    writeln(X).

#########################################
