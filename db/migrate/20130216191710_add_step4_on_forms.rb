class AddStep4OnForms < ActiveRecord::Migration
  def change
    add_column :forms, :onyazi, :text
    add_column :forms, :ozgecmis, :text
  end
end
