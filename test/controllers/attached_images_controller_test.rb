require 'test_helper'

class AttachedImagesControllerTest < ActionController::TestCase
  setup do
    @attached_image = attached_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attached_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attached_image" do
    assert_difference('AttachedImage.count') do
      post :create, attached_image: { alt: @attached_image.alt, image: @attached_image.image }
    end

    assert_redirected_to attached_image_path(assigns(:attached_image))
  end

  test "should show attached_image" do
    get :show, id: @attached_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attached_image
    assert_response :success
  end

  test "should update attached_image" do
    patch :update, id: @attached_image, attached_image: { alt: @attached_image.alt, image: @attached_image.image }
    assert_redirected_to attached_image_path(assigns(:attached_image))
  end

  test "should destroy attached_image" do
    assert_difference('AttachedImage.count', -1) do
      delete :destroy, id: @attached_image
    end

    assert_redirected_to attached_images_path
  end
end
