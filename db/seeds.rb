# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.destroy_all
Artist.destroy_all

artist_1 = Artist.create!(name: "Camila Cabello",remote_image_url: "http://res.cloudinary.com/kyriakos/image/upload/v1510397023/camila-cabello-debut-album-755871a9-3783-475d-9ccf-394686fdb61d_vepjtq.jpg")

song_1 = Song.create!(name: "Havana",duration: 402, link: "https://www.youtube.com/embed/BQ0mxQXmLsk", artist: artist_1)


artist_2 = Artist.create!(name: "Charlie Puth",remote_image_url: "http://res.cloudinary.com/kyriakos/image/upload/v1510395463/9e9b4c1dd8d6c53de89f5ff5056bf3de.1000x1000x1_eooegh.jpg")

song_2 = Song.create!(name: "We don't talk anymore",duration: 230, link: "https://www.youtube.com/embed/3AtDnEC4zak", artist: artist_2)
song_3 = Song.create!(name: "Attention", duration: 231, link: "https://www.youtube.com/embed/nfs8NYg7yQM?list=PLyUT0JApKHiPob4_PkY55yp4C5weNmLYO", artist: artist_2)

artist_3 = Artist.create!(name: "Shawn Mendes",remote_image_url: "http://res.cloudinary.com/kyriakos/image/upload/v1510397095/web_header_shawnmendes_ewcqae.jpg")

song_5 = Song.create!(name: "Mercy",duration: 249, link: "https://www.youtube.com/embed/KkGVmN68ByU", artist: artist_3)
song_6 = Song.create!(name: "There's Nothing Holding Me Back",duration: 237, link: "https://www.youtube.com/embed/dT2owtxkU8k", artist: artist_3)
song_7 = Song.create!(name: "Treat You Better",duration: 256, link: "https://www.youtube.com/embed/lY2yjAdbvdQ", artist: artist_3)


artist_4 = Artist.create!(name: "Ed Sheeran",remote_image_url: "http://res.cloudinary.com/kyriakos/image/upload/v1510397144/ed_sheeran_y3sgmk.jpg")

song_8 = Song.create!(name: "Shape of You",duration: 263, link: "https://www.youtube.com/embed/JGwWNGJdvx8", artist: artist_4)
song_9 = Song.create!(name: "Thinking Out Loud",duration: 296, link: "https://www.youtube.com/embed/lp-EO5I60KA?list=PLaq655wqcKDnUvTOizhqwNCiiF_grL1vh", artist: artist_4)
song_10 = Song.create!(name: "Galway Girl",duration: 199, link: "https://www.youtube.com/embed/87gWaABqGYs?list=PLaq655wqcKDnUvTOizhqwNCiiF_grL1vh", artist: artist_4)


artist_5 = Artist.create!(name: "Demi Lovato",remote_image_url: "http://res.cloudinary.com/kyriakos/image/upload/v1510397190/Demi-Lovato-press-photo-cr-Dennis-Leupold-2017-billboard-1548_fjdkek.jpg")

song_11 = Song.create!(name: "Sorry Not Sorry",duration: 230, link: "https://www.youtube.com/embed/-MsvER1dpjM", artist: artist_5)
song_12 = Song.create!(name: "Heart Attack",duration: 215, link: "https://www.youtube.com/embed/AByfaYcOm4A?list=PLuvyXsl3VC6SJySlnt4aaUs38MfW1mVCG", artist: artist_5)
song_13 = Song.create!(name: "Confident",duration: 214, link: "https://www.youtube.com/embed/cwLRQn61oUY?list=PLuvyXsl3VC6SJySlnt4aaUs38MfW1mVCG", artist: artist_5)
