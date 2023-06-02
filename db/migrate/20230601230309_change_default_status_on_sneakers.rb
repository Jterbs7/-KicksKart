class ChangeDefaultStatusOnSneakers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :sneakers, :status, 'available'
  end
end
