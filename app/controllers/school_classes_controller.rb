class SchoolClassesController < ApplicationController

    def show 
        @class = SchoolClass.find(params[:id])
    end 

    def new
        @class = SchoolClass.new
    end 

    def create
        sclass = SchoolClass.create(s_params)
        redirect_to sclass
    end 

    def edit
        @class = SchoolClass.find(params[:id])
    end 

    def update
        sclass = SchoolClass.find(params[:id])
        sclass.update(s_params)
        redirect_to sclass
    end

    private

    def s_params
        params.require(:school_class).permit(:title, :room_number)
    end 
end
