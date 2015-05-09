require 'test_helper'

class SheetsControllerTest < ActionController::TestCase
  setup do
    @sheet = sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sheet" do
    assert_difference('Sheet.count') do
      post :create, sheet: { activity_id: @sheet.activity_id, antal: @sheet.antal, client_id: @sheet.client_id, date: @sheet.date, minuten: @sheet.minuten, omschrijving: @sheet.omschrijving, opmerking_intern: @sheet.opmerking_intern, uur: @sheet.uur }
    end

    assert_redirected_to sheet_path(assigns(:sheet))
  end

  test "should show sheet" do
    get :show, id: @sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sheet
    assert_response :success
  end

  test "should update sheet" do
    patch :update, id: @sheet, sheet: { activity_id: @sheet.activity_id, antal: @sheet.antal, client_id: @sheet.client_id, date: @sheet.date, minuten: @sheet.minuten, omschrijving: @sheet.omschrijving, opmerking_intern: @sheet.opmerking_intern, uur: @sheet.uur }
    assert_redirected_to sheet_path(assigns(:sheet))
  end

  test "should destroy sheet" do
    assert_difference('Sheet.count', -1) do
      delete :destroy, id: @sheet
    end

    assert_redirected_to sheets_path
  end
end
