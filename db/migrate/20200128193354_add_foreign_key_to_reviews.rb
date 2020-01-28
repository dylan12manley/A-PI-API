class AddForeignKeyToReviews < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :reviews, :destinations
  end
end
