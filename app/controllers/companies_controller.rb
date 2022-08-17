class CompaniesController < ApplicationController
  
def new
  @companies=Companies.new
end
def get_by_id 
  company = Companies.find_by(id: params[:id])
end
def fetch_all
end
def test
  @companies=Companies.all
end


end