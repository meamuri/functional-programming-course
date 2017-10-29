Functional Programming (lisp)
=====

* [task1 ex 8](lab1_isPrime.lisp): 
> Проверить, является ли указанное число простым

* [task2 ex 5](lab2_treeDepth.lisp):
> Определить высоту дерева

recursion logic programming (prolog)
====

* [task 3 ex 5](lab3_prolog.pl):
> симметричен ли список

launch:
```bash
swipl -s lab3_prolog.pl
```

work:
```prolog
is_sym([a, b, a]).

is_sym([a, b, c]).

is_sym([a, b, b, a]).

is_sym([a, b, c, a]).

is_rev(...). /* same lists */
```