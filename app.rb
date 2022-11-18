require 'erb'
require_relative './models/task.rb'

class App
  def call(env)
    headers = { 'Content-Type' => 'text/html' }
    
    title = 'The To-Do List'
    template = ERB.new(template_html)
    tasks = Task.all

    response_html = template.result(binding)
    [200, headers, [response_html]]
  end

  def template_html
    File.read 'views/index.html.erb'
  end
end
