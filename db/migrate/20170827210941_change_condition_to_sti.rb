class ChangeConditionToSti < ActiveRecord::Migration[5.1]
  def up
    create_table :conditions do |t|
      t.integer :value
      t.belongs_to :prize
      t.string :type

      t.timestamps
    end

    drop_table :multiple_of_n_conditions
    drop_table :specifc_sub_conditions
  end

  def down

    create_table :specifc_sub_conditions do |t|
      t.integer :subscriber
      t.belongs_to :prize

      t.timestamps
    end

    create_table :multiple_of_n_conditions do |t|
      t.integer :multiplier
      t.belongs_to :prize

      t.timestamps
    end
    
    drop_table :conditions
  end
end
