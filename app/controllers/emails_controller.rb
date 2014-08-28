class EmailsController < ApplicationController
	
	def create()
		opt = {to: params[:to], subject: params[:subject] , body: params[:body]}
		byebug
		if( opt[:to].present? and (opt[:subject].present? || opt[:body].present?) )
			ApiMailer.send_email(opt).deliver;
			render status: 201
		else
			render status: 400, json: {code: 400, message: "Bad request, to and (body or subject) parameters must be present"} 
		end
				
	end

end
