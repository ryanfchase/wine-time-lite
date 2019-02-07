require 'test_helper'

class JigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jig = jigs(:one)
  end

  test "should get index" do
    get jigs_url
    assert_response :success
  end

  test "should get new" do
    get new_jig_url
    assert_response :success
  end

  test "should create jig" do
    assert_difference('Jig.count') do
      post jigs_url, params: { jig: { body: @jig.body, name: @jig.name } }
    end

    assert_redirected_to jig_url(Jig.last)
  end

  test "should show jig" do
    get jig_url(@jig)
    assert_response :success
  end

  test "should get edit" do
    get edit_jig_url(@jig)
    assert_response :success
  end

  test "should update jig" do
    patch jig_url(@jig), params: { jig: { body: @jig.body, name: @jig.name } }
    assert_redirected_to jig_url(@jig)
  end

  test "should destroy jig" do
    assert_difference('Jig.count', -1) do
      delete jig_url(@jig)
    end

    assert_redirected_to jigs_url
  end
end
