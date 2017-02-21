class Ship
	attr_accessor :name, :type, :booty
	
	@@all = []

	def initialize(name, type, booty)
		@name = name
		@type = type
		@booty = booty
		@@all << self
	end

	def self.all
		@@all
	end

	def self.clear
		@@all.clear
		# redef_without_warning(ALL, [])
	end

	# def redef_without_warning(const, value)
 #    self.class.send(:remove_const, const) if self.class.const_defined?(const)
 #    self.class.const_set(const, value)
 #  end

end