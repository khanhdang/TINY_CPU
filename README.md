# TINY_CPU
## 1. Information
I copied a version of TINY CPU from Prof. Koji Nakano. You can find the Japanese version in this page:

[http://www.cs.hiroshima-u.ac.jp/~nakano/wiki/](http://www.cs.hiroshima-u.ac.jp/~nakano/wiki/)

I probably do not change anything from his source code. I may translate some parts from Japanese to English for the ease of understanding.
### 1.2 License
According to Prof. Koji Nakano, all source code licenses are subjected to GPL.

## 2. Installation

### 2.1 Generate Compiler
```
$ bison -d -y tinyc.y
$ flex tinyc.l
$ gcc -o tinyc lex.yy.c y.tab.c
```
