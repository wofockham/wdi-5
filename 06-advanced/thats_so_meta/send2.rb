class Superhero

  def initialize(hero)
    hero.each_key do |attribute|
      send("#{attrib}=") = hero[attrib]
    end
  end
end

batman = {
  :name => 'Batman',
  :secret_identity => 'Bruce Wayne',
  :hideout => 'Batcave',
  :occupation => 'Billionaire playboy',
  :weakness => 'Dead parents',
  :romance => 'Catwoman',
  :butler => 'Alfred',
  :current_sidekick => 'Robin the 5th'
}

b = Superhero.new batman
