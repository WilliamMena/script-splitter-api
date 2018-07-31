class AddTimecodeToScripts < ActiveRecord::Migration[5.1]
  def change
    add_column :scripts, :timecode, :time
  end
end
