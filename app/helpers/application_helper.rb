module ApplicationHelper

	def full_name(user)
  		"#{user.last_name} #{user.first_name}"
  	end

  	def full_address(address)
  		"#{address.prefectures} #{address.city} #{address.block}"
  	end
end
