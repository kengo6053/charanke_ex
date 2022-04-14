class CreateTops < ActiveRecord::Migration[7.0]
  def change
    create_table :tops do |t|
      t.date :date
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
