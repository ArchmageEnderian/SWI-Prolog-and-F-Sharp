read_str(A):-get0(X),r_str(X,A,[]).
r_str(-1,A,A):-!.
r_str(32,A,A):-!.
r_str(X,A,B):-append(B,[X],B1),get0(X1),r_str(X1,A,B1).

pr_p_s:- read_line_to_codes(user_input,Name), see('D:/GitHub/GitKraken/SWI-Prolog-and-F-Sharp/Text.txt'),
    reading_starter(0,Name), seen. /*������*/

reading_starter(K,Name):-get0(Q),read_pol(Q, Name, K).

read_pol(-1, _,K):-write(K), !.
read_pol(_, Name,K):-read_str(Lang),/*perestanova(Name,Lang),*/ K1 is K+1, get0(X), read_pol(X,Name, K1).
read_pol(_,Name,K):-get0(X), read_pol(X, Name,K).

