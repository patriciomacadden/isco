class CreateIscoThirdLevelGroups < ActiveRecord::Migration
  def change
    create_table :isco_third_level_groups do |t|
      t.string :code
      t.string :name
      t.references :isco_second_level_group

      t.timestamps
    end
    add_index :isco_third_level_groups, :isco_second_level_group_id
  end
end
