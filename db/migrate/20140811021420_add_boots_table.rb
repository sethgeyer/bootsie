class AddBootsTable < ActiveRecord::Migration
  def change
    create_table :boots do |t|
      t.string  "name"
      t.string  "type"
      t.string  "description"
      t.integer "amount"
      t.string "sex"

    end
  end
end
