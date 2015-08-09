list_concat = fn (a, b) -> a ++ b end
sum = fn (a, b, c) -> a + b + c end
pair_tuple_to_list = fn ({ a, b }) -> [a, b] end

fizzbuzz_return = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fizzbuzz_call = fn (n) -> fizzbuzz_return.(rem(n, 3), rem(n, 5), n) end

prefix = fn (first_str) ->
  fn (second_str) -> "#{first_str} #{second_str}" end
end

add_two = fn (l) -> Enum.map l, &(&1 + 2) end
print_each = fn (l) -> Enum.map l, &IO.inspect/1 end
