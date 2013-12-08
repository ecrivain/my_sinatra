class RackMiddleware

	def initialize(appl)
    @appl = appl
	end

	def call(env)

		start = Time.now
		status, headers, body = @appl.call(env)

		stop = Time.now

		puts "Response Time: #{stop-start}"

		[status, headers, body]
	end

end