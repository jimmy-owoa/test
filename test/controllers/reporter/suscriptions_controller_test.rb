require 'test_helper'

class Reporter::SuscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporter_suscription = reporter_suscriptions(:one)
  end

  test "should get index" do
    get reporter_suscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_reporter_suscription_url
    assert_response :success
  end

  test "should create reporter_suscription" do
    assert_difference('Reporter::Suscription.count') do
      post reporter_suscriptions_url, params: { reporter_suscription: {  } }
    end

    assert_redirected_to reporter_suscription_url(Reporter::Suscription.last)
  end

  test "should show reporter_suscription" do
    get reporter_suscription_url(@reporter_suscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_reporter_suscription_url(@reporter_suscription)
    assert_response :success
  end

  test "should update reporter_suscription" do
    patch reporter_suscription_url(@reporter_suscription), params: { reporter_suscription: {  } }
    assert_redirected_to reporter_suscription_url(@reporter_suscription)
  end

  test "should destroy reporter_suscription" do
    assert_difference('Reporter::Suscription.count', -1) do
      delete reporter_suscription_url(@reporter_suscription)
    end

    assert_redirected_to reporter_suscriptions_url
  end
end
