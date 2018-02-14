class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :Restaurant, foreign_key: true

      t.timestamps
    end
  end
end
