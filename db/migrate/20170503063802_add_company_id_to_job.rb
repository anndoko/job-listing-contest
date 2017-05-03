class AddCompanyIdToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :company_id, :integer
  end
end
