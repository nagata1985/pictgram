class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :coment_id
      t.integer :user_id
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
