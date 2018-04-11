require 'test_helper'

class BiddingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bidding = biddings(:one)
  end

  test "should get index" do
    get biddings_url
    assert_response :success
  end

  test "should get new" do
    get new_bidding_url
    assert_response :success
  end

  test "should create bidding" do
    assert_difference('Bidding.count') do
      post biddings_url, params: { bidding: { bussiness_id: @bidding.bussiness_id, contact_address: @bidding.contact_address, contact_email: @bidding.contact_email, contact_job: @bidding.contact_job, contact_name: @bidding.contact_name, contact_phone: @bidding.contact_phone, country: @bidding.country, description: @bidding.description, location: @bidding.location, other: @bidding.other, publication_title: @bidding.publication_title, sector: @bidding.sector } }
    end

    assert_redirected_to bidding_url(Bidding.last)
  end

  test "should show bidding" do
    get bidding_url(@bidding)
    assert_response :success
  end

  test "should get edit" do
    get edit_bidding_url(@bidding)
    assert_response :success
  end

  test "should update bidding" do
    patch bidding_url(@bidding), params: { bidding: { bussiness_id: @bidding.bussiness_id, contact_address: @bidding.contact_address, contact_email: @bidding.contact_email, contact_job: @bidding.contact_job, contact_name: @bidding.contact_name, contact_phone: @bidding.contact_phone, country: @bidding.country, description: @bidding.description, location: @bidding.location, other: @bidding.other, publication_title: @bidding.publication_title, sector: @bidding.sector } }
    assert_redirected_to bidding_url(@bidding)
  end

  test "should destroy bidding" do
    assert_difference('Bidding.count', -1) do
      delete bidding_url(@bidding)
    end

    assert_redirected_to biddings_url
  end
end
