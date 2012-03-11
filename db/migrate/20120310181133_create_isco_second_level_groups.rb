class CreateIscoSecondLevelGroups < ActiveRecord::Migration
  def change
    create_table :isco_second_level_groups do |t|
      t.string :code
      t.string :name
      t.references :isco_first_level_group

      t.timestamps
    end
    add_index :isco_second_level_groups, :isco_first_level_group_id
  end
end
