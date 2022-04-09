class CreatePractices < ActiveRecord::Migration[7.0]
  def change
    create_table :practices do |t|
      t.date :date
      t.string :event
      t.text :body
      t.string :image
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.text :result

      t.timestamps
    end
  end
end
