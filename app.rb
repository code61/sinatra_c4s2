require 'sinatra'
require './helper_functions'
require './person'
require './event'

get '/' do
  erb :index
end


#post '/' do
  #@event   = params[:event]
  #@swimmer = params[:swimmer]
  #@cyclist = params[:cyclist]
  #@runner  = params[:runner]

  #@event_name = event_name(@event)
  #@event_date = event_date(@event)

  #@swimmer_first_name   = first_name(@swimmer[:name])
  #@swimmer_last_name    = last_name(@swimmer[:name])
  #@swimmer_dob          = @swimmer[:dob]

  #@cyclist_first_name   = first_name(@cyclist[:name])
  #@cyclist_last_name    = last_name(@cyclist[:name])
  #@cyclist_dob          = @cyclist[:dob]

  #@runner_first_name    = first_name(@runner[:name])
  #@runner_last_name     = last_name(@runner[:name])
  #@runner_dob           = @runner[:dob]

  #erb :tickets
#end

 post '/' do
   @event   = Event.new(params[:event])
   @swimmer = Person.new(params[:swimmer])
   @cyclist = Person.new(params[:cyclist])
   @runner  = Person.new(params[:runner])

   erb :tickets
 end



