# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
	last_name: "田中",
	first_name: "勇気",
	last_name_kana: "タナカ",
	first_name_kana: "ユウキ",
	birthday: "1993-12-11",
	gender: 1,
	phone_number: "090-2189-0000",
	email: "tanaka@tanaka",
	post_number: "289-2891",
	prefectures: 1,
	city: "札幌市",
	block: "中央区北21条西5丁目5-3",
	password: "tanakatanaka")
user.save!

user = User.new(
	last_name: "香川",
	first_name: "真司",
	last_name_kana: "カガワ",
	first_name_kana: "シンジ",
	birthday: "1997-3-15",
	gender: 1,
	phone_number: "090-2784-8912",
	email: "kagawa@kagawa",
	post_number: "432-4289",
	prefectures: 13,
	city: "渋谷区",
	block: "香川3-2",
	password: "kagawakagawa")
user.save!

user = User.new(
	last_name: "広瀬",
	first_name: "すず",
	last_name_kana: "ヒロセ",
	first_name_kana: "スズ",
	birthday: "1994-10-09",
	gender: 2,
	phone_number: "080-1111-7394",
	email: "hirose@hirose",
	post_number: "903-3199",
	prefectures: 2,
	city: "青森市",
	block: "青森22-11",
	password: "hirosehirose")
user.save!


plan = Plan.new(
	plan_name:"スタンダードプラン（素泊まり）",
	plan_description: "・出張などビジネスでのお客様も、ご家族やカップル、お友達同士などでお出掛けの
	お客様にも、幅広くご利用頂けます",
	plan_image_id:1)
plan.save!

plan = Plan.new(
	plan_name:"スタンダードプラン（朝食付き）",
	plan_description: "・お客様の一日のスタートを幸せで満たしたい・・・
	その一心で誕生した朝食を、ぜひ一度お試しください！",
	plan_image_id:1)
plan.save!

plan = Plan.new(
	plan_name:"映画見放題プラン（素泊まり）",
	plan_description: "・お部屋でＶＯＤ(ビデオ オンデ マンド)がご覧いただけます！！
	滞在中１００タイトル以上の映画・ドラマ・コメディなどが見放題！！
	さらにインターネットが利用が無料！！
	たまにはゆっくり映画鑑賞でもいかがですか？",
	plan_image_id:1)
plan.save!

plan = Plan.new(
    plan_name:"映画見放題プラン（朝食付き）",
 	plan_description: "・映画見放題と朝食付きのセットプラン",
 	plan_image_id:1)
 plan.save!


room_type = RoomType.new(
	room_type_name:"シングルルーム（喫煙）")
room_type.save!

room_type = RoomType.new(
	room_type_name:"シングルルーム（禁煙）")
room_type.save!

room_type = RoomType.new(
	room_type_name:"ダブルルーム（喫煙）")
room_type.save!

room_type = RoomType.new(
	room_type_name:"ダブルルーム（禁煙）")
room_type.save!



room = Room.new(
	plan_id:1,
	room_type_id:1,
    price: 5000)
room.save!

room = Room.new(
	plan_id:1,
	room_type_id:2,
	price: 5000)
room.save!

room = Room.new(
	plan_id:1,
	room_type_id:3,
	price: 5500)
room.save!

room = Room.new(
	plan_id:1,
	room_type_id:4,
	price: 5500)
room.save!

room = Room.new(
	plan_id:2,
	room_type_id:1,
	price: 6000)
room.save!

room = Room.new(
	plan_id:2,
	room_type_id:2,
	price: 6000)
room.save!

room = Room.new(
	plan_id:2,
	room_type_id:3,
	price: 6500)
room.save!

room = Room.new(
	plan_id:2,
	room_type_id:4,
	price: 6500)
room.save!

room = Room.new(
	plan_id:3,
	room_type_id:1,
	price: 6000)
room.save!

room = Room.new(
	plan_id:3,
	room_type_id:2,
	price: 6000)
room.save!

room = Room.new(
	plan_id:3,
	room_type_id:3,
	price: 6500)
room.save!

room = Room.new(
	plan_id:3,
	room_type_id:4,
	price: 6500)
room.save!

room = Room.new(
	plan_id:4,
	room_type_id:1,
	price: 7000)
room.save!

room = Room.new(
	plan_id:4,
	room_type_id:2,
	price: 7000)
room.save!

room = Room.new(
	plan_id:4,
	room_type_id:3,
	price: 7500)
room.save!

room = Room.new(
	plan_id:4,
	room_type_id:4,
	price: 7500)
room.save!

