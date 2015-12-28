require 'rails_helper'

describe Product do
  it('has valid factory') { expect(build(:product)).to be_valid }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:url) }
end
