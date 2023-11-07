
require "jump_search"

RSpec.describe JumpSearch do
  context "quando o elemento está no array" do
    it "encontra elemento no início do array" do
      arr = [0, 5, 10, 15, 20, 25, 30]
      x = 0
      jump_search = Object.new.extend(JumpSearch)
      expect(jump_search.jumpsearch(arr, x)).to eq(0)
    end
    
    it "encontra elemento no meio do array" do
      arr = [2, 4, 6, 8, 10, 12, 14, 16, 18]
      x = 10
      jump_search = Object.new.extend(JumpSearch)
      expect(jump_search.jumpsearch(arr, x)).to eq(4)
    end
    
    it "encontra elemento no final do array" do
      arr = [3, 7, 11, 15, 19, 23, 27]
      x = 27
      jump_search = Object.new.extend(JumpSearch)
      expect(jump_search.jumpsearch(arr, x)).to eq(6)
    end
   
    it "encontra elemento em um array pequeno" do
      arr = [1, 3, 5]
      x = 3
      jump_search = Object.new.extend(JumpSearch)
      expect(jump_search.jumpsearch(arr, x)).to eq(1)
    end
  
    it "encontra elemento em um array grande" do
      arr = (1..1000).to_a
      x = 500
      jump_search = Object.new.extend(JumpSearch)
      expect(jump_search.jumpsearch(arr, x)).to eq(499)
    end
    
    it "encontra elemento no limite inferior do array" do
    arr = [10, 20, 30, 40, 50, 60, 70, 80]
    x = 10
    jump_search = Object.new.extend(JumpSearch)
    expect(jump_search.jumpsearch(arr, x)).to eq(0)
    end

    it "encontra elemento no limite superior do array" do
      arr = [10, 20, 30, 40, 50, 60, 70, 80]
      x = 80
      jump_search = Object.new.extend(JumpSearch)
      expect(jump_search.jumpsearch(arr, x)).to eq(7)
    end
  end


  context "quando o elemento não está no array" do
    it "não encontra elemento no array" do
      arr = [1, 3, 5, 7, 9, 11, 13]
      x = 6
      jump_search = Object.new.extend(JumpSearch)
      expect(jump_search.jumpsearch(arr, x)).to eq(-1)
    end
    
    it "lida com array vazio" do
      arr = []
      x = 42
      jump_search = Object.new.extend(JumpSearch)
      expect(jump_search.jumpsearch(arr, x)).to eq(-1)
    end
  end
end










