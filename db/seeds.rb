#here is where I will write the seed data

anderson = User.create(name: "Anderson", email: "anderson@gmail.com", location: "Canada Water", password: "ihavemuscles") 
ebisiemen = User.create(name: "Ebisiemen", email: "ebisiemen@gmail.com", location: "Highams Park", password: "ilovefrogs") 
sarah = User.create(name: "Sarah", email: "sarah@gmail.com", location: "Highams Park", password: "ilovemovies") 

Post.create(title: "Brand New Microwave", description: "I got the wrong microwave and can't return it, so I want to give it away.", image_url: "https://webimg.secondhandapp.com/w-i-mgl/5f393393c792552befd22f98", user_id: anderson.id, date__available: DateTime.strptime('09/14/2020', '%m/%d/%Y'))
Post.create(title: "Yeezy trainers", description: "Got the wrong size", image_url: "https://i2-prod.birminghammail.co.uk/incoming/article11445135.ece/ALTERNATES/s615b/JS92055408.jpg", user_id: ebisiemen.id, date__available: DateTime.strptime('10/06/2020', '%m/%d/%Y'))
Post.create(title: "House of CB dress", description: "Doesn't fit anymore", image_url: "https://i.pinimg.com/originals/ae/98/30/ae9830f13352394de9ba4f5a524f2ff5.jpg", user_id: sarah.id, date__available: DateTime.strptime('07/18/2021', '%m/%d/%Y'))

