class CreateHobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :hobbies do |t|
      t.string :name
      t.string :image
      t.belongs_to :hwsaa, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
