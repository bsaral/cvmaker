class CreateReferans < ActiveRecord::Migration
  def change
    create_table :referans do |t|
      t.integer :form_id
      t.string :ref_ad
      t.string :ref_poz
      t.string :mail

      t.timestamps
    end
  end
end
