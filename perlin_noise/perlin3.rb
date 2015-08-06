require 'perlin_noise'

n2d = Perlin::Noise.new 2
0.step(100, 0.01) do |x|
  0.step(100, 0.01) do |y|
    puts n2d[x, y]
  end
end
=begin
n3d = Perlin::Noise.new 3
n3d[rand, rand, rand]

n5d = Perlin::Noise.new 5
n5d[rand, rand, rand, rand, rand]
=end