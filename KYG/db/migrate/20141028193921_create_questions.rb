class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :country
      t.string :capital

      t.timestamps
    end
  end
end
