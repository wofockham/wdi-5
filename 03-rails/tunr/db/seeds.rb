Genre.destroy_all
Song.destroy_all
Artist.destroy_all
Album.destroy_all
User.destroy_all
Mixtape.destroy_all

g1 = Genre.create(:name => 'Post punk')
g2 = Genre.create(:name => 'Christian Hip Hop')
g3 = Genre.create(:name => 'Jazz')

s1 = Song.create(:title => 'When I Reach For My Revolver')
s2 = Song.create(:title => 'Carioca')
s3 = Song.create(:title => 'Summertime Clothes')

a1 = Album.create(:name => 'Vs')
a2 = Album.create(:name => 'Slaughter Standards')
a3 = Album.create(:name => 'Merriweather Post Pavilion')

r1 = Artist.create(:name => 'Mission of Burma')
r2 = Artist.create(:name => 'John and Darlene Edwards')
r3 = Artist.create(:name => 'Animal Collective')

u1 = User.create(:name => 'peter')
u2 = User.create(:name => 'cy')
u3 = User.create(:name => 'craigsy')

m1 = Mixtape.create(:name => 'Work')
m2 = Mixtape.create(:name => 'Angry')
m3 = Mixtape.create(:name => 'Cocktail Hour')
