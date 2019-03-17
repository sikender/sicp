# 1.1 The Elements of Programming

- Every powerful programming language has three mechanisms for combining simple ideas to form more complex ideas:

  - **primitive expressions**: which represent the simplest entities the language is concerned with,
  - **means of combination**: by which compound elements are built from simpler ones.
  - **means of abstraction**: by which compound elements can be named and manipulated as units.

- Data is what we want to manipulate, and procedures are descriptions of the rules for manipulating the data.

- Any powerful language should be able to describe primitive data primitive procedures and should have methods for combining and abstracting procedures and data.

## 1.1.1 Expressions

- When you type an expression, the interpreter responds by displaying the result of its evaluating that expression.

- Expressions representing numbers may be combined with an expression representing a primitive procedure (such as + or \*) to form a compound expression that represents the application of the procedure to those numbers.

- Expressions formed by delimiting a list of expressions within parenthesis in order to denote procedure application are called combinations.

- The left most element in the list is called the _operator_, and the other elements are called _operands_.

- The value of the combination is obtained by applying the procedure specified by the operator to the arguments that are the values of the operand.

- The convention of placing the operator to the left of the operands is known as _prefix notation_.

- The interpreter always operates in the same basic cycle called _read-eval-print loop_: It reads an expressions from the terminal, evaluates the expression, and prints the result.

## 1.1.2 Naming and the Environment

- A critical aspect of a programming language is the means it provides for using names to refer to computational objects.

- The name identifies a _variable_ whose _value_ is the object.

- In Scheme, things are named using `define`.

- `(define size 2)` causes the interpreter to associate the value 2 with the name size. We can then refer the value 2 by name `size`.

- The possibility of associating values with symbols and later retrieving them means that the interpreter must maintain some sort of memory that keeps track if the name-object pairs. This memory is called the _environment_.

## 1.1.3 Evaluating Combinations

- Recursion is a very powerful technique for dealing with hierarchical, treelike objects.

- The environment provides a context in which evaluation takes place and plays an important role in our understanding of program execution.

## 1.1.4 Compound Procedures

- _Procedure Definitions_ are a much more powerful abstraction technique by which a compound operation can be given a name and then referred to as a unit.

- The general form of a procedure definition is:
  `(define ((name) (formal parameters)) (body))`

- The `(name)` is a symbol to be associated with the procedure definition in the environment.

- The `(formal parameters)` are the names used within the body of the procedure to refer to the corresponding arguments of the procedure.

- The `(body)` is an expression that will yield the value of the procedure application when the formal parameters are replaces by actual arguments to which the procedure is applied.

- Procedures can be used as building blocks in defining other procedures.
