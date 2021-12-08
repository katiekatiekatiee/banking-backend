class ChangeTransactionAmountToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :transactions, :amount, 'float USING CAST(amount AS float)'
  end
end


# def change
#   change_table :transactions do |t|
#     t.change :amount, :float
#   end
# end

# change_column :table_name, :column_name, 'integer USING CAST(column_name AS integer)'