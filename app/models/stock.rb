class Stock < ActiveRecord::Base
 
  def self.calculate_average_price_range_count
    all_stocks = Stock.all
    count1 = count2 = count3 = count4 = count5 = count6 = count7 = count8 = count9 = count10 =0
    sum1 = sum2 = sum3 = sum4 = sum5 = sum6 = sum7 = sum8 = sum9 = sum10 = 0
    average1 = average2 = average3 = average4 = average5 = average6 = average7 = average8 = average9 = average10s = 0
    all_stocks.each do |stock|
      case
      when( stock.cost > 0 and stock.cost < 100)
        count1+= 1
        sum1 = sum1 + stock.cost
      when( stock.cost > 101 and stock.cost < 200)
        count2+= 1
        sum2 = sum2 + stock.cost
      when( stock.cost > 201 and stock.cost < 300)
        count3+= 1
        sum3 = sum3 + stock.cost
      when( stock.cost > 301 and stock.cost < 400)
        count4+= 1
        sum4 = sum4 + stock.cost
      when( stock.cost > 401 and stock.cost < 500)
        count5+= 1
        sum5 = sum5 + stock.cost
      when( stock.cost > 501 and stock.cost < 600)
        count6+= 1
        sum6 = sum6 + stock.cost
      when( stock.cost > 601 and stock.cost < 700)
        count7+= 1
        sum7 = sum7 + stock.cost
      when( stock.cost > 701 and stock.cost < 800)
        count8+= 1
        sum8 = sum8 + stock.cost
      when( stock.cost > 801 and stock.cost < 900)
        count9+= 1
        sum9 = sum9 + stock.cost
      when( stock.cost > 901)
        count10+= 1
        sum10 = sum10 + stock.cost
      end
    end
    average1 = (sum1/count1.to_i) unless count1 == 0
    average2 = (sum2/count2.to_i) unless count2 == 0
    average3 = (sum3/count3.to_i) unless count3 == 0
    average4 = (sum4/count4.to_i) unless count4 == 0
    average5 = (sum5/count5.to_i) unless count5 == 0
    average6 = (sum6/count6.to_i) unless count6 == 0
    average7 = (sum7/count7.to_i) unless count7 == 0
    average8 = (sum8/count8.to_i) unless count8 == 0
    average9 = (sum9/count9.to_i) unless count9 == 0
    average10 = (sum10/count10.to_i) unless count10 == 0

    count_in_strings = count10.to_s + "," + count9.to_s + "," + count8.to_s + "," + count7.to_s + "," + count6.to_s + "," + count5.to_s + "," + count4.to_s + "," + count3.to_s + "," + count2.to_s + "," + count1.to_s
    average_in_strings = average10.to_s + "," + average9.to_s + "," + average8.to_s + "," + average7.to_s + "," + average6.to_s + "," + average5.to_s + "," + average4.to_s + "," + average3.to_s + "," + average2.to_s + "," + average6.to_s
    values = {}
    values[:range] =  count_in_strings
    values[:average] =  average_in_strings
    values
  end
end
