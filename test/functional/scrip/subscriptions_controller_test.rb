require 'test_helper'

module Scrip
  class SubscriptionsControllerTest < ActionController::TestCase
    setup do
      @subscription = subscriptions(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:subscriptions)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create subscription" do
      assert_difference('Subscription.count') do
        post :create, subscription: { subscription_type_id: @subscription.subscription_type_id }
      end
  
      assert_redirected_to subscription_path(assigns(:subscription))
    end
  
    test "should show subscription" do
      get :show, id: @subscription
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @subscription
      assert_response :success
    end
  
    test "should update subscription" do
      put :update, id: @subscription, subscription: { subscription_type_id: @subscription.subscription_type_id }
      assert_redirected_to subscription_path(assigns(:subscription))
    end
  
    test "should destroy subscription" do
      assert_difference('Subscription.count', -1) do
        delete :destroy, id: @subscription
      end
  
      assert_redirected_to subscriptions_path
    end
  end
end
