class Bilgisayar < ActiveRecord::Base
  attr_accessible :bilgi,  :form_id, :kategori, :seviye
  belongs_to :form
end
