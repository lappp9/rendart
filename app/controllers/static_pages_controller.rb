class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def exterior
    @exterior = [
      "station4.jpg",
      "cozzens3.jpg",
      "residential5.jpg",
      "residential3.jpg",
      "residential.jpg",
      "ka.jpg",
      "ka2.jpg",
      "station11.jpg",
      "station2.jpg",
      "station3.jpg",
      "station12.jpg",
      "wall.jpg"
    ]

  end

  def office
    @office = [
      "cequel7.jpg",
      "cequel8.jpg",
      "cequel.jpg",
      "cequel2.jpg",
      "cequel3.jpg",
      "cequel4.jpg",
      "cequel5.jpg",
      "cequel6.jpg",
      "ameren.jpg",
      "ameren2.jpg"
    ]
  end

  def public_service
    @public_service = [
      "station5.jpg",
      "station2.jpg",
      "station4.jpg",
      "station11.jpg",
      "station3.jpg",
      "station12.jpg",
      "station8.jpg",
      "station9.jpg"
    ]

  end

  def residential
    @residential = [
      "cozzens3.jpg",
      "cozzens.jpg",
      "cozzens2.jpg",
      "cozzens4.jpg",
      "residential.jpg",
      "wall.jpg",
      "station8.jpg",
      "station9.jpg",
      "pure.jpg",
      "assisted2.jpg",
      "assisted.jpg"
    ]

  end

  def physical_model
    @physical_model = [
      "physical2.jpg"
    ]
  end

  def sketch
    @sketch = [
      "sketch4.jpg",
      "sketch.jpg",
      "pure2.jpg",
      "columbia.jpg",
      "station6.jpg",
      "sketch3.jpg"
    ]
  end
end
