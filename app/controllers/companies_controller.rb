class CompaniesController < ApplicationController
def get_by_id 
  company = Companies.find_by(id: params[:id])
end
def fetch_all

end
end