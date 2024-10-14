# Prolog Básico

- **Prolog** é baseado na lógica de predicados de primeira ordem, **cláusulas de Horn**.

- **Aridade:** número de elementos dentro do parênteses.

|   Exemplo   |   O que é   | Significado |
|:-----------:|:-----------:|:-----------:|
|a.           |fato         |     ---     |
|b.           |fato         |     ---     |
|c :- a, b.   |regra        |*c* é verdadeiro **se** *a* **e** *b* forem verdadeiros (*a* e *b* implicam *c*)| 
|d :- e, f.   |regra        |*d* é verdadeiro **se** *e* **e** *f* forem verdadeiros (*e* e *f* implicam *d*)|
|d :- c.      |regra        |*d* é verdadeiro  **se** *c* for verdadeiro|

Portanto, *d* é verdadeiro.

### Fato
Um fato é uma **verdade absoluta** e independe de qualquer coisa para ser verdadeiro.

### Regra
Uma regra **depende de algo** para ser verdadeira.

### Predicado

Retorna **verdadeiro** ou **falso**.

Exemplos:

- casa(azul).
- casa(amarela).

Predicados de aridade 1.
