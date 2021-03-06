require 'test_helper'

class CachesControllerTest < ActionController::TestCase
  setup do
    @cach = caches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cach" do
    assert_difference('Cache.count') do
      post :create, cach: { address_space: @cach.address_space, block_bits: @cach.block_bits, block_size: @cach.block_size, cache_size: @cach.cache_size, lines: @cach.lines, name: @cach.name, set_bits: @cach.set_bits, sets: @cach.sets, tag_bits: @cach.tag_bits }
    end

    assert_redirected_to cach_path(assigns(:cach))
  end

  test "should show cach" do
    get :show, id: @cach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cach
    assert_response :success
  end

  test "should update cach" do
    patch :update, id: @cach, cach: { address_space: @cach.address_space, block_bits: @cach.block_bits, block_size: @cach.block_size, cache_size: @cach.cache_size, lines: @cach.lines, name: @cach.name, set_bits: @cach.set_bits, sets: @cach.sets, tag_bits: @cach.tag_bits }
    assert_redirected_to cach_path(assigns(:cach))
  end

  test "should destroy cach" do
    assert_difference('Cache.count', -1) do
      delete :destroy, id: @cach
    end

    assert_redirected_to caches_path
  end
end
