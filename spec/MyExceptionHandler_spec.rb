require 'json'
require 'spec_helper'

describe MyExceptionHandler do
  it 'has a version number' do
    expect(MyExceptionHandler::VERSION).not_to be nil
  end

  include Rack::Test::Methods

  let(:app) do
    MyExceptionHandler.new(->(env) { raise 'unexpected error' })
  end

  it 'catch an exception and return 500 with json message' do
    get '/'
    expect(last_response.status).to eq 500
    expect(JSON.parse(last_response.body)["message"]).to eq "unexpected error"
  end
end
