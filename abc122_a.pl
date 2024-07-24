abc122_a.pl
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
complement('A', 'T').
complement('T', 'A').
complement('C', 'G').
complement('G', 'C').

translate([], []).
translate([H|T], [CH|CT]) :-
    complement(H, CH),
    translate(T, CT).

main :-
    read_line_to_codes(user_input, InputCodes),
    atom_codes(InputAtom, InputCodes),
    atom_chars(InputAtom, InputList),
    translate(InputList, OutputList),
    atom_chars(OutputAtom, OutputList),
    write(OutputAtom), nl.

:- main.
##########################################
[python]
mapp={'A':'T','C':'G','G':'C','T':'A'}
b=list(input())
ans=''
for bi in b:
    ans+=mapp[bi]
print(ans)
##########################################
