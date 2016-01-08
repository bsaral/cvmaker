# encoding: utf-8
class FormsController < ApplicationController
  before_filter :require_login
  
  def index
    @forms = Form.all
  end

 
  def show
    @form = Form.find(params[:id])

  end

  
  def new
    @form = Form.new
    1.times { @form.firmas.build }
    1.times { @form.dils.build }
    1.times { @form.bilgisayars.build }
    1.times { @form.projes.build }
    1.times { @form.sertifikas.build }
    1.times { @form.referans.build }
  end

  
  def edit
    @form = Form.find(params[:id])
  end

  
  def create
    @form = Form.new(params[:form])
    1.times { @form.firmas.build }
    1.times { @form.dils.build }
    1.times { @form.bilgisayars.build }
    1.times { @form.projes.build }
    1.times { @form.sertifikas.build }
    1.times { @form.referans.build }

    if @form.save
      flash[:notice] = "Successfully created form."
      redirect_to @form
    else
      render :action => 'new'
    end
    
    if @form.medeni == "Seçiniz"
		@form.update_attribute(:medeni, nil)
	end
	if @form.askerlik == "Seçiniz"
		@form.update_attribute(:askerlik, nil)
	end
    
  end

  
  def update
    @form = Form.find(params[:id])

    if @form.update_attributes(params[:form])
      flash[:notice] = "Successfully updated form."
      redirect_to @form
    else
      render :action => 'edit'
    end
    
    if @form.medeni == "Seçiniz"
		@form.update_attribute(:medeni, nil)
	end
	if @form.askerlik == "Seçiniz"
		@form.update_attribute(:askerlik, nil)
	end
	
	
  end

 
  def destroy
    @form = Form.find(params[:id])
    @form.destroy

    flash[:notice] = "Successfully destroyed form."
    redirect_to forms_url
  end
end
