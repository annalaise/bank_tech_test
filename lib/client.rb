class Client

  def self.create
    @client = Client.new
  end

  def self.instance
    @client
  end

  def self.exist?
     self.class == Object 
  end

end
