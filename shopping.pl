start :-
    menu([coffee, milk, chocolate, apple, juice]).

menu(Basket) :-
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    choice(Choice, Basket).

choice(d, Basket) :-
    !,
    display_items(Basket),
    menu(Basket).
choice(a, Basket) :-
    !,
    write('enter the item you want to add it'), nl,
    read(Item),
    append(Basket, [Item], NewBasket),
    write('The item has been added'), nl,
    menu(NewBasket).
choice(e, _) :-
    !,
    write('Goodbye!'), nl.
choice(_, Basket) :-
    write('Invalid choice, try again.'), nl,
    menu(Basket).

display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).
