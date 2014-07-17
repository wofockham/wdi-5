User.destroy_all
Priority.destroy_all

u1 = User.create :name => 'usera', :email => 'ua@user.com', :password => 'a', :password_confirmation => 'a'
u2 = User.create :name => 'userb', :email => 'ub@user.com', :password => 'b', :password_confirmation => 'b'
u3 = User.create :name => 'userc', :email => 'uc@user.com', :password => 'c', :password_confirmation => 'c'
u4 = User.create :name => 'userd', :email => 'ud@user.com', :password => 'd', :password_confirmation => 'd'

p1 = Priority.create :name => 'Urgent', :color => '#ff0000', :urgency => 10
p2 = Priority.create :name => 'Somewhat urgent', :color => '#ff00aa', :urgency => 8
p3 = Priority.create :name => 'Unimportant', :color => '#00ff00', :urgency => 2

u1.priorities << p1 << p2 << p3

t1 = Task.create :title => 'Kill all student', :description => 'Kill them all', :address => '56 - 58 York Street Sydney'
t2 = Task.create :title => 'Buy milk', :description => 'Full cream', :address => 'St Leonards Station, NSW'
t3 = Task.create :title => ''

