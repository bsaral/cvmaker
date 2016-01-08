class Sertifika < ActiveRecord::Base
  attr_accessible :form_id, :kurs, :sertifika_adi
  belongs_to :form
end
