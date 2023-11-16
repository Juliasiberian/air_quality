class MediaPlayer
  def initialize(digit_param)
    @digit = digit_param.to_i
  end

  def call
    content_checker
  end

  private

  def content_checker
    if (@digit >= 78)
      puts "./videos/rain.mp4"
      system "ffplay /home/vboxuser/projects/ruby_projects/air_quality/videos/rain.mp4"
    elsif (@digit < 78)
      puts "./videos/sunny_day.mp4"
      system "ffplay /home/vboxuser/projects/ruby_projects/air_quality/videos/sunny_day.mp4"
    end
  
  end
end
