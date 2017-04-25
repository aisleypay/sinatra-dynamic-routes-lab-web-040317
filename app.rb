require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]

    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i**2}"
  end

  get '/say/:number/:phrase' do
    @count = params[:number]
    @phrase = params[:phrase]
    string = ""
    @count.to_i.times {string +=  "#{@phrase}\n"}
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]

    case @operation
    when 'add'
      "#{params[:number1].to_i + params[:number2]}"
    when 'subtract'
      "#{params[:number1].to_i - params[:number2]}"
    when 'multiply'
      "#{params[:number1].to_i * params[:number2]}"
    when 'divide'
      "#{params[:number1].to_i / params[:number2]}"
    end

  end

end
