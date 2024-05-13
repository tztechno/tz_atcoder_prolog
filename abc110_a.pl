abc110_a.pl
###########################################
###########################################
###########################################
###########################################
read_str(S) :-
    read_string(current_input, ' \n', '', _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).

max_of_two(A, B, Max) :-
    Max is max(A, B).

max_of_three(A, B, C, Max) :-
    max_of_two(A, B, Temp),
    max_of_two(Temp, C, Max).

main :-
    read_num(A),
    read_num(B),
    read_num(C),
    max_of_three(A, B, C, Max),
    Ans is (A + B + C) + Max * 9,
    write(Ans),
    nl.
###########################################
[clpfd ライブラリの max/2 に置き換える必要があります。 
 clpfd を使用しているため、計算には算術制約を使用する必要があります。
 #=, #<, #>, #=<, #>= などを使用する]

:- use_module(library(clpfd)).

read_str(S) :-
    read_string(current_input, ' \n', '', _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).

main :-
    read_num(A),
    read_num(B),
    read_num(C),
    max_list([A, B, C], Max),
    Ans #= (A + B + C) + Max * 9,
    format('~d~n', [Ans]).
###########################################
[python]
a,b,c=map(int,input().split())
ans=(a+b+c)+max(a,b,c)*9
print(ans)
###########################################
