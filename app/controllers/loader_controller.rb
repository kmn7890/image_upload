class LoaderController < ApplicationController
    def index
        @s3image = S3image.all
    end
    
    def upload 
        @s3image= S3image.new
        @s3image.my_image = params[:image_file]
        @s3image.save
        redirect_to '/'
    end
end
