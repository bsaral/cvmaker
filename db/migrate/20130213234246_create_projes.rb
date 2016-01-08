class CreateProjes < ActiveRecord::Migration
  def change
    create_table :projes do |t|
      t.integer :form_id
      t.string :proje_adi
      t.string :site

      t.timestamps
    end
  end
end
