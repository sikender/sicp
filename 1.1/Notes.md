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

## 1.1.5 The Substitution Model for Procedure Application

- The mechanism for applying primitive procedures to arguments is built into the interpreter.

- The application process for compound procedures is: evaluate the body of the procedure with each formal parameter replaced by the corresponding argument. This process is called the _substitution model_ for procedure application.

### Applicative order versus normal order

- The interpreter first evaluates the operator and operands and then applies the resulting procedure to the resulting arguments.

- An alternative evaluation model would not evaluate the operands until their values were needed. Instead the interpreter would first substitute operand expressions for parameters until it obtains an expression involving only primitive operators, and would then perform the evaluation.

- This alternative "fully expand and then reduce" evaluation method is known as _normal-order evaluation_.

- The interpreter actually uses the "evaluate the arguments and then apply" method which is called _applicative-order evaluation_.

- For procedure applications that can be modeled using substitution and that yield legitimate values, normal-order and applicative-order evaluation produce the same value.

## 1.1.6 Conditional Expressions and Predicates

- _Case Analysis_ is a contruct used to take different actions in different cases according to some rules.

- There is a special form in Lisp for notating such a case analysis. It is called `cond` (which stands for conditional).

- The general form of a conditional expression is:

  ```scheme
    (cond ((p1) (e1))
          ((p2) (e2))
          ...
          ((pn) (en))
    )
  ```

  consisting of the symbol `cond` followed by parenthesized pairs of expressions `((p) (e))` called _clauses_.

- The first expression in each pair is a _predicate_ - thats is, an expression whose value is interpreted as either true or false.

- Conditional expressions are evaluated as follows: The predicate (p1) is evaluated first. If its value is false, then (p2) is evaluated. If (p2)'s value is also false, then (p3) is evaluated. This process continues until a predicate is found whose value is true, in which case the interpreter returns the value of the corresponding _consequent expression_ (e) of the clause as the value of the corresponding expression. If none of the (p)'s is found to be true, the value of the `cond` is undefined.

- The word _predicate_ is used for procedures that return true or false, as well as for expressions that evaluate to true or false.

- Primitive predicates >, <, and = take two arguments and test whether the first number is, respectively, greater than, less than, or equal to the second number, returning true or false accordinly.

- Another way to write a conditional expression is:

  ```scheme
    (define (abs x)
      (cond ((< x 0) (- x))
            (else x)))
  ```

  which can be read as "If x is less than zero return -x; otherwise return x".

- `else` is a special symbol that can be used in place of the (p) in the final clause of a `cond`. This causes the `cond` to return as its value the value of the corresponding (e) whenever all previous clauses have been bypassed.

- Another way to write the absolute-value procedure is:
  ```scheme
    (define (abs3 x)
      (if (< x 0)
          (- x)
          x))
  ```
- This uses the special form `if`, a restricted type of conditional that can be used when there are precisely two cases in the case analysis. The general form of an `if` expression is:
  `(if (predicate) (consequent) (alternative))`

- The interpreter starts by evaluating the (predicate) part of the expression. If the (predicate) evaluates to a true value, the interpreter then evaluates the (consequent) and returns its value. Otherwise its evaluates the (alternative) and returns its value.

- Logical compound operations allow us to construct compound predicates. The three most frequently used are:

  - `(and (e1) ... (en))`
    The interpreter evaluates the expressions (e) one at a time, in left-to-right order. If any (e) evaluates to false, the value of the `and` expression is false, and the rest of the (e)'s are not evaluated. If all (e)'s evaluate to true values, the value of the `and` expression is the value of the last one.
  - `(or (e2) ... (en))`
    The interpreter evaluates the expressions (e) one at a time, in left-to-right order. If any (e) evaluates to true value, that value is returned as the value if the `or` expression, and the rest of the (e)'s are not evaluated. If all (e)'s evaluate to false, the value of the `or` expression is false.
  - `(not (e))`
    The value of a `not` expression is true when the expression (e) evaluates to false, and false otherwise.

- `and` and `or` are special forms, not procedures, because the subexpressions are not necessarily all evaluated.

- `not` is an ordinary procedure.


