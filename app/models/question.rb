class Question < ApplicationRecord
	has_many :user_question
	has_many :users, through: :user_question

	has_many :answers
  
  after_save :check_user

  def check_user
  	puts "inside check_user#{self.inspect}"
  	user_question = UserQuestion.create(question_id:self.id)
  	puts user_question.inspect
    #user_question.user_id = current_user.id
    # user_question.question_id = self.id
    # user_question.save
  end

end
