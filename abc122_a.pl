abc122_a.pl
##########################################
##########################################
get_string(String) :-
    current_input(Input),
    read_string(Input, ' \n', '', _, String).
  
main :-
    get_string(S),
    ( 
        S = "A" -> Ans = "T";
        S = "T" -> Ans = "A";
        S = "C" -> Ans = "G";
        S = "G" -> Ans = "C";        
        Ans = "Invalid input" 
    ),
    writeln(Ans).  
##########################################
[python]
b=str(input())
if b=='A':
    ans='T'
elif b=='T':
    ans='A'
elif b=='C':
    ans='G'
elif b=='G':
    ans='C'
print(ans)
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
