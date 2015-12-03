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
       msg = "안녕하세요 #{params[:message]}수업 자료 좀 받을 수 있을까요? 밥한끼 살게요! 저는 다음주 #{params[:message]} 시간 돼요 ^^ 언제 시간 괜찮으세요?"

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



