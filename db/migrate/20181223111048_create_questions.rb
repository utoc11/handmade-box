class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :user_id, index: true, foreign_key: true
      t.string :title, null: false
      t.text :body, null: false
      t.integer :pd_tag_id, index: true,null: false
      t.integer :tech_tag_id, index: true,null: false

      t.timestamps
    end
  end
end
