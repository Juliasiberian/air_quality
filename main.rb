load "dirty.rb"
loop do
    a = Dirty.new("krasnoyarsk").call
    puts a
    sleep 1
end