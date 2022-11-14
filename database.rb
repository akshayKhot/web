require 'mysql2'

module Database
  def client
    client = Mysql2::Client.new(
      :host => "localhost", 
      :username => "root", 
      :password => ENV.fetch('DB_PWD'),
      :database => 'laracasts'
    )
  end

  def query(query_string)
    client.query(query_string)
  end
end