class Schedule < ActiveRecord::Base
  belongs_to :Support
  validates :vacation, exclusion: {in: ['yes' , 'YES' ,'Yes'] , message: ":    This person is in the vacation , please eneter next avaliable support name"}
  validate :workingday

  def workingday
    require 'date'
    if  self.date.strftime("%a")== "sat" 
      errors.add(:date ,"      the day selected is the holiday , please schedule for next avaliable day")
    end

end

  
	
end
