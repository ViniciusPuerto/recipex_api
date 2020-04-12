require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  subject { 
    described_class.new(
      description: "Morango",
      details: "Fatiado"
    ) 
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without details" do
    subject.details = nil
    expect(subject).to_not be_valid
  end
end
