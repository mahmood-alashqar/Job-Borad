class MainController < ApplicationController
def index
    @job=Jobs.all
end
end