require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
  end 

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}" 
  end 

  
  get '/say/:number/:phrase' do
    result = ''
    params[:number].to_i.times do
      result += params[:phrase]
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    @result = 0

    if @operation == "add"
      @result = "#{@num1 + @num2}"
    elsif @operation == "subtract"
      @result = "#{@num1 - @num2}"
    elsif @operation == "multiply"
      @result = "#{@num1 * @num2}"
    elsif @operation == "divide"
      @result = "#{@num1 / @num2}"
    end 

  end 
end 
