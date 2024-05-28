abc112_a.pl
#######################################
#######################################
#######################################
#######################################
#######################################
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
    read_string(Input, '\n', '', _, String).

main :-
    get_number(N),
    (N =:= 1 ->
        writeln("Hello World")
    ;
        get_number(A),
        get_number(B),
        Sum is A + B,
        writeln(Sum)
    ),
    nl.
#######################################
[python]
N=int(input())
if N==1:
    print("Hello World")
else:
    a=int(input())
    b=int(input())
    print(a+b)

#######################################
