class CreateMultipleOfNConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :multiple_of_n_conditions do |t|
      t.integer :multiplier
      t.belongs_to :prize

      t.timestamps
    end
  end
end
