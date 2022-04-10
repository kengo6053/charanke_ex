class PracticesController < ApplicationController
    def index
        @practices = Practice.all.order(date: "DESC")
        if params[:search] == nil
            @practices= Practice.all.order(date: "DESC")
        elsif params[:search] == ''
            @practices= Practice.all.order(date: "DESC")
        else
            #部分検索
            @practices = Practice.where("body LIKE ? ",'%' + params[:search] + '%')
        end
        if params[:event].present?
            @practices = @practices.get_by_event params[:event]
        end
    end

    def new
        @practice = Practice.new
    end

    def create
        practice = Practice.new(practice_params)
        if practice.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @practice = Practice.find(params[:id])
    end

    def destroy
        practice = Practice.find(params[:id])
        practice.destroy
        redirect_to action: :index
    end
    
    private
    def practice_params
        params.require(:practice).permit(:date, :event, :body, :image, :image1, :image2, :image3, :image4)
    end
end
