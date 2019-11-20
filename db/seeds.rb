puts "Destroy all"


User.destroy_all
Hug.destroy_all
Booking.destroy_all


puts "Creating users..."
 a = User.create!(
    username:     'Ali972',
    email:        'ali@gmail.com',
    address:      '9 rue Courbin,33000 Bordeaux',
    password:     'azerty',
    hugger:        false)

 b = User.create!( username:     'Flopaille',
    email:        'flo@gmail.com',
    address:      '3 place amédée larrieu,33000 Bordeaux',
    password:     'azerty',
    hugger:        false)
c = User.create!(
    username:     'Lampoulpe',
    email:        'lam@gmail.com',
    address:      '7 Rue des Bahutiers,33000 Bordeaux',
    password:     'azerty',
    hugger:        true)
d = User.create!(
    username:     'Xdel',
    email:        'xd@gmail.com',
    address:      '30 Rue du Pas-Saint-Georges,33000 Bordeaux',
    password:     'azerty',
    hugger:        true)

puts 'Finished!'

puts "Creating hugs..."
hugs_attributes = [
  {
    description:   "À l'occasion, je vous mettrai un petit coup de polish...",
    price:         180,
    title:         'Calin au coin du feu',
    category:      3,
    photo:         "https://images.unsplash.com/photo-1517346665566-17b938c7f3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    user:         a
  },
  {
    description:  'Je ne mord pas et ne griffe pas non plus ',
    price:        154,
    title:        'Calin chaud sous le plaid',
    category:     2,
    user_id:     'azerty',
    photo:        "https://images.unsplash.com/photo-1517346665566-17b938c7f3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    user:        b
  },
  {
    description:   "Je n'ai jamais pu refuser quoi que ce soit à une brune aux yeux marrons",
    price:        10,
    title:        'Calin reconfortant',
    category:     1,
    user_id:     'azerty',
    photo:        "https://images.unsplash.com/photo-1517346665566-17b938c7f3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    user:      c
  },
  {
    description:  "Satisfait ou remboursé",
    price:        56,
    title:        'Calin desinteressé',
    category:     0,
    user_id:     'azerty',
    photo:       "https://images.unsplash.com/photo-1517346665566-17b938c7f3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    user:       d
  },
  {
    description:   "Idéale pour une étape sur la route des vacances.",
    price:        96,
    title:        "Calin d'escale",
    category:     3,
    user_id:     'azerty',
    photo:        "https://images.unsplash.com/photo-1517346665566-17b938c7f3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    user:       c
  },
  {
    description:  "Idéal pour un couple ou voyageur solo, vous pourrez profiter du patio indépendant au calme tout en étant proche des commerces.",
    price:        40,
    title:      'Calin au coin de la rue',
    category:     2,
    user_id:     'azerty',
    photo:        "https://images.unsplash.com/photo-1517346665566-17b938c7f3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    user:      a
  },
  {
    description:   "Entièrement rénovée avec tout le confort et la modernité",
    price:         25,
    title:        'Calin gourmand',
    category:     1,
    user_id:     'azerty',
    photo:        "https://images.unsplash.com/photo-1517346665566-17b938c7f3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    user:       b
  }
]
Hug.create!(hugs_attributes)
puts 'Finished!'
