class AddImpressionsCountToMangaks < ActiveRecord::Migration[5.2]
  def change
    add_column :mangaks, :impressions_count, :int, default: 0
  end
end
