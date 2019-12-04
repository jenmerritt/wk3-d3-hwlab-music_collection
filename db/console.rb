require('pry')
require_relative('../models/album')
require_relative('../models/artist')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({
  'name' => "Whitney Houston"
  })

artist1.save()

artist1.name = "Mariah Carey"
artist1.update()

album1 = Album.new({
  'title' => "Whitney",
  'genre' => "Pop",
  'artist_id' => artist1.id()
  })

album1.save()

album1.title = "Greatest Hits"
album1.update()



binding.pry
nil
