class Artifact < ActiveRecord::Base
  belongs_to :rooms

  def self.unhide(user_input)
    word1 = user_input[0]
    word2 = user_input[1]
    @inspect_item = Artifact.find_by(name: word2)
    if @inspect_item == nil
    else
      if @inspect_item.unlock.include?(word1)
        @update_item = Artifact.find(@inspect_item.purpose.to_i)
        @update_item.update(:hidden => false)
              binding.pry
      end
    end
  end
end
