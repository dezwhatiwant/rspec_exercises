require 'rspec'

class ChangeMachine

  def change(money)
    change_given = []
    
    quarter_count = money / 25
    money = money % 25
    dime_count = money / 10
    money = money % 10
    nickel_count = money / 5
    penny_count = money % 5    

    quarter_count.times do
      change_given << 25
    end
    dime_count.times do
      change_given << 10
    end
    nickel_count.times do
      change_given << 5
    end
    penny_count.times do
      change_given << 1
    end

    return change_given
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return 1 if given 1' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(1)).to eq([1])
    end

    it 'should return [1,1] if given 2' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(2)).to eq([1,1])
    end

    it 'should return [1,1,1] if given 3' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(3)).to eq([1,1,1])
    end

    it 'should return [1,1,1,1] if given 4' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(4)).to eq([1,1,1,1])
    end

    it 'should return [5] if given 5' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(5)).to eq([5])
    end

    it 'should return [5,1] if given 6' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(6)).to eq([5,1])
    end

    it 'should return [5,1,1] if given 7' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(7)).to eq([5,1,1])
    end

    it 'should return [5,1,1,1,1] if given 9' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(9)).to eq([5,1,1,1,1])
    end
   
    it 'should return [10] if given 10' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(10)).to eq([10])
    end

    it 'should return [10,1] if given 11' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(11)).to eq([10,1])
    end

    it 'should return [10,5,1] if given 16' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(16)).to eq([10,5,1])
    end

    it 'should return [10,10,1,1,1,1] if given 24' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(24)).to eq([10,10,1,1,1,1])
    end

    it 'should return [25] if given 25' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(25)).to eq([25])
    end

    it 'should return [25,25,25,25,10,5,1,1,1,1] if given 119' do
      changemachine = ChangeMachine.new
      expect(changemachine.change(119)).to eq([25,25,25,25,10,5,1,1,1,1])
    end
  end
end