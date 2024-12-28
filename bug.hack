function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
}

This code looks correct but it causes a runtime error when called with certain inputs. The error occurs because of integer overflow. If the input x is large enough, then the intermediate result foo(x) in bar will cause an overflow. The type of x is int, which is a 32-bit signed integer. So this can happen if x is greater than 2147483647.  This is an uncommon error, because it is easy to miss.