class Message
	attr_accessor :body, :conversation, :user_id
	def initialize
		@body = 'Escutasse a noticia? Tirei 10 em Engenharia de Software'
		@conversation = '1'
		@user_id = '2'
	end
end