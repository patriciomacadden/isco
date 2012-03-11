class CreateIscoFirstLevelGroups < ActiveRecord::Migration
  def change
    create_table :isco_first_level_groups do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
