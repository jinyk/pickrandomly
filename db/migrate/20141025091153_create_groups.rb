class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :slug
      t.boolean :publically_listed
      t.string :password

      t.timestamps
    end
  end
end
