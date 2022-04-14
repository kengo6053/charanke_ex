class TopsController < ApplicationController
    def index
        @tops = Top.all.order(created_at: "DESC")
    end

    def new
        @top = Top.new
    end

    def Practice
    end

    def create
        top = Top.new(top_params)
        if top.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @top = Top.find(params[:id])
    end
    
    private
    def top_params
        params.require(:top).permit(:date, :body, :image)
    end
end