load "dirty.rb"
load "media_player.rb"
loop do
    page_object = Dirty.new("krasnoyarsk")
    dirty_value = page_object.call
    
    media_player_object = MediaPlayer.new(dirty_value)
    media_player_object.call

    sleep 1
end