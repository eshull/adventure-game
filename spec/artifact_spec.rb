require('spec_helper')

describe(Artifact) do

  it {should belong_to(:rooms)}

  # it {should validate_presence_of(:room_id)}
  #
  # it {should validate_presence_of(:description)}
  #
  # it {should validate_presence_of(:name)}

end
