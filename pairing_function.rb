#!/usr/bin/ruby
def cantor_pairing(n, m)
    (n + m) * (n + m + 1) / 2 + m
end

n = ARGV[0].to_i
m = ARGV[1].to_i

x = cantor_pairing(n, m)
puts x

# Execute in Terminal with:
# ruby pairing_function.rb 1 1