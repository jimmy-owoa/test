require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { contact_address: @project.contact_address, contact_company: @project.contact_company, contact_job: @project.contact_job, contact_name: @project.contact_name, contact_phone: @project.contact_phone, contract_type: @project.contract_type, country: @project.country, current_phase: @project.current_phase, description: @project.description, history: @project.history, investment: @project.investment, latest_information: @project.latest_information, location: @project.location, production: @project.production, region: @project.region, responsible: @project.responsible, sector_name: @project.sector_name, title: @project.title, unit_production: @project.unit_production } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { contact_address: @project.contact_address, contact_company: @project.contact_company, contact_job: @project.contact_job, contact_name: @project.contact_name, contact_phone: @project.contact_phone, contract_type: @project.contract_type, country: @project.country, current_phase: @project.current_phase, description: @project.description, history: @project.history, investment: @project.investment, latest_information: @project.latest_information, location: @project.location, production: @project.production, region: @project.region, responsible: @project.responsible, sector_name: @project.sector_name, title: @project.title, unit_production: @project.unit_production } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
