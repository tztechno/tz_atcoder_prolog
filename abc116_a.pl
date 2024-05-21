abc116_a.pl
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
:- use_module(library(clpfd)).

main :-
        read_num(AB),
        read_num(BC),
        read_num(_CA),
        Ans #= AB * BC // 2,
        write(Ans),
        nl.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
###########################################
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
    get_number(A,B,C),
    Result is A * B / 2,
    writeln(Result).
###########################################
[python]
a,b,c=map(int,input().split())
print(a*b//2)
###########################################
