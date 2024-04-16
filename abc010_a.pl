###########################################################
get_str(String) :-
 current_input(Input),
 read_string(Input," \n","",_,String).

main :-
 get_str(H),write(H),writeln("pp").
########################################################### 
main :-
	read_str(S),
	write(S),
  write('pp'),
  nl.
	
read_str(S) :-
  read_string(current_input, ' \n', '', _, S).
###########################################################
get_str(String) :-
    current_input(Input),
    read_string(Input, " \n", "", _, String).

get_num(Number) :-
    get_str(String),
    number_string(Number, String).

main :-
    get_str(S),
    string_concat(S, "pp", Result),  % Concatenate S with "pp"
    writeln(Result).
###########################################################
