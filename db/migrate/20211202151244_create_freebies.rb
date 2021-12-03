class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.references :company, :dev
    end

    # add_column :freebies, :company_id, :integer
    # add_column :freebies, :dev_id, :integer

  end
end
