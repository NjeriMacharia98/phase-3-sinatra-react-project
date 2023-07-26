puts "🌱 Seeding spices..."

# Seed your database here
all_feedbacks = ["This hotel is amazing"]

Hotel.create(name: "Serena Hotel", description: "Nairobi", likes: 0)
Hotel.create(name: "Movenpick Hotel", description: "Nairobi", likes: 0)
Hotel.create(name: "Ibis Styles Hotel", description: "Nairobi", likes: 0)

Hotel.create(name: "Four points by Sheraton", description: "Nairobi", likes: 0)
Hotel.create(name: "Panari Hotel", description: "Nairobi", likes: 0)
Hotel.all.each do |hotel|
    Feedback.create(text: all_feedbacks.sample, hotel_id: hotel.id)
end




puts "✅ Done seeding!"
