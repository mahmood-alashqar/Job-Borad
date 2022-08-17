class JobApplyController < ApplicationController
    def get_by_id 
        company = JobApply.find_by(id: params[:id])
      end
end