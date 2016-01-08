class Dil < ActiveRecord::Base
  attr_accessible :dil_adi, :dil_seviye, :form_id
  belongs_to :form
end
