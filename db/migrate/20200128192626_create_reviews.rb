class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.column(:body, :string)
      t.column(:pi_rating, :integer)
      t.column(:destination_id, :integer)
      t.timestamps()
    end
  end
end
