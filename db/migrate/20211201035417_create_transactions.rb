class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :id
      t.integer :goal_id
      t.string :date
      t.string :amount

      t.timestamps
    end
  end
end
