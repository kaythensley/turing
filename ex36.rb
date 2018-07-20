def start
  puts "You are in an elaborately furnished anteroom."
  puts "You have arrived fashionably late to an insufferable society party."
  puts "You are our heroine, of course. A strong female character who flouts convention and is not quite pretty but irresistable to most people."
  puts "There is a door on your right and one on your left."
  puts "Which one do you choose?"

  print "> "
  choice = $stdin.gets.chomp.downcase

  if choice == "left"
    salon
  elsif choice == "right"
    conservatory
  else
    over("Your interfering aunt finds you and makes you dance with insufferable boors all night.")
  end
end


def salon
  puts "You arrive in a brightly lit salon. The air is full of conversation and chamber music."
  puts "There are two groups gathered near you, a collection of intellectuals and bluestockings and a cluster of little old ladies."
  puts "Who do you talk to?"

  print "> "
  talk = $stdin.gets.chomp.downcase

  if talk == "intellectuals"
    puts "The clever set rebuff your attempts to join their conversation, as you are too young and rich to
    have a valid opinion."
    library
  elsif talk == "ladies"
    puts "You spend a tedious half hour listening to reports of their ailments and the shocking price of muslin"
    puts "They are delighted by you and promise to compliment you to your insufferable aunt."
    library
  else
    puts "You really must speak up, it's quite noisy in here."
    salon
  end
end

def library
  puts "You leave the salon and enter the library."
  puts "It is just the kind of room you like - you are a great reader, after all."
  puts "There is a comfy looking chair beside the fire. Do you sit or look at all the books?"

  print "> "
  answer = $stdin.gets.chomp.downcase

  if answer == "look"
    puts "You examine all the spines and accidentally uncover a secret passage."
    puts "Do you go through?"

    print "> "
    passage = $stdin.gets.chomp.downcase

    if passage == "yes"
      secret_passage
    else
      over("Maybe you weren't destined for adventure after all.")
    end
  elsif answer == "sit"
    puts "You sit down in the chair. It is as comfy as it looks and you manage to sleep through the entire party."
    over("...but you have to hear your insufferable aunt complain about what an ungrateful child you are for the next week.")
  else "Children should be seen and not heard."
    library
  end
end

def secret_passage
  puts "The secret passage is dusty and filled with cobwebs."
  puts "You are not frightened, of course. Your late father was a gentleman naturalist and made sure you had an unconventional education - including studying bugs."
  puts "You open the door at the other end of the passage..."
  disused_room
end

def disused_room
  puts "You arrive in a musty, disused room. Heavy fabric covers all the furniture and the floor creaks beneath your feet."
  puts "There seems to be some kind of altar in front of the fireplace."
  puts "Do you approach?"

  print "> "
  brave = $stdin.gets.chomp.downcase

  if brave == "yes"
    magical_macguffin
  elsif brave == "no"
    puts "Curiosity killed the cat. Better to settle down with a boring country gentleman."
    start
  else
    puts "Really, this is no time for nonsense."
    disused_room
  end
end

def conservatory
  puts "Exotic plans cover every available surface. You can identify most of them from your extensive reading on the tropics."
  puts "There is a rustling ahead of you and a large gryphon appears"
  puts "It speaks in a sonorous voice, 'Answer my riddle and I will let you pass. Fail and I will eat you.'"
  puts "You find the presence of a gryphon in a society home unexpected, but not alarming."
  puts "Additionally, you delight in wordplay, so you ask the creature to proceed."
  print "This thing all things devours; "
  puts "Birds, beasts, trees, flowers; "
  puts "Gnaws iron, bites steel; "
  puts "Grinds hard stones to meal; "
  puts "Slays king, ruins town, "
  puts "And beats mountain down."

  print "> "
  answer = $stdin.gets.chomp.downcase

  if answer == "time"
    puts "The gryphon bows to you and stands aside"
    ball_room
  else
    puts "The gryphon opens its sharp beak..."
    over("You are swallowed in one bite. At least you're away from your insufferable aunt.")
  end
end

def ball_room
  puts "The ball room glitters with candles and mirrors. It is a shocking crush, filled to the brim with revelers."
  puts "A young man approaches, hoping to dance. Do you grant him the pleasure?"

  print "> "
  dance = $stdin.gets.chomp.downcase

  if dance == "yes"
    puts "A feverish country dance begins and you are spun around and around and around..."
    over("You become so dizzy that you must sit down and be brought ices and ratafia from eligible bachelors.")
  elsif dance == "no"
    puts "His face falls and you can feel your insufferable aunt glaring at you. You hurry across the room to the nearest door"
    staircase
  end
end

def staircase
  puts "You are in a narrow servant's staircase"
  puts "From here you can go up or down"

  print "> "
  direction = $stdin.gets.chomp.downcase

  if direction == "up"
    puts "You carefully ascend the staircase"
    disused_room
  elsif direction == "down"
    puts "You carefully descend the staircase"
    kitchen
  else
    puts "This is no time for dithering!"
    staircase
  end
end

def kitchen
  puts "The staircase terminates in the kitchens."
  puts "The cook squawks at you and two maids quickly return you to your insufferable aunt."
  over("She watches you like a hawk for the rest of the evening and makes you play cards when you're not dancing.")
end

def magical_macguffin
  puts "Upon the altar you see an engraved dagger with a large ruby in the hilt. It pulses with energy and seems to be calling to you"
  puts "Do you take it?"

  print "> "
  take = $stdin.gets.chomp.downcase

  if take == "yes"
    puts "The dagger is warm in your hand. As you turn away from the altar, a group of elaborately dressed and very attractive young people appear."
    puts "One of them says, 'At last, the chosen one has come! Come with us, leave your stuffy society existence"
    puts "and embrace your true destiny. Let us shower you with riches and excitement and adventure. You'll probably make out with a few of us too."
    puts "It's basically everything you've ever wanted, so you join them immediately."
    winner("And you live happily ever after. The end.")
  elsif take == "no"
    puts "The dagger makes you feel distinctly uncomfortable. You turn away from the altar and your vision fills with white."
    over("You are found two weeks later sleeping under a bridge. Your insufferable aunt sends you to the country to 'recouperate' and arranges a marriage for you while you are away.")
    end
  end

def over(why)
  puts why
  puts "The life of an heiress is so difficult."
  exit(0)
end

def winner(yay)
  puts yay
  exit(0)
end

start
