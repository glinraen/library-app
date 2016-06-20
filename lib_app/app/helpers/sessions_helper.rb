module SessionsHelper
	def login(user)
		session[:user_id] = user_id
		@current_user = user
	end

	def current_user
		@current_user ||= User.find(session[:user_id])
	end

	def loged_in?
		if current_user == nil
		redirect_to "/sign_in"
	end

	def logout
		@current_user = session[:user_id] = nil
	end
end
