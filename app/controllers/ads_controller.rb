class AdsController < ApplicationController

    before_action :find_ad, only: [:show, :edit, :update, :destroy]

    def index
        if params[:category].blank?
            @ads = Ad.all.order('created_at DESC')
        else
            @category_id = Category.find_by(name: params[:category]).id
            @ads = Ad.where(category_id: @category_id).order('created_at DESC')
        end
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
        if @ad.update(ad_params)
            redirect_to @ad
        else
            render 'new'
        end
    end

    def destroy
        @ad.destroy
        redirect_to root_path
    end

    private

    def find_ad
        @ad = Ad.find(params[:id])
    end

    def ad_params
        params.require(:ad).permit(:title, :description, :company, :url, :category_id)
    end
end
