puts "Destroy all"


Booking.destroy_all
Hug.destroy_all
User.destroy_all


puts "Creating users..."
 a = User.create!(
    username:     'Ali972',
    email:        'ali@gmail.com',
    address:      '9 rue Courbin, 33000 Bordeaux',
    password:     'azerty',
    hugger:        false,
    photo: "IMG_0319_grrvbs")
 b = User.create!(
    username:     'Flopaille',
    email:        'flo@gmail.com',
    address:      '3 place amédée larrieu, 33000 Bordeaux',
    password:     'azerty',
    hugger:        false)
  c = User.create!(
    username:     'Lampoulpe',
    email:        'lam@gmail.com',
    address:      '7 Rue des Bahutiers, 33000 Bordeaux',
    password:     'azerty',
    hugger:        true,
    photo:         "https://res.cloudinary.com/ddo2iitps/image/upload/v1574347411/flz9qcggiocajxznatom.jpg")
  d = User.create!(
    username:     'Xdel',
    email:        'xd@gmail.com',
    address:      '30 Rue du Pas-Saint-Georges, 33000 Bordeaux',
    password:     'azerty',
    hugger:        true)
  e = User.create!(
    username:     'Tom33',
    email:        'tom@gmail.com',
    address:      '30 Place de la Victoire, 33000 Bordeaux',
    password:     'azerty',
    hugger:        true)
  f = User.create!(
    username:     'Valdu56',
    email:        'val56@gmail.com',
    address:      '12 rue des Meuniers, 33000 Bordeaux',
    password:     'azerty',
    hugger:        true)
  g = User.create!(
    username:     'TonioMC',
    email:        'toutoun@gmail.com',
    address:      '24 rue des Remparts, 33000 Bordeaux',
    password:     'azerty',
    hugger:        true)
  h = User.create!(
    username:     'MaelMorbi',
    email:        'maelmor@gmail.com',
    address:      '14 rue de Cheverus, 33000 Bordeaux',
    password:     'azerty',
    hugger:        true)
  i = User.create!(
    username:     'EmilienLB',
    email:        'milou@gmail.com',
    address:      '24 rue des Remparts, 33000 Bordeaux',
    password:     'azerty',
    hugger:        true)
  j = User.create!(
    username:     'SylvainBla',
    email:        'sylvainB@gmail.com',
    address:      '12 rue Mouneyra, 33000 Bordeaux',
    password:     'azerty',
    hugger:        true)
  k = User.create!(
    username:     'SimonGarf',
    email:        'simong@gmail.com',
    address:      '58 rue de Pessac, 33000 Bordeaux',
    password:     'azerty',
    hugger:        true)
  l = User.create!(
    username:     'EvaWag',
    email:        'evawag@gmail.com',
    address:      '76 rue de Belfort, 33000 Bordeaux',
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
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          f
  },
  {
    description:  'Je ne mord pas et ne griffe pas non plus ',
    price:        154,
    title:        'Calin chaud sous le plaid',
    category:     2,
    user_id:      'azerty',
    photo:        'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:         j
  },
  {
    description:  "Je n'ai jamais pu refuser quoi que ce soit à une brune aux yeux marrons",
    price:        10,
    title:        'Calin reconfortant',
    category:     1,
    user_id:      'azerty',
    photo:        'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:         c
  },
  {
    description:  "Satisfait ou remboursé",
    price:        56,
    title:        'Calin desinteressé',
    category:     0,
    user_id:      'azerty',
    photo:        'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:         d
  },
  {
    description:  "Idéale pour une étape sur la route des vacances.",
    price:        96,
    title:        "Calin d'escale",
    category:     3,
    user_id:      'azerty',
    photo:        'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:         c
  },
  {
    description:  "Idéal pour un couple ou voyageur solo, vous pourrez profiter du patio indépendant au calme tout en étant proche des commerces.",
    price:        40,
    title:        'Calin au coin de la rue',
    category:     2,
    user_id:      'azerty',
    photo:        'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:         e
  },
  {
    description:   "Entièrement rénovée avec tout le confort et la modernité",
    price:         70,
    title:         'Calin gourmand',
    category:      1,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          l
  },
  {
    description:   "Calin si affinité",
    price:         13,
    title:         'Calin poussé',
    category:      3,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          k
  },
  {
    description:   "Calin doux mais rapide",
    price:         5,
    title:         'Calin efficace',
    category:      2,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          c
  },
  {
    description:   "Calin dès l'aube",
    price:         37,
    title:         'Calin matinal',
    category:      0,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          d
  },
  {
    description:   "Calin sous pression",
    price:         41,
    title:         'Calin pas de tout repos',
    category:      0,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          k
  },
  {
    description:   "Calin de vengeance",
    price:         20,
    title:         'Calin mauvais',
    category:      0,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          h
  },
  {
    description:   "Calin public",
    price:         8,
    title:         'Rendez-vous dans le parc',
    category:      0,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          j
  },
  {
    description:   "Calin dans les nuages",
    price:         457,
    title:         "Si l'envie vous prends de vous envoyer en l'air",
    category:      3,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          e
  },
  {
    description:   "Calin au fil de l'eau",
    price:         129,
    title:         "Il va y avoir de la houle",
    category:      1,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpgs.jpg',
    user:          c
  },
  {
    description:   "Calin au wagon",
    price:         25,
    title:         "Histoire de se remettre sur les rails",
    category:      1,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          l
  },
  {
    description:   "Calin par surprise",
    price:         5,
    title:         "Attention",
    category:      1,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          k
  },
  {
    description:   "Calin d'écoute",
    price:         457,
    title:         "Une épaule pour discuter...",
    category:      2,
    user_id:       'azerty',
    photo:         'https://res.cloudinary.com/ddo2iitps/image/upload/v1577458512/brittani-burns-DEM5ZWZhoXI-unsplash_2_bfup6t.jpg',
    user:          j
  }
]

Hug.create!(hugs_attributes)
puts 'Finished!'
