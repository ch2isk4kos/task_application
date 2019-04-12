class AdsController < ApplicationController

    before_action :find_ad, only: [:show, :edit, :update, :destroy]

    def index
        @ads = Ad.all.order('created_at DESC')
    end

    def show

    end

    def new
        @ad = Ad.new
    end

    def create
        @ad = Ad.new(ad_params)

        if @ad.save
            redirect_to ad_path(@ad)
        else
            render 'new'
        end
    end

    def edit

    end

    def update
    end

    def destroy

    end

    private

    def find_ad
        @ad = Ad.find(params[:id])
    end

    def ad_params
        params.require(:ad).permit(:title, :description, :company, :url)
    end
end
