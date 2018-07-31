class AddInAndOutPointToCaptions < ActiveRecord::Migration[5.1]
  def change
    add_column :captions, :in_point, :time
    add_column :captions, :out_point, :time
  end
end
