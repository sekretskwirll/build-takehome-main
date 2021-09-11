class AddFlagToRatings < ActiveRecord::Migration[6.0]
  def change
    add_column :ratings, :flag, :boolean, default: false
  end
end
