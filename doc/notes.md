### Real World Haskell

---
## Chapter 1

print type in gchi 

```
gchi> :t <word>
``` 

## Chapter 2

Haskell type system:
    * strong
    * static
    * automatically inferred

### Strong type

1. at compile time is checked if functions are called with valid types (type error -> compile time)
2. No automatic casting types to another (performance -> when casting we copy in ram stuff to other place (e.g. adding padding to bits...))
3. It does not exists that + can be "concatenate list" or "concatenate strings".

### Static types

1. type are valuated at compile time
2. "typeclasses" in Haskell are fundamental to have benefits of dynamic typing


### Type Inference
1. at compile time Haskell deduce types of all expressions of the program. (Concise)


### Primitives Types
`Int` vs `Integer`: 
    Int = 28 bits - always (fixed)
    Integer = signed integer with unbounded size => No overflow is guaranteed

`Double` is better than `Float` for Haskell compiler ( 64 bits) 


### First Collections:
`tuple` fixed size collection, each value diffierent type
`()` is equal to void in C

`list` mutable collection

### Pure Language vs Side Effects
Side effects is when we mix global state with beahavior of a function (IO). Haskell define functions by default as pure functions -> cleaned by side effects.

Haskell type system prevents us to mix pure with impure code


### Variable
Haskell assign a type to an expression. 
So:
    no multi declaration are supported


### Indentation
In Haskell Indentation is important because it continues an existsing definiition

### Lazy Evaluation

```
shortcircuit a b = if a then a else b 
```
in this exaple b can be infinite