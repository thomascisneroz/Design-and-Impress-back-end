class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean :public
      t.text :details

      t.timestamps
    end
  end
end
