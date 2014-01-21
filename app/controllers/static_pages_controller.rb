class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def exterior
    @row1 = [
      "station4",
      "cozzens3",
      "residential5",
      "residential3",
      "residential",
      "ka"
    ]
    @row2 = [
      "ka2",
      "station11",
      "station2",
      "station3",
      "station12",
      "wall"
    ]

  end

  def office
    @row1 = [
      "cequel7",
      "cequel8",
      "cequel",
      "cequel2",
      "cequel3",
      "cequel4"
    ]
    @row2 = [
      "cequel5",
      "cequel6",
      "ameren",
      "ameren2"
    ]
  end

  def public_service
    @row1 = [
      "station5",
      "station2",
      "station4",
      "station11",
      "station3",
      "station12"
    ]
    @row2 = [
      "station8",
      "station9"
    ]

  end

  def residential
    @row1 = [
      "cozzens3",
      "cozzens",
      "cozzens2",
      "cozzens4",
      "residential",
      "wall"
    ]
    @row2 = [
      "station8",
      "station9",
      "pure",
      "assisted2",
      "assisted"
    ]

  end

  def physical_model
    @row1 = [
      "physical2"
    ]
  end

  def sketch
    @row1 = [
      "sketch4",
      "sketch",
      "pure2",
      "columbia",
      "station6",
      "sketch3"
    ]
  end
end
