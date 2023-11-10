class MediaPlayer
  def initialize(digit) # это конструктор класса MediaPlayer
    @digit = digit # @digit это переменная объекта класса MediaPlayer 
  end

  def call
    content_checker
  end

  private #всегда прописывать private, когда пишу реализацию некоторого класса

  def content_checker
    if (digit >= 78)
      puts "./videos/rain.mp4"
      "ffmpeg /home/vboxuser/projects/ruby_projects/air_quality/videos/rain.mp4"
    elsif (digit < 78)
      puts "./videos/sunny_day.mp4"
      "ffmpeg /home/vboxuser/projects/ruby_projects/air_quality/videos/sunny_day.mp4"
    end
  
  end
end
