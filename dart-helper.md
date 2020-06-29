# Dart Helper Doc

## Null Aware Operator
?. | ?? | ??=

Code Example:
```
class Num() {
    int num = 10;
}

main() {
    // replace with var < n = Num(); > to see difference
    var n;
    int number;

    number = n?.num ?? 0;

    print(number);
}
```

It's the shorthand version of:
```
if (n != null) {
    number = n;
}
else {
    number = 0;
}
```

`??=` is used like:
```
void main() {
    int number;
    print(number ??= 10);
}
```

Which is the shorthand version of:
```
if (number == null) {
    number = 10;
}
```

---
## Type Test
```
var x = 10;
if (x is int) {...}
```

---
## ForEach Loop
```
var numbers = [1, 2 ,3];

numbers.forEach( (n) => print(n) );
```
Output:
```
1
2
3
```

---
