require 'test_helper'

class SessionAnswersControllerTest < ActionController::TestCase
  setup do
    @session_answer = session_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:session_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session_answer" do
    assert_difference('SessionAnswer.count') do
      post :create, session_answer: { answer_id: @session_answer.answer_id, session_id: @session_answer.session_id }
    end

    assert_redirected_to session_answer_path(assigns(:session_answer))
  end

  test "should show session_answer" do
    get :show, id: @session_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @session_answer
    assert_response :success
  end

  test "should update session_answer" do
    patch :update, id: @session_answer, session_answer: { answer_id: @session_answer.answer_id, session_id: @session_answer.session_id }
    assert_redirected_to session_answer_path(assigns(:session_answer))
  end

  test "should destroy session_answer" do
    assert_difference('SessionAnswer.count', -1) do
      delete :destroy, id: @session_answer
    end

    assert_redirected_to session_answers_path
  end
end
