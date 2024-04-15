abc103_a.pl
######################################
######################################
######################################
######################################
######################################
######################################
######################################
######################################
######################################
:- use_module(library(clpfd)).

main :-
        read_num(A1),
        read_num(A2),
        read_num(A3),
        max_member(Max, [A1, A2, A3]),
        min_member(Min, [A1, A2, A3]),
        Ans #= Max - Min,
        write(Ans),
        nl.


read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
######################################
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
    Max0 is max(A,B),
    Min0 is min(A,B),
    Max is max(Max0,C),
    Min is min(Min0,C),
    Ans is Max - Min,
    write(Ans),
    nl.
######################################
