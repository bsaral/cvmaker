class Firma < ActiveRecord::Base
  attr_accessible :baslama, :bitis, :bolum, :firma_adi, :form_id, :pozisyon, :sektor
  belongs_to :form
end
