abc082_a.pro
##########################################
##########################################
##########################################
##########################################
main :-
    read_num(A),
    read_num(B),
    C is ceiling((A + B) / 2),
    write(C),
    nl.

read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

##########################################
get_str(String) :-
 current_input(Input),
 read_string(Input," \n","",_,String).

get_num(Number) :-
 get_str(String),
 number_string(Number,String).

main :-
 get_num(A),get_num(B),
 P is (A+B+1)//2,
 writeln(P).
##########################################
[python]
import math
a,b=map(int,input().split())
print(math.ceil((a+b)/2))
##########################################
