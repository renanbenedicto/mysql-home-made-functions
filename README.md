# MySQL home made Functions

Here you'll find some MySQL functions that saves our time.


### The Line Wrapper Function:
This function wraps the text on the N character passed on the first parameter using "\n" notation.
Expects 2 parameters, the amount of chars by line and the text you want to treat.

```mysql
SELECT fn_line_wrapper( 10, 'MySQL was created by a Swedish company, MySQL AB, founded by Swedes David Axmark, Allan Larsson and Finland Swede Michael "Monty" Widenius. Original development of MySQL by Widenius and Axmark began in 1994. ... They created a new SQL interface, while keeping the same API as mSQL.');
```
Results on:

```
MySQL was created by a Swedish company, MySQL AB,
 founded by Swedes David Axmark, Allan Larsson an
 d Finland Swede Michael "Monty" Widenius. Origin
 al development of MySQL by Widenius and Axmark b
 egan in 1994. ... They created a new SQL interfa
 ce, while keeping the same API as mSQL.
```


### The Accent Remover
This function is good for remove accent on texts that needs to be more clean.
It expects the desired text to treat as parameter.


```mysql
SELECT fn_remove_accents('O coração dói mais que o fígado.');
```
Results on: 

```
O coracao doi mais que o figado.
```

