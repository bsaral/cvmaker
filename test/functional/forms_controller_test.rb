require 'test_helper'

class FormsControllerTest < ActionController::TestCase
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post :create, form: { ad: @form.ad, adres: @form.adres, askerlik: @form.askerlik, ceptel: @form.ceptel, cinsiyet: @form.cinsiyet, dogum: @form.dogum, ehliyet: @form.ehliyet, engel: @form.engel, evtel: @form.evtel, il: @form.il, ilce: @form.ilce, istel: @form.istel, medeni: @form.medeni, sigara: @form.sigara, soyad: @form.soyad, tc: @form.tc, ulke: @form.ulke, uyruk: @form.uyruk }
    end

    assert_redirected_to form_path(assigns(:form))
  end

  test "should show form" do
    get :show, id: @form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form
    assert_response :success
  end

  test "should update form" do
    put :update, id: @form, form: { ad: @form.ad, adres: @form.adres, askerlik: @form.askerlik, ceptel: @form.ceptel, cinsiyet: @form.cinsiyet, dogum: @form.dogum, ehliyet: @form.ehliyet, engel: @form.engel, evtel: @form.evtel, il: @form.il, ilce: @form.ilce, istel: @form.istel, medeni: @form.medeni, sigara: @form.sigara, soyad: @form.soyad, tc: @form.tc, ulke: @form.ulke, uyruk: @form.uyruk }
    assert_redirected_to form_path(assigns(:form))
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete :destroy, id: @form
    end

    assert_redirected_to forms_path
  end
end
