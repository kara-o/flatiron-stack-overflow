class AddAnswererToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :answerer_id, :integer
  end
end
