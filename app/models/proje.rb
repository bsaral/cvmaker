class Proje < ActiveRecord::Base
  attr_accessible :form_id, :proje_adi, :site
  belongs_to :form
end
