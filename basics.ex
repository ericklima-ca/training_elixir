#Summing two values
#2+3

#Comparing two values
#2+3 == 5

IO.puts "length function from String module:"
IO.puts String.length("The quick brown fox jumps over the lazy dog")

# Integers
IO.puts 255

# binary, hexa, octa
IO.puts 0b1101
IO.puts 0xfff1
IO.puts 0o7754

# Floats
IO.puts 2.5
IO.puts 1.5e-5

# Booleans
IO.puts true
IO.puts false
## is_boolean function

# Atoms
IO.puts :atom
## is_atom function

# Strings
IO.puts "Hello World"

# Arithmetic operations
2 + 2
2 - 1
2 * 5
10 / 5
div(10 , 5)
rem(5, 2)

# Boolean operations
-20 || true
false || 42
42 && true
42 && nil
!42
!false
true and 42
false or true
not false

# Comparison
1 > 2
1 != 2
2 == 2
2 <= 3

# Strict comparison
2 == 2.0
#true
2 === 2.0
#false

# number < atom < reference < function < port < pid < tuple < map < list < bitstring

# String Interpolation
name = "Sean"
"Hello #{name}"
#"Hello Sean"

# String Concatenation
name = "Sean"
"Hello " <> name
#"Hello Sean"
