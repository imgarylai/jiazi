require "spec_helper"

describe Jiazi do
  
  it "#custom" do
    expect(Jiazi.custom(1, 2, 1))
      .to eq "max should be greater or equal to min."
  end

  it "#title" do 
    expect(Jiazi.title.length)
      .to eq (Jiazi.custom(1).length)
  end

  it "#paragraph" do 
    expect(Jiazi.paragraph.length)
      .to eq (Jiazi.custom(1, 400, 500).length)
  end

end