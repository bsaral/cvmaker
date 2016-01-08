class Referan < ActiveRecord::Base
  attr_accessible :form_id, :mail, :ref_ad, :ref_poz
  belongs_to :form
end
