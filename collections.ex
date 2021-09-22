# List
[3.14, :pie, "Apple"]
#[3.14, :pie, "Apple"]

list = [3.14, :pie, "Apple"]
#[3.14, :pie, "Apple"]
# Prepending (fast)
["π" | list]
#["π", 3.14, :pie, "Apple"]
# Appending (slow)
list ++ ["Cherry"]
#[3.14, :pie, "Apple", "Cherry"]

# List Concatenation
[1, 2] ++ [3, 4, 1]
#[1, 2, 3, 4, 1]

# List subtraction
["foo", :bar, 42] -- [42, "bar"]
#["foo", :bar]
## duplicate values
[1,2,2,3,2,3] -- [1,2,3,2]
#[2, 3]
## strict comparison
[2] -- [2.0]
#[2]
[2.0] -- [2.0]
#[]

# Head and Tail functions
hd [3.14, :pie, "Apple"]
#3.14
tl [3.14, :pie, "Apple"]
#[:pie, "Apple"]
# destruction-like operation
[head | tail] = [3.14, :pie, "Apple"]
#[3.14, :pie, "Apple"]
head
#3.14
tail
#[:pie, "Apple"]

# Tuples
{3.14, :pie, "Apple"}
#{3.14, :pie, "Apple"}

# Keyword lists
[foo: "bar", hello: "world"]
#[foo: "bar", hello: "world"]
[{:foo, "bar"}, {:hello, "world"}]
#[foo: "bar", hello: "world"]
#The three characteristics of keyword lists highlight their importance:
#Keys are atoms.
#Keys are ordered.
#Keys do not have to be unique.

# Maps
map = %{:foo => "bar", "hello" => :world}
#%{:foo => "bar", "hello" => :world}
map[:foo]
#"bar"
map["hello"]
#:world
## variable allowed as map keys
key = "hello"
#"hello"
%{key => "world"}
#%{"hello" => "world"}
# duplicate keys
%{:foo => "bar", :foo => "hello world"}
#%{foo: "hello world"}
## special sintax for maps only atom keys
%{foo: "bar", hello: "world"}
#%{foo: "bar", hello: "world"}
%{foo: "bar", hello: "world"} == %{:foo => "bar", :hello => "world"}
#true
## accessing atom keys
map = %{foo: "bar", hello: "world"}
#%{foo: "bar", hello: "world"}
map.hello
#"world"
## update maps
map = %{foo: "bar", hello: "world"}
#%{foo: "bar", hello: "world"}
%{map | foo: "baz"}
#%{foo: "baz", hello: "world"}
## create new keys
map = %{hello: "world"}
#%{hello: "world"}
Map.put(map, :foo, "baz")
#%{foo: "baz", hello: "world"}
