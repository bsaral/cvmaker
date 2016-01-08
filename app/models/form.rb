# encoding: UTF-8

class Form < ActiveRecord::Base
  attr_accessible :ad, :adres, :askerlik, :ceptel, :cinsiyet, :dogum, :ehliyet, :engel, 
  :evtel, :il, :ilce, :medeni, :sigara, :soyad, :tc, :ulke, :uyruk,
  :egitim,:lise_adi,:lise_bol,:lise_tur,:lise_derece,:lise_baslangic,:lise_bitis,
  :seviye,:uni_adi,:fakulte,:uni_derece,:uni_baslangic,:uni_bitis,:uni_dal,:dal_fak,:dal_bol,:okul_adi,
  :onyazi,:ozgecmis,:image
  
  mount_uploader :image, ImageUploader
  
  attr_accessible :firmas_attributes
  attr_accessible :dils_attributes
  attr_accessible :bilgisayars_attributes
  attr_accessible :projes_attributes
  attr_accessible :sertifikas_attributes
  attr_accessible :referans_attributes
  
  
  
   #validates :ad,:soyad,:uyruk,:cinsiyet,:dogum,:il,:ulke,:ilce,:ceptel,:egitim,   :presence => { :message => "Bu Alan Boş Bırakılmaz" }
   #validates :ceptel,      :numericality => { :message => "Geçersiz Numara,lütfen tekrar kontrol ediniz." }
   #validates :ad, :soyad,   :uniqueness  => { :message => "Bu isimde benzer bir kullanıcı daha var" }
   # validates_format_of :tc,  :with => /^[1-9][0-9]{10}$/  ,
							 #:message => "TC no yanlış girildi.Tekrar kontrol ediniz."
							 
   has_many :firmas, :dependent => :destroy
   has_many :dils, :dependent => :destroy
   has_many :bilgisayars, :dependent => :destroy
   has_many :projes, :dependent => :destroy
   has_many :sertifikas, :dependent => :destroy
   has_many :referans, :dependent => :destroy
   
   accepts_nested_attributes_for :firmas, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
   accepts_nested_attributes_for :dils, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
   accepts_nested_attributes_for :bilgisayars, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
   accepts_nested_attributes_for :projes, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
   accepts_nested_attributes_for :sertifikas, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
   accepts_nested_attributes_for :referans, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
   
  
  
end
