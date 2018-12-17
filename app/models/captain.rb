class Captain < ActiveRecord::Base
  has_many :boats
  
  def self.catamaran_operators
    self.includes(boats: :classifications).where(classifications: {name: "Catamaran"})
  end
  
end
