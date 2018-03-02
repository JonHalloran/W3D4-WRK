class AddTimestampsToPools < ActiveRecord::Migration[5.1]
  def change
    add_timestamps(:polls, null: false)
  end
end
