//abc094_a.pl
####################################
####################################
####################################
####################################
####################################
####################################
####################################
####################################
:- use_module(library(clpfd)).

main :-
        read_num(A),
        read_num(B),
        read_num(X),
        A #=< X,
        X #=< A + B,
        write('YES'),
        nl.
main :-
        write('NO'),
        nl.


read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

####################################
:- use_module(library(clpfd)).

read_input_line(String) :-
    read_line_to_codes(current_input, Codes),
    string_codes(String, Codes).

parse_numbers(String, Numbers) :-
    split_string(String, " ", "", Numbers_Strings),
    maplist(number_string, Numbers, Numbers_Strings).

between_inclusive(X, A, B) :-
    A =< X, X =< A + B.

main :-
    read_input_line(InputLine),
    parse_numbers(InputLine, [A, B, X]),
    (
        between_inclusive(X, A, B) ->
            write('YES'), nl
        ;
            write('NO'), nl
    ).
####################################
