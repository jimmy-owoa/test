require 'test_helper'

class BiddingTempsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bidding_temp = bidding_temps(:one)
  end

  test "should get index" do
    get bidding_temps_url
    assert_response :success
  end

  test "should get new" do
    get new_bidding_temp_url
    assert_response :success
  end

  test "should create bidding_temp" do
    assert_difference('BiddingTemp.count') do
      post bidding_temps_url, params: { bidding_temp: { bases: @bidding_temp.bases, bidding_company: @bidding_temp.bidding_company, contact: @bidding_temp.contact, country: @bidding_temp.country, description: @bidding_temp.description, items_involved: @bidding_temp.items_involved, location: @bidding_temp.location, requirements: @bidding_temp.requirements, sector: @bidding_temp.sector, title: @bidding_temp.title } }
    end

    assert_redirected_to bidding_temp_url(BiddingTemp.last)
  end

  test "should show bidding_temp" do
    get bidding_temp_url(@bidding_temp)
    assert_response :success
  end

  test "should get edit" do
    get edit_bidding_temp_url(@bidding_temp)
    assert_response :success
  end

  test "should update bidding_temp" do
    patch bidding_temp_url(@bidding_temp), params: { bidding_temp: { bases: @bidding_temp.bases, bidding_company: @bidding_temp.bidding_company, contact: @bidding_temp.contact, country: @bidding_temp.country, description: @bidding_temp.description, items_involved: @bidding_temp.items_involved, location: @bidding_temp.location, requirements: @bidding_temp.requirements, sector: @bidding_temp.sector, title: @bidding_temp.title } }
    assert_redirected_to bidding_temp_url(@bidding_temp)
  end

  test "should destroy bidding_temp" do
    assert_difference('BiddingTemp.count', -1) do
      delete bidding_temp_url(@bidding_temp)
    end

    assert_redirected_to bidding_temps_url
  end
end
