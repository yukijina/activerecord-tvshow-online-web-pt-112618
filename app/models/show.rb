class Show < ActiveRecord::Base  
  def self.highest_rating 
    self.maximum(:rating)
  end 
  
  def self.most_popular_show
    #self.where(self.highest_rating).first
    self.where(self_highest_rating).order(:rating).last
  end 
  
  def self.lowest_rating
    self.minimum(:rating)
  end
  
  def self.least_popular_show 
    self.where(self.lowest_rating).order(:rating).first
  end 
end 