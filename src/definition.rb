$game=Game.new {
  blank(Width,Height) {
    self.background_color='white'
    self.density="300"
  }
  element(:frame) {
    geometry(0,
             0,
             Width,
             Height)
    bubble colour
  }
  element(:name) {
    geometry(ContentL,
             ContentT,
             ContentR,
             ContentT + TitleHeight)
    bubble
    text(name,:alignment=>:center) {|drawing| drawing.pointsize=75}
  }
  element(:name_with_units) {
    geometry(ContentL,
             ContentT,
             ContentR,
             ContentT + TitleHeight)
    bubble
    text("#{name}: #{units}",:alignment=>:center) {|drawing| drawing.pointsize=75}
  }
  element(:description) {
    geometry(ContentL,
             ContentT + TitleHeight + SectionGap + ArtSize + SectionGap,
             ContentR,
             ContentT + TitleHeight + SectionGap + ArtSize + SectionGap + DescriptionHeight)
    bubble
    text(description||' ',:alignment=>:center) {|drawing| drawing.pointsize=25}
  }
  element(:popularity) {
    geometry(ContentL,
             ContentT + TitleHeight + SectionGap + ArtSize + SectionGap + DescriptionHeight + SectionGap,
             ContentR,
             ContentB)
    bubble
    text("Popularity: #{popularity.to_s}",:alignment=>:center) {|drawing| drawing.pointsize=50}
  }
  element(:art_front) {
    geometry(ContentL,
             ContentT + TitleHeight + SectionGap,
             ContentR,
             ContentT + TitleHeight + SectionGap + ArtSize)
    image ImageList.new(resource("images/#{name.downcase.gsub(' ','_')}.png")).resize(ContentWidth,ContentWidth),:alignment=>:center
  }
  element(:art_back) {
    geometry(OriginY + OuterFrameWidth,
             ContentL,
             ContentR,
             Height - (Bleed + OuterFrameWidth))
    if start == true
      image ImageList.new(resource("images/start_back.png")).resize(ContentWidth,ContentHeight),:alignment=>:center
    else
      image ImageList.new(resource("images/normal_back.png")).resize(ContentWidth,ContentHeight),:alignment=>:center
    end
  }
  card_type(:supply) {
    attr_property :name,:units,:popularity,:land,:start,:description,:cost,:land,:coast
    def colour
      "forest green"
    end
    front :frame,:name_with_units,:art_front,:description, :popularity
    back :art_back
  }
  card_type(:demand) {
    attr_property :name,:units,:popularity,:start,:description
    def colour
      "red"
    end
    front :frame,:name_with_units,:art_front,:description, :popularity
    back :art_back
  }
  card_type(:fossil) {
    attr_property :name,:units,:start
    def colour
      "black"
    end
    front :frame,:name_with_units,:art_front
    back :art_back
  }
  card_type(:blackout) {
    attr_property :name, :popularity, :start
    def colour
      "black"
    end
    front :frame,:name,:popularity
    back :art_back
  }
}
