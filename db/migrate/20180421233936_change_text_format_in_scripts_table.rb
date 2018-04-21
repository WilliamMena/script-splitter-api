class ChangeTextFormatInScriptsTable < ActiveRecord::Migration[5.1]
  def change
    change_column :scripts, :text, :text
  end
end
