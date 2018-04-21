class CreateCaptions < ActiveRecord::Migration[5.1]
  def change
    create_table :captions do |t|
      t.text :text
      t.boolean :completed
      t.time :timecode
      t.references :script, foreign_key: true

      t.timestamps
    end
  end
end
