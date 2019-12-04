require('pry')
require_relative('../models/album')
require_relative('../models/artist')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({
  'name' => "Whitney Houston"
  })

artist1.save()

album1 = Album.new({
  'title' => "Whitney",
  'genre' => "Pop",
  'artist_id' => artist1.id()
  })

album1.save()

binding.pry
nil
