require "http/server"

# 注释用 # 只支持单行注释

# # 简单的案例
# server = HTTP::Server.new(8080) do |context|
# 	context.response.content_type = "text/plain"
# 	context.response.print "Hello World! "
# end

# puts "Listening on http://127.0.0.1:8080"
# server.listen

# # 不绑定localhost地址
# server = HTTP::Server.new("0.0.0.0", 4040) do |context|
# 	context.response.content_type = "text/plain"
# 	context.response.print "With non-localhost bind address"
# end

# puts "Listening on http://0.0.0.0:4040"
# server.listen

# # 添加处理程序
# HTTP::Server.new("127.0.0.1", 8080, [
# 	HTTP::ErrorHandler.new, # 错误处理
# 	HTTP::LogHandler.new, # 日志处理
# 	HTTP::CompressHandler.new, # 压缩处理
# 	HTTP::StaticFileHandler.new("."), # 静态文件处理
# ]).listen

# 添加处理程序和代码块
server = HTTP::Server.new("0.0.0.0", 8080, [
		HTTP::ErrorHandler.new,
		HTTP::LogHandler.new,
	]) do |context|
	context.response.content_type = "text/plain"
	context.response.print "Hello World"
end
puts "Listening on http://0.0.0.0:8080"
server.listen

# Nil 类型 就只有一个值 nil
# Bool 类型 只有两个值 true 或者 false
