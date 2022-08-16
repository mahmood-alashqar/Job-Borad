class JobsController < ApplicationController
#TODO 
def new
  @job_applies=JobApply.new
  @job_applies.save
  render :create_job_post
end

def fetch_jobs
@job=Jobs.all
end
 
def create_job_post
  
  if Current.user.recruiter?
    redirect_to jobs_recruiter_applications_path, notice: "Created Successfully"
       else

        redirect_to root_path, alert:"Your not allowed to see this page !!"
       end
end

def applications_view
  # user=Users.find_by(email: params[:email])
  @job_applies= JobApply.all
  # (:conditions => { :available => true })
  # JobApply.find_by(id: [:user_id])
end


def fetch_applied
  # Jobs.all(:conditions => { :available => true })
  @job= JobApply.all
end

private

def application_params
params.require(:job_apply).permit(:recruiter, :name, :position, :experience, :email, :attachment, :describtion) #specify the exact attribute allowed for the user
end

end