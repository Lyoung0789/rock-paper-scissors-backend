class CreateScoreTable < ActiveRecord::Migration[6.0]
  def change
    create_table :score_tables do |t|
      t.string :username
      t.integer :score

    end
  end
end
