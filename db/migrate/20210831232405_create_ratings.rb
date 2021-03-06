class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :value
      t.belongs_to :user, foreign_key: true
      t.belongs_to :vegetable, foreign_key: true

      t.timestamps
    end
  end
end
