Supplier.create!([
  {
    name: "ThinkGeek",
    email: "thinkgeek@gmail.com",
    phone_number: "234-5678"
  },
  {
    name: "Dumbledoor's Wizardry Supplies",
    email: "DWS@gmail.com",
    phone_number: "987-4321"
  },
  {
    name: "Anti-Amazon",
    email: "anti-amazon@gmail.com",
    phone_number: "543-7654"
  }
])

Product.create!([
  {
    name: "WNYX Mug", 
    price: "2.0", image_url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg", 
    description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", 
    supplier_id: 1
  },
  {
    name: "Hitchhiker's Guide to the Galaxy", 
    price: "42.0", 
    image_url: "http://www.notcot.com/images/guide.gif", 
    description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", 
    supplier_id: 2
  },
  {
    name: "Lightsaber", 
    price: "270.0", 
    image_url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", 
    description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", 
    supplier_id: 3
  },
  {
    name: "Space Cowboy Laser Gun", 
    price: "170.0", 
    image_url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", 
    description: "This weapon has no other 
    description than, Shiney!", 
    supplier_id: 1
  },
  {
    name: "DnD Dice set", 
    price: "57.0", 
    image_url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", 
    description: "Take down mighty dragons with this timeless set of 20 sided wonders", 
    supplier_id: 3
  },
  {
    name: "Sonic Screwdriver", 
    price: "9.0", 
    image_url: "https://dyn0.media.forbiddenplanet.com/products/28577492.jpg", 
    description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", 
    supplier_id: 2
  },
  {
    name: "Yoda sleeping bag", 
    price: "40.0", 
    image_url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png", description: "For real", 
    supplier_id: 2
  }
])

