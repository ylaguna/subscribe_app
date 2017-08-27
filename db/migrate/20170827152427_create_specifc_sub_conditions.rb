class CreateSpecifcSubConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :specifc_sub_conditions do |t|
      t.integer :subscriber
      t.belongs_to :prize

      t.timestamps
    end
  end
end
