class ChangeInPointToBeStringInCaptions < ActiveRecord::Migration[5.1]
  def change
    change_column :captions, :in_point, :string
    change_column :captions, :out_point, :string
  end
end
