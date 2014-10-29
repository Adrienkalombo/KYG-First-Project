class CreateUserResponses < ActiveRecord::Migration
  def change
    create_table :user_responses do |t|
      t.belongs_to :question, index: true
      t.string :capital
      t.string :language

      t.timestamps
    end
  end
end
