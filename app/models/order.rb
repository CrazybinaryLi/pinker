class Order < ApplicationRecord
  has_many :students, :through => :student_orders
  belongs_to :driver, :optional => true
  
  def self.search(datetime, destination)
    if search
      find(:all, conditions: ['time < #{datetime}', 'destination = #{destination}'])
    else
      find(:all)
    end
  end
end