class Car
  def run(distance)
    puts "車で#{distance}キロ走ります"
  end
end

class Track < Car
  def run(distance)
    super
    puts "大きな荷物をのせて走ります"
  end
end

track = Track.new
track.run(5)
