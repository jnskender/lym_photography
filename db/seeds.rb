
  # Create 3 albums in children category---------------------------------------
  Album.create!(
    title: 'Rocking Horse',
    location: 'Illinois',
    category: 'children'
  )
  Album.create!(
    title: 'Apple Fields',
    location: 'Illinois',
    category: 'children'
  )
  Album.create!(
    title: 'Festival',
    location: 'Illinois',
    category: 'children'

  )
  # Create 2 albums in wedding category -------------------------------------
  Album.create!(
    title: 'Mansion',
    location: 'Illinois',
    category: 'weddings'
  )
  Album.create!(
    title: 'Outdoor Wedding',
    location: 'Illinois',
    category: 'weddings'
  )
  # Create 2 albums in potrait category -------------------------------------
  Album.create!(
    title: 'Norma on Bridge',
    location: 'Illinois',
    category: 'portraits'
  )
  Album.create!(
    title: 'City Life',
    location: 'Illinois',
    category: 'portraits'
  )
  # Seed sample photos into each children albums
  # Rocking Horse -----------------------------------------------------------------
  Photo.create!(
    title: 'Rocking horse smile',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/07/31.jpg',
    album_id: Album.find_by_title('Rocking Horse').id
  )
  Photo.create!(
    title: 'Rocking horse grainy',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/07/41.jpg',
    album_id: Album.find_by_title('Rocking Horse').id
  )
  Photo.create!(
    title: 'Smiling in the tree',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/07/51.jpg',
    album_id: Album.find_by_title('Rocking Horse').id
  )
  Photo.create!(
    title: 'Laughing in the fields',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/07/111.jpg',
    album_id: Album.find_by_title('Rocking Horse').id
  )
  # Apple Fields--------------------------------------------------------------------
  Photo.create!(
    title: 'I have two!',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2013/10/12.jpg',
    album_id: Album.find_by_title('Apple Fields').id
  )
  Photo.create!(
    title: 'Family',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2013/10/25.jpg',
    album_id: Album.find_by_title('Apple Fields').id
  )
  # Festival
  Photo.create!(
    title: 'Painting',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2013/06/F3.jpg',
    album_id: Album.find_by_title('Festival').id
  )
  Photo.create!(
    title: 'Side Smile',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2013/06/F1.jpg',
    album_id: Album.find_by_title('Festival').id
  )
  # Seeds for Weddings
  #   Mansion
  Photo.create!(
    title: 'Side Smile',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2016/07/IMG_5675.jpg',
    album_id: Album.find_by_title('Mansion').id
  )
  Photo.create!(
    title: 'Side Smile',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2016/07/IMG_5885-1024x683.jpg',
    album_id: Album.find_by_title('Mansion').id
  )
  Photo.create!(
    title: 'Groom',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2016/07/IMG_5936-1024x683.jpg',
    album_id: Album.find_by_title('Mansion').id
  )
  # Outdoor Wedding
  Photo.create!(
    title: 'Holding Hands B&W',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/07/3.jpg',
    album_id: Album.find_by_title('Outdoor Wedding').id
  )
  Photo.create!(
    title: 'Bride and Groom',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/07/16.jpg',
    album_id: Album.find_by_title('Outdoor Wedding').id
  )
  Photo.create!(
    title: 'Bride',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/07/16.jpg',
    album_id: Album.find_by_title('Outdoor Wedding').id
  )
  # Seed for Potraits
  #Norma on Bridge
  Photo.create!(
    title: 'Bridge',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/05/03.jpg',
    album_id: Album.find_by_title('Norma on Bridge').id
  )
  Photo.create!(
    title: 'Beetlejuice',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/05/091.jpg',
    album_id: Album.find_by_title('Norma on Bridge').id
  )
  #City Life
  Photo.create!(
    title: 'Coffee',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/05/a01-9.jpg',
    album_id: Album.find_by_title('City Life').id
  )
  Photo.create!(
    title: 'Park Bench',
    remote_image_url: 'http://lymphotography.com/wp-content/uploads/2014/05/a01-4.jpg',
    album_id: Album.find_by_title('City Life').id
  )
