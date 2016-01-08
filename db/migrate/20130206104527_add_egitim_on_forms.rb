class AddEgitimOnForms < ActiveRecord::Migration
  def change
    add_column :forms, :egitim, :string
    add_column :forms, :okul_adi, :string
    add_column :forms, :lise_adi, :string
    add_column :forms, :lise_bol, :string
    add_column :forms, :lise_tur, :string
    add_column :forms, :lise_derece, :integer
    add_column :forms, :lise_baslangic, :datetime
    add_column :forms, :lise_bitis, :datetime
    add_column :forms, :seviye, :string
    add_column :forms, :uni_adi, :string
    add_column :forms, :fakulte, :string
    add_column :forms, :uni_derece, :integer
    add_column :forms, :uni_baslangic, :datetime
    add_column :forms, :uni_bitis, :datetime
    add_column :forms, :uni_dal, :string
    add_column :forms, :dal_fak, :string
    add_column :forms, :dal_bol, :string
  end
end
