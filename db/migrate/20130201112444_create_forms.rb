class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :ad
      t.string :soyad
      t.string :uyruk
      t.string :tc
      t.string :cinsiyet
      t.string :medeni
      t.datetime :dogum
      t.string :ehliyet
      t.string :askerlik
      t.string :il
      t.string :ulke
      t.string :ilce
      t.string :sigara
      t.string :engel
      t.string :adres
      t.string :evtel
      t.string :ceptel

      t.timestamps
    end
  end
end
