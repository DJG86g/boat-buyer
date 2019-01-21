# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([
   {username:"dang86",first_name:"Daniel",last_name:"Gouveia",date_of_birth:"1986-09-07",phone_number:"781-983-5555",password:"tester"},
   {username:"whaler30",first_name:"jon",last_name:"jones",date_of_birth:"",phone_number:"781-555-5555",password:"tester"},
   {username:"towboat",first_name:"capt.bill",last_name:"williams",date_of_birth:"1949-05-03",phone_number:"781-555-5555",password:"tester"},
   {username:"sailorjerry",first_name:"jerry",last_name:"garcia",date_of_birth:"1956-02-05",phone_number:"781-555-5555",password:"tester"},
   {username:"steamboatwilly",first_name:"Mickey",last_name:"Mouse",date_of_birth:"1955-01-01",phone_number:"781-555-5555",password:"tester"},
   {username:"fastestboater22",first_name:"freddie",last_name:"charles",date_of_birth:"",phone_number:"781-555-5555",password:"tester"},
   {username:"fisherjones",first_name:"jim",last_name:"jones",date_of_birth:"",phone_number:"781-555-5555",password:"tester"},
   {username:"pirateboater",first_name:"jack",last_name:"sparrow",date_of_birth:"1603-01-01",phone_number:"781-555-5555",password:"tester"},
   {username:"boogieboater",first_name:"james",last_name:"dean",date_of_birth:"1960-02-02",phone_number:"781-555-5555",password:"tester"},
   {username:"beachboater43",first_name:"jonny",last_name:"ray",date_of_birth:"1993-04-07",phone_number:"781-555-5555",password:"tester"},
   {username:"chasintail",first_name:"ed",last_name:"michaels",date_of_birth:"1979-02-09",phone_number:"781-555-5555",password:"tester"},
   {username:"wakechaser",first_name:"willy",last_name:"franks",date_of_birth:"1983-05-08",phone_number:"781-555-5555",password:"tester"}
  ])

boats = Boat.create!([
    {brand:"grady-white",model:"330",year:"2010",hours:"273",engine_size:"250",number_of_engines:"3",user_id: 4 ,length_of_boat:"33",hull_style:"deep vee",boat_photo:""},
    {brand:"bassmaster",model:"255",year:"2016",hours:"124",engine_size:"200",number_of_engines:"1",user_id: 3 ,length_of_boat:"25",hull_style:"deep vee",boat_photo:""},
    {brand:"fountain",model:"420 rage",year:"2018",hours:"10",engine_size:"350",number_of_engines:"4",user_id: 1 ,length_of_boat:"42",hull_style:"deep vee",boat_photo:""},
    {brand:"jon-boat",model:"alluminum",year:"2000",hours:"300",engine_size:"125",number_of_engines:"1",user_id: 6 ,length_of_boat:"16",hull_style:"deep vee",boat_photo:""},
    {brand:"coleman",model:"canoe",year:"1997",hours:"1000",engine_size:"electric",number_of_engines:"1",user_id: 5 ,length_of_boat:"10",hull_style:"canoe",boat_photo:""},
    {brand:"boston whaler",model:"180 cruise",year:"2012",hours:"80",engine_size:"115",number_of_engines:"1",user_id: 7 ,length_of_boat:"18",hull_style:"deep vee",boat_photo:""},
    {brand:"boston whaler",model:"330 wake",year:"2007",hours:"180",engine_size:"225",number_of_engines:"3",user_id: 10 ,length_of_boat:"33",hull_style:"deep vee",boat_photo:""},
    {brand:"grady-white",model:"280ss",year:"2018",hours:"50",engine_size:"225",number_of_engines:"2",user_id: 2 ,length_of_boat:"28",hull_style:"deep vee",boat_photo:""},
    {brand:"mako",model:"310",year:"",hours:"45",engine_size:"225",number_of_engines:"2",user_id: 2 ,length_of_boat:"31",hull_style:"deep vee",boat_photo:""},
    {brand:"mako",model:"366",year:"2014",hours:"205",engine_size:"300",number_of_engines:"2",user_id: 5 ,length_of_boat:"36",hull_style:"deep vee",boat_photo:""},
    {brand:"grady-white",model:"422",year:"2012",hours:"345",engine_size:"350",number_of_engines:"4",user_id: 6 ,length_of_boat:"42",hull_style:"deep vee",boat_photo:""},
    {brand:"larson",model:"120hehe",year:"2018",hours:"2",engine_size:"350",number_of_engines:"1",user_id: 3 ,length_of_boat:"12",hull_style:"deep vee",boat_photo:""},
    {brand:"larson",model:"335",year:"2009",hours:"458",engine_size:"225",number_of_engines:"3",user_id: 7 ,length_of_boat:"33",hull_style:"deep vee",boat_photo:""},
    {brand:"bassmaster",model:"big bass",year:"2019",hours:"0",engine_size:"200",number_of_engines:"2",user_id: 8 ,length_of_boat:"29",hull_style:"deep vee",boat_photo:""},
    {brand:"grady-white",model:"",year:"",hours:"",engine_size:"300",number_of_engines:"4",user_id: 2 ,length_of_boat:"42",hull_style:"deep vee",boat_photo:""},
    {brand:"mako",model:"",year:"2014",hours:"",engine_size:"",number_of_engines:"2",user_id: 1 ,length_of_boat:"38",hull_style:"deep vee",boat_photo:""},
    {brand:"grady-white",model:"",year:"2018",hours:"",engine_size:"350",number_of_engines:"3",user_id: 4 ,length_of_boat:"44",hull_style:"deep vee",boat_photo:""},
    {brand:"",model:"",year:"",hours:"",engine_size:"",number_of_engines:"2",user_id: 4 ,length_of_boat:"",hull_style:"deep vee",boat_photo:""},
    {brand:"larson",model:"",year:"",hours:"",engine_size:"",number_of_engines:"1",user_id: 7 ,length_of_boat:"16",hull_style:"deep vee",boat_photo:""},
    {brand:"",model:"",year:"2014",hours:"",engine_size:"",number_of_engines:"3",user_id: 1 ,length_of_boat:"",hull_style:"deep vee",boat_photo:""},
  ])

marinas = Marina.create!([
    {name:"oaksbluff",address:"blah st",city:"oaksbluff",state:"ma",zip_code:"010101",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"The Marina at Rowes Wharf",address:"50 Rowes Wharf",city:"Boston",state:"ma",zip_code:"02110",phone_number:"(617) 748-5013",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Constitution Marina",address:"28 Constitution Rd",city:"Boston",state:"ma",zip_code:"02110",phone_number:"(617) 241-9640",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Brewer Marina Bay",address:"333 Victory Rd",city:"Quincy",state:"ma",zip_code:"02171",phone_number:"(617) 847-1800",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Ring’s Island Marina",address:"16 1st St",city:"Salisbury",state:"ma",zip_code:"01952",phone_number:"(978) 465-0307",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Newburyport Harbor Marina",address:"51 Water St",city:"Newburyport",state:"ma",zip_code:"01950",phone_number:"(978) 462-3990",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Harbour Place Marina",address:"1 Harbour Place",city:"Portsmouth",state:"NH",zip_code:"03801",phone_number:"(603) 436-0915",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Great Bay Marine Inc",address:"61 Beane Ln",city:"Newington",state:"NH",zip_code:"03801",phone_number:"(603) 436-5299",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Meredith Marina",address:"2 Bayshore Dr",city:"Meredith",state:"NH",zip_code:"03253",phone_number:"603) 279-7921",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Thurston's Marina",address:"18 Endicott St",city:"Laconia",state:"NH",zip_code:"03246",phone_number:"(603) 366-4811",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"West alton marina",address:"35 W Alton Marina Rd",city:"Alton Bay",state:"NH",zip_code:"03810",phone_number:"(603) 875-7788",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"New Seabury Marina",address:"135 Daniels Island Rd",city:"Mashpee",state:"MA",zip_code:"02649",phone_number:"(508) 477-9197",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Little River Boat Yard",address:"15 Riverside Rd",city:"Mashpee",state:"MA",zip_code:"02649",phone_number:"(508) 548-3511",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Waquoit Bay Yacht Club",address:"21 Waquoit Landing Rd",city:"East Falmouth",state:"MA",zip_code:"02536",phone_number:"(508) 548-5732",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Bosun's Marine",address:"100 Falmouth Rd",city:"Mashpee",state:"MA",zip_code:"02649",phone_number:"(508) 477-4626",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
    {name:"Cotuit Town Dock",address:"Oyster Pl",city:"Cotuit",state:"MA",zip_code:"02649",phone_number:"(508) 477-4626",max_boat_size: 30 ,accomidations:"all the things",public_launch: true,public_restroom: true,gas_dock: true},
  ])
