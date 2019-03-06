class Ability
		include CanCan::Ability

		def initialize(user)
			user ||= User.new #guest user

			if user.adm?
				can :manage, :all
      elsif user.email?
        can :read, :all
			else
				can :read, Produto do |x|
          x.try(:user) == user
        end
				can :create, Produto do |x|
          x.try(:user) == user
        end
				can :update, Produto do |x|
					x.try(:user) == user
				end
				can :destroy, Produto do |x|
					x.try(:user) == user
				end
			end
		end
end
