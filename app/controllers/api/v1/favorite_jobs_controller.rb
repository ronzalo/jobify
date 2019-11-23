module Api
  module V1
    class FavoriteJobsController < ApplicationController
      before_action :set_favorite_job, only: :show

      # GET /api/v1/favorite_jobs
      def index
        @favorite_jobs = FavoriteJob.all

        render json: @favorite_jobs
      end

      # GET /api/v1/favorite_jobs/1
      def show
        render json: @favorite_job
      end

      # POST /api/v1/favorite_jobs
      def create
        @favorite_job = FavoriteJob.new(favorite_job_params)

        if @favorite_job.save
          render json: @favorite_job, status: :created, location: [:api, :v1, @favorite_job]
        else
          render json: @favorite_job.errors, status: :unprocessable_entity
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_favorite_job
        @favorite_job = FavoriteJob.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def favorite_job_params
        params.require(:favorite_job).permit(:slug, :url, metadata: {})
      end
    end
  end
end
