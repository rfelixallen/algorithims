require 'perlin_noise'

n2d = Perlin::Noise.new 2
0.step(100, 0.01) do |x|
  0.step(100, 0.01) do |y|
    puts n2d[x, y]
    #n = n2d
	if n2d[x, y] < 0.3
		puts '#' * (n2d[x, y] * 60).floor
	elsif n2d[x, y] > 0.3 and n2d[x, y] < 0.6 
		puts '~' * (n2d[x, y] * 60).floor
	else
		puts '@' * (n2d[x, y] * 60).floor
	end
	#puts n
  end
end

	