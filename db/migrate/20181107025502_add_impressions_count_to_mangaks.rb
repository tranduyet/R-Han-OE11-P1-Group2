class AddImpressionsCountToMangaks < ActiveRecord::Migration[5.2]
  def change
<<<<<<< HEAD
    add_column :mangaks, :impressions_count, :int
=======
    add_column :mangaks, :impressions_count, :int, default: 0
>>>>>>> impressionist
  end
end
