class CreateDils < ActiveRecord::Migration
  def change
    create_table :dils do |t|
      t.integer :form_id
      t.string :dil_adi
      t.string :dil_seviye

      t.timestamps
    end
  end
end
