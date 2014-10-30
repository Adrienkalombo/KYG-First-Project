class UserResponse < ActiveRecord::Base
  belongs_to :question
  validate :verify_capital, :verify_language

  def correct_capital
    question.capital
  end

  def country
    question.country
  end

  def verify_capital
    #if capital != correct_capital
      #errors.add(:capital, "should be #{correct_capital}")
    #end
  end

  def verify_language
    if capital != correct_language
      errors.add(:language, "should be #{correct_language}")
    end
  end

end
