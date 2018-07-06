def change(money)
    change_given = []
    count_hash = Hash.new
    
    count_hash["25"] = money / 25 #index[0] = quarter_count
    money = money % 25
    count_hash["10"] = money / 10 #index[1] = dime_count
    money = money % 10
    count_hash["5"] = money / 5 #index[2] = nickel_count
    count_hash["1"] = money % 5 #index[3] = penny_count

    count_hash.each do |key, value|
      value.times do
        change_given << key.to_i 
      end
    end 

    return change_given
  end

p change(119)