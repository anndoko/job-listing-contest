class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :title
      t.string :image
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
