# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
	
	shipping_companies = ShippingCompany.create([{ name: 'Titanic'}, { name: 'Triton'}, { name: 'Supremax'}, { name: 'Castisina'}, { name: 'Leonora'}, { name: 'Poseidon'}])
	puts "creo ship"
	nav = ShippingCompany.first
	ships = Ship.create([{ name: 'Anastacia', shipping_company_id: nav.id}, { name: 'Ribery', shipping_company_id: nav.id}, { name: 'Elena', shipping_company_id: nav.id}, { name: 'Singapura', shipping_company_id: nav.id}])
	ship =Ship.first
	puts "creo ship nave"
	consignees = Consignee.create([{ name: 'ShopCookies'}, { name: 'RibieraShop'}, { name: 'MinoristaShop'}, { name: 'LaboralShop'}])
	con = Consignee.first
	puts "creo consignees"
	origins = Origin.create([{ name: 'Bolivia'}, { name: 'Ecuador'}, { name: 'Venezuela'}, { name: 'Argentina'}, { name: 'China'}])
		ori1 = Origin.first
		ori2 = Origin.second
		ori3 = Origin.third
		ori4 = Origin.fourth
		ori5 = Origin.fifth
	puts "creo origins"
	nvoccs = Nvocc.create([{ name: 'MileniumExchange'}, { name: 'CenturyExchange'}, { name: 'LeonoroExchange'}, { name: 'DinamoExchange'}])
		nvo1 = Nvocc.first
		nvo2 = Nvocc.second
		nvo3 = Nvocc.third
		nvo4 = Nvocc.fourth
	puts "creo nvoccs"
	merchandises = Merchandise.create ([{ name: 'gold', price: '100', details: 'jewel', origin_id: ori1.id}, { name: 'Shoes', price: '15', details: 'DcShoes', origin_id: ori2.id}, { name: 'Umbrellas', price: '10', details: 'English', origin_id: ori3.id}, { name: 'Rings', price: '30', details: 'jewelry', origin_id: ori4.id}, { name: 'Pants', price: '32', details: 'Wrangler', origin_id: ori1.id}, { name: 'Hat', price: '30', details: 'British', origin_id: ori5.id}])
		mer1 = Merchandise.first
		mer2 = Merchandise.second
		mer3 = Merchandise.third
	puts "creo merchandises"
	travels = Travel.create ([{origin_id: ori1.id, ship_id: ship.id}])
		tra1 = Travel.first
		tra2 = Travel.second
		tra3 = Travel.third
		tra4 = Travel.fourth
	puts "creo travels"
	fees = Fee.create ([{price: '12', origin_id: ori1.id, nvocc_id: nvo1.id}, {price: '15',origin_id: ori2.id, nvocc_id: nvo2.id}, {price: '18',origin_id: ori3.id, nvocc_id: nvo3.id}, {price: '30', origin_id: ori4.id, nvocc_id: nvo4.id}])
	puts "creo fees"
	bill_of_lading_houses = BillOfLadingHouse.create ([{date_of_arrival: '09-05-2017', destination: 'Peru', travel_id: tra1.id, shipping_company_id: nav.id, nvocc_id: nvo1.id, consignee_id: con.id}, {date_of_arrival: '09-05-2017', destination: 'Chile', travel_id: tra1.id, shipping_company_id: nav.id, nvocc_id: nvo1.id, consignee_id: con.id}, {date_of_arrival: '15-05-2017', destination: 'España', travel_id: tra1.id, shipping_company_id: nav.id, nvocc_id: nvo1.id, consignee_id: con.id}, {date_of_arrival: '18-05-2017', destination: 'Italia', travel_id: tra1.id, shipping_company_id: nav.id, nvocc_id: nvo1.id, consignee_id: con.id}])
		billh1 = BillOfLadingHouse.first
	puts "creo blhouses"
	bill_of_lading_masters = BillOfLadingMaster.create ([{date_of_arrival: '09-05-2017', destination: 'Peru', travel_id: tra1.id, shipping_company_id: nav.id}, {date_of_arrival: '09-05-2017', destination: 'Chile', travel_id: tra1.id, shipping_company_id: nav.id}, {date_of_arrival: '15-05-2017', destination: 'España', travel_id: tra1.id, shipping_company_id: nav.id}, {date_of_arrival: '18-05-2017', destination: 'Italia', travel_id: tra1.id, shipping_company_id: nav.id}])
		billm1 = BillOfLadingMaster.first
	puts "creo blmasters"
	create_containers = Container.create ([{name: '1', container_type: 'Standard', merchandise_id: mer1.id, bill_of_lading_house_id: billh1.id, bill_of_lading_master_id: billm1}, {name: '2', container_type: 'HIGH-CUBE', merchandise_id: mer1.id, bill_of_lading_house_id: billh1.id, bill_of_lading_master_id: billm1}, {name: '3', container_type: 'Standard', merchandise_id: mer1.id, bill_of_lading_house_id: billh1.id, bill_of_lading_master_id: billm1}, {name: '4', container_type: 'HIGH-CUBE', merchandise_id: mer1.id, bill_of_lading_house_id: billh1.id, bill_of_lading_master_id: billm1}])
	puts "creo containers"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
