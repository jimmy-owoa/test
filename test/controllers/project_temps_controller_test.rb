require 'test_helper'

class ProjectTempsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_temp = project_temps(:one)
  end

  test "should get index" do
    get project_temps_url
    assert_response :success
  end

  test "should get new" do
    get new_project_temp_url
    assert_response :success
  end

  test "should create project_temp" do
    assert_difference('ProjectTemp.count') do
      post project_temps_url, params: { project_temp: { adjudications: @project_temp.adjudications, client: @project_temp.client, contact_address: @project_temp.contact_address, contact_company: @project_temp.contact_company, contact_job: @project_temp.contact_job, contact_name: @project_temp.contact_name, contact_phone: @project_temp.contact_phone, contract_type: @project_temp.contract_type, country: @project_temp.country, current_phase: @project_temp.current_phase, description: @project_temp.description, detail_title: @project_temp.detail_title, full_contact: @project_temp.full_contact, history: @project_temp.history, investment: @project_temp.investment, latest_information: @project_temp.latest_information, location: @project_temp.location, main_services: @project_temp.main_services, main_supplies: @project_temp.main_supplies, main_teams: @project_temp.main_teams, main_works: @project_temp.main_works, owner: @project_temp.owner, production: @project_temp.production, region: @project_temp.region, responsible: @project_temp.responsible, sector_name: @project_temp.sector_name, title: @project_temp.title, types: @project_temp.types } }
    end

    assert_redirected_to project_temp_url(ProjectTemp.last)
  end

  test "should show project_temp" do
    get project_temp_url(@project_temp)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_temp_url(@project_temp)
    assert_response :success
  end

  test "should update project_temp" do
    patch project_temp_url(@project_temp), params: { project_temp: { adjudications: @project_temp.adjudications, client: @project_temp.client, contact_address: @project_temp.contact_address, contact_company: @project_temp.contact_company, contact_job: @project_temp.contact_job, contact_name: @project_temp.contact_name, contact_phone: @project_temp.contact_phone, contract_type: @project_temp.contract_type, country: @project_temp.country, current_phase: @project_temp.current_phase, description: @project_temp.description, detail_title: @project_temp.detail_title, full_contact: @project_temp.full_contact, history: @project_temp.history, investment: @project_temp.investment, latest_information: @project_temp.latest_information, location: @project_temp.location, main_services: @project_temp.main_services, main_supplies: @project_temp.main_supplies, main_teams: @project_temp.main_teams, main_works: @project_temp.main_works, owner: @project_temp.owner, production: @project_temp.production, region: @project_temp.region, responsible: @project_temp.responsible, sector_name: @project_temp.sector_name, title: @project_temp.title, types: @project_temp.types } }
    assert_redirected_to project_temp_url(@project_temp)
  end

  test "should destroy project_temp" do
    assert_difference('ProjectTemp.count', -1) do
      delete project_temp_url(@project_temp)
    end

    assert_redirected_to project_temps_url
  end
end
