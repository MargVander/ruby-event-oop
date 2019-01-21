class User
	  attr_accessor :email, :name
	  @@user_all = []
	  
	  def initialize(email_to_save)
	  	@email = email_to_save
	  	@@user_all << self

	  end

	  def update_name(name_to_update)
	  	@name = name_to_update
	  	@@user_all << self
	  end

	  def self.all
	  	@@user_all.uniq
	  end

	  def self.find_by_email(email)
	  	@@user_all.each do |user|
	  		return user if user.email == email
	  	end
	  end

end