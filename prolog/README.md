# Instructions

[Prolog Website](https://www.swi-prolog.org/)

Using as example the following program:

```prolog
house(blue).
house(yellow).
```

To run prolog, type in the command line:

```prolog
swipl phouses.pl
```

Enter the question you have, for example:

```prolog
house(A).
```

The answer will be:

```prolog
A = blue
```

If you want to continue, type `;` and the answer will be:

```prolog
A = yellow.
```

If you enter:

```prolog
house(green).
```

The answer will be `false`.

If you enter:

```prolog
house(blue).
```

The answer will be `true`.

To debug:

```prolog
trace.
```

To stop debugging:

```prolog
notrace.
```

To exit prolog:

```prolog
halt.
```