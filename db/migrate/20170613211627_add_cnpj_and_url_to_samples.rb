class AddCnpjAndUrlToSamples < ActiveRecord::Migration[5.0]
  def change
  	add_column :samples, :website, :string
  	add_column :samples, :cnpj, :string
  end
end
