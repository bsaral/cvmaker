class CreateFirmas < ActiveRecord::Migration
  def change
    create_table :firmas do |t|
      t.integer :form_id
      t.string :firma_adi
      t.datetime :baslama
      t.datetime :bitis
      t.string :sektor
      t.string :bolum
      t.string :pozisyon

      t.timestamps
    end
  end
end
