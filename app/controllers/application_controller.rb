class ApplicationController < ActionController::Base
  protect_from_forgery
end

class String

  def shuffle
    self.split('').shuffle.join
  end

  def scrabble
  	self.downcase
  	self.split("").map {|s| s.gsub(/[aeilnorstu]/, '1').gsub(/[dg]/, '2').gsub(/[bcmp]/, 
  		'3').gsub(/[fhvwy]/, '4').gsub(/[k]/, '5').gsub(/[jx]/, 
  		'8').gsub(/[qz]/, '10')}.map(&:to_i).reduce(:+)
  
  end

end
