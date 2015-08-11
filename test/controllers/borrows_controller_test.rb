require 'test_helper'

class BorrowsControllerTest < ActionController::TestCase
  setup do
    @borrow = borrows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borrows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borrow" do
    assert_difference('Borrow.count') do
      post :create, borrow: { book_no_id: @borrow.book_no_id, fine_type_id: @borrow.fine_type_id, issue_dete: @borrow.issue_dete, member_id: @borrow.member_id, returune_dete: @borrow.returune_dete }
    end

    assert_redirected_to borrow_path(assigns(:borrow))
  end

  test "should show borrow" do
    get :show, id: @borrow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borrow
    assert_response :success
  end

  test "should update borrow" do
    patch :update, id: @borrow, borrow: { book_no_id: @borrow.book_no_id, fine_type_id: @borrow.fine_type_id, issue_dete: @borrow.issue_dete, member_id: @borrow.member_id, returune_dete: @borrow.returune_dete }
    assert_redirected_to borrow_path(assigns(:borrow))
  end

  test "should destroy borrow" do
    assert_difference('Borrow.count', -1) do
      delete :destroy, id: @borrow
    end

    assert_redirected_to borrows_path
  end
end
