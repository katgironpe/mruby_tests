class JsonApi
  def initialize
    @text = "HELLO"
  end

  def call(env)
    body = JSON.generate({text: @text})

    [
      200,
      {'Content-Type'   => 'application/json',
       'Content-Length' => body.size},
       [body]
    ]
  end
end

JsonApi.new
