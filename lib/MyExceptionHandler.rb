require "MyExceptionHandler/version"

class MyExceptionHandler
  def initialize(app)
    @app = app
  end

  def call(env)
    @app.call(env)
  rescue
    [500, { 'Content-Type' => 'application/json' }, JSON.dump(message: 'unexpected error')]
  end
end
