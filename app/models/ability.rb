class Ability
	include CanCan::Ability

	  def initialize(user)
		user ||= User.new 

		if user.role? :guest
		
		end

		if user.role? :manager
		  
		end


		if user.role? :admin
		  can :manage, User

		end
	  end
	end 
