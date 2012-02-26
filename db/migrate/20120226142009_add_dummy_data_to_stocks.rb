require 'securerandom'

class AddDummyDataToStocks < ActiveRecord::Migration
  def self.up
    200.times do |i|
      Stock.create(:name => string_random(4+rand(10)), :cost => rand(1000.12), :purchase_date => time_rand, :purchase_quantity => rand(5000))
    end
  end

  def self.down
    execute "delete from stocks"
  end

  def time_rand from = 0.0, to = Time.now
    Time.at(from + rand * (to.to_f - from.to_f))
  end

  def string_random( len )
    chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
    newpass = ""
    1.upto(len) { |i| newpass << chars[rand(chars.size-1)] }
    return newpass
  end
end
