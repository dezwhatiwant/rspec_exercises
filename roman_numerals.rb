require 'rspec'

class RomanNumeralTranslator

  def translate(number)
    roman_numeral = ""
    
    l_count = number / 49
    if l_count > 0
      number = number - 48
    end
    x_count = number / 9
    if x_count > 0
      number = number - 8
    end
    v_count = number / 4
    if v_count > 0
      number = number - 3
    end
    i_count = number % 5



    total_count = i_count + v_count + x_count + l_count
    
    while total_count > 0
      if l_count > 0
        l_count.times do
          roman_numeral = roman_numeral + 'L'
        end
      end

      total_count = total_count - l_count

      if x_count > 0
        x_count.times do
          roman_numeral = roman_numeral + 'X'
        end
      end

      total_count = total_count - x_count

      if v_count > 0 
        v_count.times do
          roman_numeral = roman_numeral + 'V'
        end
      end
      
      total_count = total_count - v_count

      if i_count > 0 
        i_count.times do
          roman_numeral = roman_numeral + 'I'
        end
      end
     
     total_count = total_count - i_count

    end
    
    return roman_numeral
  end
end


RSpec.describe RomanNumeralTranslator do
  describe '#translate' do
    it "should return 'I' if given 1" do
      roman = RomanNumeralTranslator.new
      expect(roman.translate(1)).to eq('I')
    end

    it "should return 'IV' if given 4" do
      roman = RomanNumeralTranslator.new
      expect(roman.translate(4)).to eq('IV')
    end

    it "should return 'IX' if given 9" do
      roman = RomanNumeralTranslator.new
      expect(roman.translate(9)).to eq('IX')
    end

    it "should return 'XIV' if given 14" do
      roman = RomanNumeralTranslator.new
      expect(roman.translate(14)).to eq('XIV')
    end
  end
end