Genre.destroy_all
Song.destroy_all
Artist.destroy_all
Album.destroy_all
User.destroy_all
Mixtape.destroy_all

g1 = Genre.create(:name => 'Post punk')
g2 = Genre.create(:name => 'Christian Hip Hop')
g3 = Genre.create(:name => 'Jazz')

s1 = Song.create(:name => 'When I Reach For My Revolver')
s2 = Song.create(:name => 'Carioca')
s3 = Song.create(:name => 'Summertime Clothes')

a1 = Album.create(:name => 'Vs')
a2 = Album.create(:name => 'Slaughter Standards')
a3 = Album.create(:name => 'Merriweather Post Pavilion')

r1 = Artist.create(:name => 'Mission of Burma')
r2 = Artist.create(:name => 'John and Darlene Edwards')
r3 = Artist.create(:name => 'Animal Collective')

u1 = User.create(:username => 'peter', :avatar => 'x', :password => 'password', :password_confirmation => 'password')
u2 = User.create(:username => 'cy', :avatar => 'x', :password => 'password', :password_confirmation => 'password')
u3 = User.create(:username => 'craigsy', :avatar => 'x', :password => 'password', :password_confirmation => 'password')

m1 = Mixtape.create(:name => 'Work')
m2 = Mixtape.create(:name => 'Angry')
m3 = Mixtape.create(:name => 'Cocktail Hour')

r1.songs << s1
r2.songs << s2
r3.songs = [s3]

a1.songs << s1
a2.songs = [s2]
s2.album = a3

g1.songs << s1
g2.songs = [s3]
s2.genres << g3

u1.mixtapes << m1 << m2
u2.mixtapes = [m3]

m1.songs << s2 << s3
m2.songs << s1
m3.songs = [s2]
