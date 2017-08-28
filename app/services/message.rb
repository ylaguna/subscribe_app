class Message
  attr_accessor :hash

  def initialize(message)
    self.hash = { message: message }
  end

  def self.success_message(message)
    message = Message.new('Gotcha! You winned a prize, see your email for more information!')
    message.hash[:status] = :notice
    message.hash
  end

  def self.failed_message
    message = Message.new('Nope! Try again tommorow? ;)')
    message.hash[:status] = :info
    message.hash
  end

  def self.error_message(message)
    message = Message.new(message)
    message.hash[:status] = :error
    message.hash
  end
end
