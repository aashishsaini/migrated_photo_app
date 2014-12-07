require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { acronym: @project.acronym, author: @project.author, budget: @project.budget, close: @project.close, code: @project.code, color: @project.color, copyright: @project.copyright, edition: @project.edition, free_text: @project.free_text, image_assets: @project.image_assets, imprint: @project.imprint, imprint_id: @project.imprint_id, isbn: @project.isbn, level: @project.level, media_assets: @project.media_assets, number: @project.number, price: @project.price, print_run: @project.print_run, printer: @project.printer, product_type: @project.product_type, revised_close: @project.revised_close, revised_printer: @project.revised_printer, revised_start: @project.revised_start, series: @project.series, start: @project.start, text_assets: @project.text_assets, title: @project.title, trim_size: @project.trim_size }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { acronym: @project.acronym, author: @project.author, budget: @project.budget, close: @project.close, code: @project.code, color: @project.color, copyright: @project.copyright, edition: @project.edition, free_text: @project.free_text, image_assets: @project.image_assets, imprint: @project.imprint, imprint_id: @project.imprint_id, isbn: @project.isbn, level: @project.level, media_assets: @project.media_assets, number: @project.number, price: @project.price, print_run: @project.print_run, printer: @project.printer, product_type: @project.product_type, revised_close: @project.revised_close, revised_printer: @project.revised_printer, revised_start: @project.revised_start, series: @project.series, start: @project.start, text_assets: @project.text_assets, title: @project.title, trim_size: @project.trim_size }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
