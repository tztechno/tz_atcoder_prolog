abc115_a.pl
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
main :-
        read_num(D),
        christmas(D, Ans),
        write(Ans),
        nl.

christmas(25, 'Christmas').
christmas(24, 'Christmas Eve').
christmas(23, 'Christmas Eve Eve').
christmas(22, 'Christmas Eve Eve Eve').

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
##########################################
day([25],'Christmas').
day([24],'Christmas Eve').
day([23],'Christmas Eve Eve').
day([22],'Christmas Eve Eve Eve').

main:-
 readln(Input),
 day(Input,Ans),
 writeln(Ans).
##########################################
:- use_module(library(clpfd)).

main :-
    read_num(D),
    calculate(D),
    nl.

calculate(D) :-
    Rep #= 25 - D,
    repeat_eve(Rep, EveList),
    atomic_list_concat(['Christmas'|EveList], Result),
    write(Result),
    nl.

repeat_eve(0, []).
repeat_eve(N, [' Eve'|Rest]) :-
    N #> 0,
    N1 #= N - 1,
    repeat_eve(N1, Rest).

read_str(S) :-
    read_string(current_input, ' \n', '', _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).


##########################################
[python]
D=int(input())
print("Christmas"+" Eve"*(25-D))
##########################################
