class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :name
      t.date :date
      t.integer :amount
      t.text :description
      t.string :type
      t.integer :user_id
      t.timestamps
    end
  end
end
