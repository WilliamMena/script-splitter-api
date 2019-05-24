class CreateScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :scripts do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.time :timecode
      t.string :text

      t.timestamps
    end
  end
end
