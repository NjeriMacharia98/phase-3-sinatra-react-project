class ApplicationController < Sinatra::Base


  set :default_content_type, 'application/json'
  
  # Add your routes here
  
  
     
     get "/hotels" do
    hotels = Hotel.all 
    hotels.to_json(include: :feedbacks)
  
  end

  get 'feedbacks/:id' do 
    
    feedback= Feedback.find(params[:id])
  end
  #
  post "/hotels" do 
    new_hotel = Hotel.create(name: params[:name], description: params[:description], likes: params[:likes])
    new_hotel.to_json
  end

  #
    post '/hotels/:hotel_id/feedbacks' do 
    hotel = Hotel.find_by(id: params[:hotel_id])
    new_feedback = hotel.feedbacks.create(text: params[:text])
    new_feedback.to_json(include: :hotel)

    end


    
  patch '/hotels/:id' do 
  hotel = Hotel.find_by(id: params[:id])
  hotel.update(likes: params[:likes])
  hotel.to_json(include: :feedbacks)

  end

 
 delete '/feedbacks/:id' do 
    feedback = Feedback.find_by(id: params[:id])
    feedback.destroy
    feedback.to_json
  end

end