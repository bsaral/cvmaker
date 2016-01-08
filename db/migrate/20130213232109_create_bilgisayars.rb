class CreateBilgisayars < ActiveRecord::Migration
  def change
    create_table :bilgisayars do |t|
      t.integer :form_id
      t.string :kategori
      t.string :bilgi
      t.string :seviye
     

      t.timestamps
    end
  end
end
