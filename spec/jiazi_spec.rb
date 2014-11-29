require 'spec_helper'

describe Jiazi do
  
  it '#custom' do
    expect(Jiazi.custom(1, 2, 1))
      .to eq "max should be greater or equal to min."
  end

end