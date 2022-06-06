class AddRateToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :rate, :float, null: false, default: 0
    # floatにすることを推奨(小数点に対応できるため)。nullの制約は各自判断してください
  end
end