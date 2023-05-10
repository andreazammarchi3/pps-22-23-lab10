% search(Elem, List)
search(X, cons(X, _)).
search(X, cons(_, Xs)) :- search(X, Xs).


% search2(Elem, List)
% looks for two consecutive occurrences of Elem
search2(X, cons(X, cons(X, _ ))).
search2(X, cons(_, Xs)) :- search2(X, Xs).

% search_two(Elem ,List)
% looks for two occurrences of Elem with any element in between!
search_two(X, cons(X, cons(_, cons(X, _)))).
search_two(X, cons(_, Xs)) :- search_two(X, Xs).

% search_anytwo(Elem, List)
% looks for any Elem that occurs two times, anywhere
search_anytwo(X, cons(X, Xs)) :- search(X, Xs).
search_anytwo(X, cons(_, Xs)) :- search_anytwo(X, Xs).

% size ( List , Size )
% Size will contain the number of elements in List , written using notation zero , s ( zero ) , s ( s ( zero ) ) ..
size(nil, zero).
size(cons(X, Xs), s(Y)) :- size(Xs, Y).

% sum_list ( List , Sum )
sum(X, zero , X).
sum(X, s(Y), s(Z)) :- sum(X, Y, Z).
sum_list(nil, zero).
sum_list(cons(X, Xs), S) :- sum_list(Xs, R), sum(X, R, S).

% count ( List , Element , NOccurrences )
% it uses count ( List , Element , NOccurrencesSoFar , NOccurrences )
count(List, E, N) :- count(List, E, zero, N).
count(nil, E, N, N).
count(cons(E, L), E, N, M) :- count(L, E, s(N), M).
count(cons(E, L), E2, N, M) :- E \= E2, count(L, E, N, M).

% max ( List , Max )
% Max is the biggest element in List
% Suppose the list has at least one element
max(cons(X, Xs), Max) :- max(Xs, X, Max).
max(nil, Max, Max).
max(cons(X, Xs), MaxSoFar, Max) :- X > MaxSoFar, max(Xs, X, Max).
max(cons(X, Xs), MaxSoFar, Max) :- X =< MaxSoFar, max(Xs, MaxSoFar, Max).








