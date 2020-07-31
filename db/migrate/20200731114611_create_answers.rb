class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :answerA
      t.string :answerB

      t.timestamps
    end
  end
end
