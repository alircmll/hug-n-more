require "faker"

20.times do
  user = User.new({
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    hugger: true,
    password: "azerty",
    address: "#{Faker::Address.city}, #{Faker::Address.country}"
  })
  
  user.save
  
  2.times do
    price = (10..25).to_a    
    cat = (0..3).to_a
    
    hug = Hug.new({
        title: "Hug to #{Faker::TvShows::GameOfThrones.character}",
        description: Faker::TvShows::BojackHorseman.quote,
        price: price.sample,      
        category: cat.sample,
        user: user
    })
    hug.save

    #p hug.errors
  end

  

end