class AddFilesToSamples < ActiveRecord::Migration[5.0]
  def change
  	add_column :samples, :file, :string
  end
end
