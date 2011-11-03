$game=Game.new {
  blank(CardWidth,CardHeight){
    self.background_color='white'
    self.density="300"
  }
  element(:frame) {
    geometry(SafeXOffset,
             SafeYOffset,
             CardWidth-SafeXOffset,
             CardHeight-SafeYOffset)
    colours = {
      :supply => "forest green",
      :demand => "red",
      :fossil => "black"
    }
    bubble colours[:supply]
  }
  element(:name) {
    geometry(ContentsLeft,
             ContentsTop,ContentsRight,
             SafeYOffset+ContentsYOffset+TitleHeight)
    bubble
    text(name,:alignment=>:center) {|drawing| drawing.pointsize=45}
  }
  element(:art_front) {
    geometry(SafeXOffset+FrameWidth,
             SafeYOffset+ArtTop,
             (SafeXOffset+ContentsWidth)-FrameWidth,
             SafeYOffset+ArtHeight+ContentsWidth)
    image ImageList.new(resource("images/#{name.downcase.gsub(' ','_')}.png")).resize(ContentsWidth-20,ContentsWidth-20),:alignment=>:center
  }
  element(:art_back) {
    geometry(SafeXOffset,
             SafeYOffset,
             CardWidth-SafeXOffset,
             CardHeight-SafeYOffset)
    image ImageList.new(resource("images/back.png")).resize(ContentsWidth,ContentsHeight),:alignment=>:center
  }
  card_type(:supply) {
    attr_property :name,:units,:popularity,:land,:start,:description,:cost,:land,:coast
    front :frame,:art_front,:name
    back :art_back
  }
  card_type(:demand) {
    attr_property :name,:units,:popularity,:start,:description
    front :frame,:art_front,:name
    back :art_back
  }
  card_type(:fossil) {
    attr_property :name,:units,:start
    front :frame,:art_front,:name
    back :art_back
  }
}
