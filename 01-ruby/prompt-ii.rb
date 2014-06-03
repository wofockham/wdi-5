#  _______  _______           _______  _______    _______  _______    _______
# (  ____ )(  ___  )|\     /|(  ____ \(  ____ )  (  ___  )(  ____ \  / ___   )
# | (    )|| (   ) || )   ( || (    \/| (    )|  | (   ) || (    \/  \/   )  |
# | (____)|| |   | || | _ | || (__    | (____)|  | |   | || (__          /   )
# |  _____)| |   | || |( )| ||  __)   |     __)  | |   | ||  __)       _/   /
# | (      | |   | || || || || (      | (\ (     | |   | || (         /   _/
# | )      | (___) || () () || (____/\| ) \ \__  | (___) || )        (   (__/\
# |/       (_______)(_______)(_______/|/   \__/  (_______)|/         \_______/

#  _______           _______  _______  _______  _______  _______
# (  ____ \|\     /|(  ____ \(  ____ \(  ____ \(  ____ \(  ____ )
# | (    \/| )   ( || (    \/| (    \/| (    \/| (    \/| (    )|
# | |      | |   | || (__    | (_____ | (_____ | (__    | (____)|
# | | ____ | |   | ||  __)   (_____  )(_____  )|  __)   |     __)
# | | \_  )| |   | || (            ) |      ) || (      | (\ (
# | (___) || (___) || (____/\/\____) |/\____) || (____/\| ) \ \__
# (_______)(_______)(_______/\_______)\_______)(_______/|/   \__/

# Prompt the user and read their answer.
print "What is 2 to the 16th power? " # No need for a new line.
answer = gets.to_i

until (2 ** 16 == answer)
  if (answer > 2 ** 16)
    print "Wrong, guess lower! "
  else
    print "Wrong, guess higher! "
  end
  answer = gets.to_i
end

puts "Good job, you're a champ"

 #                                             ____
 #   ___                                      .-~. /_"-._
 #  `-._~-.                                  / /_ "~o\  :Y
 #      \  \                                / : \~x.  ` ')
 #       ]  Y                              /  |  Y< ~-.__j      -------------------------
 #      /   !                        _.--~T : l  l<  /.-~      /                         \
 #     /   /                 ____.--~ .   ` l /~\ \<|Y   -----\  JENN SCHIFFER IS NICE   |
 #    /   /             .-~~"        /| .    ',-~\ \L|        \    WOWOWOWOWOWOWOWOW     /
 #   /   /             /     .^   \ Y~Y \.^>/l_   "--'         \________________________/
 #  /   Y           .-"(  .  l__  j_j l_/ /~_.-~    .
 # Y    l          /    \  )    ~~~." / `/"~ / \.__/l_
 # |     \     _.-"      ~-{__     l  :  l._Z~-.___.--~
 # |      ~---~           /   ~~"---\_  ' __[>
 # l  .                _.^   ___     _>-y~
 #  \  \     .      .-~   .-~   ~>--"  /
 #   \  ~---"            /     ./  _.-'
 #    "-.,_____.,_  _.--~\     _.-~
 #                ~~     (   _}
 #                        `. ~(
 #                          )  \
 #                         /,`--'~\--'
