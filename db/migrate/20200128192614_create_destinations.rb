class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.column(:country, :string)
      t.column(:city, :string)
      t.column(:spot, :string)
      t.timestamps()
    end
  end
end
