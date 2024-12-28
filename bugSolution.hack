function foo(x: int64): int64 {
  return x + 1;
}

function bar(x: int64): int64 {
  return foo(x) * 2;
}

function baz(x: int64): int64 {
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
  echo baz(2147483647);
  echo baz(9223372036854775807);
}

This version uses int64, a 64-bit integer type, preventing overflow for a much wider range of inputs.