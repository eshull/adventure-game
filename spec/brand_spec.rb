require('spec_helper')

describe(Brand) do
  describe('#name') do
    it('will validate name is not blank on brand create') do
      brand1 = Brand.create({:name => "Bike"})
      brand2 = Brand.create({:name => ""})
      expect(Brand.all).to(eq([brand1]))
    end

    it('a brand can only have a length of 100 char name') do
      brand1 = Brand.create({:name => "Shoes"})
      brand2 = Brand.create({:name => "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"})
      expect(Brand.all).to(eq([brand1]))
    end

    it('will upcase the first letter of name') do
      brand1 = Brand.create({:name => "toad"})
      expect(Brand.all.first.name).to(eq("Toad"))
    end

    it('will not allow duplicate brand names') do
      brand1 = Brand.create({:name => "toad"})
      brand2 = Brand.create({:name => "toad"})
      expect(Brand.all).to(eq([brand1]))
    end
  end
end
