class User < ActiveRecord::Base

	#database linking
	#has_many :pages

	#lambda expression
	# sorted is the custom name we can use in the controller
	scope :sorted, lambda { order("users.id ASC")}

	has_attached_file :avatar, styles: { 
		large: "450x450>", 
		medium: "300x300>",
		proimg: "300x300>", 
		thumb: "100x100>", 
		small: "50x50>" },
		default_url: 'missing_:style.png'
		

	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


end
