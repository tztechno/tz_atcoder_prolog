//abc093_a.pl
####################################
####################################
####################################
####################################
####################################
####################################
####################################
main :-
   read_str(S),
   check_string(S).

check_string(S) :-
   (   sub_string(S, _, _, _, 'a'),
       sub_string(S, _, _, _, 'b'),
       sub_string(S, _, _, _, 'c')
   ->  write('Yes'), nl
   ;   write('No'), nl
   ).

read_str(S) :-
   read_string(current_input, ' \n', '', _, S).
####################################
main :-
        read_str(S),
        string_chars(S, Cs),
        msort(Cs, ['a', 'b', 'c']),
        write('Yes'),
        nl.
main :-
        write('No'),
        nl.


read_str(S) :-
        read_string(current_input, ' \n', '', _, S).

####################################
get_number(Number) :-
    get_string(String),
    number_string(Number, String).

get_string(String) :-
    current_input(Input),
    read_string(Input, ' \n', '', _, String).

f("abc").
f("acb").
f("bac").
f("bca").
f("cab").
f("cba").

main :-
    get_string(S),
    f(S) -> writeln("Yes") ; writeln("No").

####################################
