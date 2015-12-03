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
    
    def send_msg
       require 'unirest'
       msg = "#{params[:message]} --님의 전화번호는 #{}입니다"

        response = Unirest.post "http://sms.cycorld.com",
          parameters:{
            :token => "RuGkgkoUDM5Gc2FrFQnBNFUS",
            :dest_phone => "01089857930",
            :dest_name => params[:dest_name],
            :subject => params[:subject],
            :msg_body => msg
          }
        
        render text: response.body
    end
end



