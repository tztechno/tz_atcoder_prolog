

read_input_line(String) :-
    read_line_to_codes(current_input, Codes),
    string_codes(String, Codes).

parse_numbers(String, Numbers) :-
    split_string(String, " ", "", Numbers_Strings),
    maplist(number_string, Numbers, Numbers_Strings).

main :-
    read_input_line(InputLine),
    parse_numbers(InputLine, [A, B]),
    ( A < B ->
    writeln("Better"); 
    writeln("Worse")
    ).
