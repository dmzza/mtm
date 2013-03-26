# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

areas = Area.create([{ name: 'skin' }, { name: 'eyes' }, { name: 'lips' }, { name: 'eyebrows' }])
brands = Brand.create([{ name: 'Chanel', website: 'http://chanel.com' }, { name: 'CoverGirl', website: 'http://covergirl.com' }])
categories = Category.create([{ name: 'eyeliner' }, { name: 'lipstick' }, { name: 'foundation' }, { name: 'bronzer' }])
products = Product.create([
	{
		name: 'COCO MADEMOISELLE EAU DE PARFUM SPRAY',
		price: '64.00',
		link: 'http://www.chanel.com/en_US/fragrance-beauty/6.8-136692',
		brand_id: 1,
		description: "Sexy, fresh Oriental fragrance recalls the irrepressible spirit of the young Coco Chanel. An elegant, luxurious spray closest in strength and character to the parfum form. Spray lightly on pulse points morning and evening. The classic bottle signifies personal luxury and is a welcome addition to any dressing table. Available in a 1.2 oz. size, presented in a sleek flacon. The Classic Bottle (shown above) is not available in this size.",
	},
	{
		name: 'LE BLANC DE CHANEL SHEER ILLUMINATING BASE',
		price: '45.00',
		link: 'http://www.chanel.com/en_US/fragrance-beauty/Makeup-Base-LE-BLANC-DE-CHANEL-88635?sku=89665',
		brand_id: 1,
		area_id: 1,
		category_id: 3,
		description: "Ingenious multi-tasking oil- free fluid 'primes' skin perfectly for makeup, while adding subtle contours and radiance to the face. A unique blend of powders reduces the appearance of wrinkles and fine lines for smooth, even, flawless finish.",
	},
	{
		name: 'NatureLuxe Silk Foundation',
		price: '9.66',
		link: 'http://www.amazon.com/exec/obidos/ASIN/B0043OUJBE/ref=nosim/pg-covergirl-20?s=merchant&m=ATVPDKIKX0DER',
		brand_id: 2,
		area_id: 1,
		category_id: 3,
		description: "Redefine natural beauty with a touch of cucumber water and a hint of jojoba and rose hip extracts. Our light formula takes heavy weight out of your polished finish.",
	},
	{
		name: 'NatureLuxe Mousse Mascara',
		price: '17.02',
		link: 'http://www.amazon.com/Covergirl-Natureluxe-Mousse-Mascara-0-27-Ounce/dp/B004Y4JNZQ',
		brand_id: 2,
		area_id: 2,
		category_id: 1,
		description: "Discover luxurious volume that feels light as air. We took out a heavy synthetic and put in a light touch of nature - for luxurious lashes that are 20% lighter vs. the most expensive mascara. 2X more volume vs. bare lashes.",
	},
	{
		name: 'ROUGE ALLURE LUMINOUS INTENSE LIP COLOUR',
		price: '34.00',
		link: 'http://www.chanel.com/en_US/fragrance-beauty/Makeup-Lipstick-ROUGE-ALLURE-130969?sku=130985',
		brand_id: 1,
		area_id: 3,
		category_id: 2,
		description: "The next generation of ROUGE ALLURE dresses lips with unmistakable attitude. A new formula with concentrated, ultra-thin pigments offers radically intense colour with full coverage and a satin finish. Leaves lips supple and protected with lasting comfort.",
	},
	])