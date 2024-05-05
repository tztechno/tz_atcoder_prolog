abc082_a.pro
##########################################
##########################################
##########################################
##########################################
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
