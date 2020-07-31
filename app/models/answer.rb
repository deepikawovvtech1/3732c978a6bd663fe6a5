class Answer < ApplicationRecord
	belongs_to :user
	belongs_to :question

	accepts_nested_attributes_for :question
end
