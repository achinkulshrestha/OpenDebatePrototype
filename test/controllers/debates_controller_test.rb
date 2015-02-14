require 'test_helper'

class DebatesControllerTest < ActionController::TestCase
  setup do
    @debate = debates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:debates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create debate" do
    assert_difference('Debate.count') do
      post :create, debate: { completed: @debate.completed, date: @debate.date, initiator_id: @debate.initiator_id, joiner_id: @debate.joiner_id, length: @debate.length, topic: @debate.topic }
    end

    assert_redirected_to debate_path(assigns(:debate))
  end

  test "should show debate" do
    get :show, id: @debate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @debate
    assert_response :success
  end

  test "should update debate" do
    patch :update, id: @debate, debate: { completed: @debate.completed, date: @debate.date, initiator_id: @debate.initiator_id, joiner_id: @debate.joiner_id, length: @debate.length, topic: @debate.topic }
    assert_redirected_to debate_path(assigns(:debate))
  end

  test "should destroy debate" do
    assert_difference('Debate.count', -1) do
      delete :destroy, id: @debate
    end

    assert_redirected_to debates_path
  end
end
