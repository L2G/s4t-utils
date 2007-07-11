module S4tUtils

  module_function

  # A StandardError is thrown if the _fact_ the user claims is true
  # is actually false. The _block_ is called to provide the exception
  # message.
  def user_claims(fact, &block)
    raise StandardError.new(block.call) unless fact
  end

  # A StandardError is thrown if the _fact_ the user disputes is
  # nevertheless true. The _block_ is called to provide the exception
  # message.
  def user_disputes(fact, &block)
    user_claims(!fact, &block)
  end
end


