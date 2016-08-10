
class Application
  def call(env)
    resp = Rack::Response.new
    current_time = Time.now
    if current_time.hour > 0 && current_time.hour < 12
      resp.write "Good Morning!"
    elsif current_time.hour > 12 && current_time.hour < 18
      resp.write "Good Afternoon!"
    elsif current_time.hour > 18 && current_time.hour < 22
      resp.write "Good Evening!"
    elsif current_time.hour > 22 && current_time.hour < 24
      resp.write "Go to sleep!"
    end
    resp.finish
  end
end
