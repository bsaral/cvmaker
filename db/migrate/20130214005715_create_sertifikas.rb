class CreateSertifikas < ActiveRecord::Migration
  def change
    create_table :sertifikas do |t|
      t.integer :form_id
      t.string :kurs
      t.string :sertifika_adi
      

      t.timestamps
    end
  end
end
