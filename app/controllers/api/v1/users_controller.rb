class Api::V1::UsersController < ApplicationController

	def login
	end

	def logout
	end

	private
	def checkSessionToken
		sessionToken = request.headers['SessionToken']
        if sessionToken.present?
  		    @currentSession =  Serversession.where(token: sessionToken).first
	    	@user = @currentSession.user
        else
            render :json => {:code=>345, :message => langMsg("InvalidSessionToken",@lang)}
	    end
	end
	
end
