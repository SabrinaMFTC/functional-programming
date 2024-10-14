# Instructions

[Prolog Website](https://www.swi-prolog.org/)

Using as example the following program:

```pl
house(blue).
house(yellow).
```

To run prolog, type in the command line:

```pl
swipl phouses.pl
```

Enter the question you have, for example:

```pl
house(A).
```

The answer will be:

```pl
A = blue
```

If you want to continue, type `;` and the answer will be:

```pl
A = yellow.
```

If you enter:

```pl
house(green).
```

The answer will be `false`.

If you enter:

```pl
house(blue).
```

The answer will be `true`.

To debug:

```pl
trace.
```

To stop debugging:

```pl
notrace.
```

To exit prolog:

```pl
halt.
```