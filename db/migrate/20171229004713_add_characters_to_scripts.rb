class AddCharactersToScripts < ActiveRecord::Migration[5.1]
  def change
    add_column :scripts, :characters, :integer
  end
end
