require_relative '../vegan_food'

describe VeganFood do
  let(:vegan_food){ VeganFood.new }

  it "checks the expiration" do
    expect(vegan_food.expire?(0,2)).to eq false
  end

  it "checks that the date increments by one" do
    expect(vegan_food.time_passes).to eq 1
  end


end
