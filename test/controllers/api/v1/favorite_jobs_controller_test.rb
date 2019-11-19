require "test_helper"

class Api::V1::FavoriteJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_job = favorite_jobs(:one)
  end

  test "should get index" do
    get api_v1_favorite_jobs_url, as: :json
    assert_response :success
  end

  test "should create favorite_job" do
    assert_difference("FavoriteJob.count") do
      post api_v1_favorite_jobs_url, params: { favorite_job: { metadata: @favorite_job.metadata, slug: @favorite_job.slug, url: @favorite_job.url } }, as: :json
    end

    assert_response 201
  end

  test "should show favorite_job" do
    get api_v1_favorite_job_url(@favorite_job), as: :json
    assert_response :success
  end

  test "should update favorite_job" do
    patch api_v1_favorite_job_url(@favorite_job), params: { favorite_job: { metadata: @favorite_job.metadata, slug: @favorite_job.slug, url: @favorite_job.url } }, as: :json
    assert_response 200
  end

  test "should destroy favorite_job" do
    assert_difference("FavoriteJob.count", -1) do
      delete api_v1_favorite_job_url(@favorite_job), as: :json
    end

    assert_response 204
  end
end
