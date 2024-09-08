**Disclaimer:** this tutorial is intended to summarize the contents available on [GHCup](https://www.haskell.org/ghcup/steps/#compiling-programs-with-ghc) and it's for personal study purpose only.

# GHCi: GHC's Interactive Environment

Provides an interactive prompt where Haskell expressions can be written and evaluated (Read-Evaluate-Print-Loop).

First, enter GHCi by typing on terminal:

```bash
ghci
```

To import Haskell source files, type `:load <programName.hs>` or `:l <programName.hs>`. After compiling the code, you can type `main` to run the program:

```bash
ghci> :l <program.hs>
```

```bash
ghci> main
```

If your program expects an input, instead of main, you should type the expected input. For example, for the following program:

```haskell
double n = n * 2
```

You should run it by typing:

```bash
double <number>
```

To exit GHCi, type `:q`.