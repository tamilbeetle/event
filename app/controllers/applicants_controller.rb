class ApplicantsController < ApplicationController
    def index
           @applicants = Applicant.all
    end
    def new
          @applicant = Applicant.new
    end
    def create
        @applicant=Applicant.new(applicant_params)
       if  @applicant.save
         redirect_to @applicant
     else
         render 'new'
    end
end
    def show
        @applicant = Applicant.find(params[:id])
       
    end
    private
    def applicant_params
        params.require(:applicant).permit(:title, :name, :college_name, :dept,  :year)
    end
end
