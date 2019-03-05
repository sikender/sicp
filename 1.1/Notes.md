# 1.1 The Elements of Programming

* Every powerful programming language has three mechanisms for combining simple ideas to form more complex ideas:

  * **primitive expressions**: which represent the simplest entities the language is concerned with,
  * **means of combination**: by which compound elements are built from simpler ones.
  * **means of abstraction**: by which compound elements can be named and manipulated as units.

* Data is what we want to manipulate, and procedures are descriptions of the rules for manipulating the data.

* Any powerful language should be able to describe primitive data primitive procedures and should have methods for combining and abstracting procedures and data.

## 1.1.1 Expressions

* When you type an expression, the interpreter responds by displaying the result of its evaluating that expression.

* Expressions representing numbers may be combined with an expression representing a primitive procedure (such as + or *) to form a compound expression that represents the application of the procedure to those numbers.

* Expressions formed by delimiting a list of expressions within parenthesis in order to denote procedure application are called combinations.

* The left most element in the list is called the *operator*, and the other elements are called *operands*.

* The value of the combination is obtained by applying the procedure specified by the operator to the arguments that are the values of the operand.

* The convention of placing the operator to the left of the operands is known as *prefix notation*.

* The interpreter always operates in the same basic cycle called *read-eval-print loop*: It reads an expressions from the terminal, evaluates the expression, and prints the result.