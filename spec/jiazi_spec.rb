require "spec_helper"

describe Jiazi do
  
  it "#custom" do
    expect(Jiazi.custom(1, 2, 1)).to eq "max should be greater or equal to min."
    if Jiazi.live?
      expect(Jiazi.custom(1, 2, 3)).to have_key("sentences")
    else
      expect(Jiazi.custom(1, 2, 3)).to eq "Please use offline data."
    end
  end

  it "#title" do 
    expect(Jiazi.get_title.length).to be_between(10, 20).inclusive
  end

  it "#paragraph" do 
    expect(Jiazi.get_paragraph.length).to be_between(300, 1000).inclusive
  end

  it "#from_file" do 
    expect(Jiazi.from_file("title")).to have_key("sentences")
  end

end