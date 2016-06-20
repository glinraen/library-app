class User < ActiveRecord::Base
	has_secure_password

	def self.confirm(params)
		@user = User.find_by({email: params[email]})
		@user.try(:authenicate, params[:password])
	end
end
