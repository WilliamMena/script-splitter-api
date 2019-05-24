class ChangeInPointToBeStringInCaptions < ActiveRecord::Migration[5.1]
  def change
    add_column :captions, :in_point, :string
    add_column :captions, :out_point, :string
  end
end
