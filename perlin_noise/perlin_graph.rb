require 'perlin_noise'
require 'csv'

n3d = Perlin::Noise.new 3
array = []
1.step(100, 1.0) do |x| # x == whole integer, which will always give .5
  1.step(100, 1.0) do |y|
    
    i = x / 100
    j = y / 100

    n = n3d[i,j,0.8]
    array << n
  end
end

CSV.open("perlin.csv", "w") do |csv|
  array.each do |entry|
    csv << [entry]
  end
end