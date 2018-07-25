require('spec_helper')

describe(Room) do

  it {should have_and_belong_to_many(:exits)}

  it {should validate_presence_of(:title)}

  it {should validate_presence_of(:description)}

  it {should validate_presence_of(:image)}

end
