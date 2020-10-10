# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
    email: "admin@gmail.com",
    password:  "00000000"
  )

User.create!(
    id: 1,
    email: "hiroaki@gmail.com",
    name: "hiroaki",
    password:  "hiro0302",
  )

Genre.create!(
    id: 1,
    name: "キッチン",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 2,
    name: "リビング",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 3,
    name: "勉強、仕事",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 4,
    name: "車",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 5,
    name: "オフィス",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 6,
    name: "子育て",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 7,
    name: "アウトドア、旅行",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 8,
    name: "一人暮らし",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 9,
    name: "掃除",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 10,
    name: "プレゼント、小物",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 11,
    name: "100円ショップ",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    id: 12,
    name: "災害時",
    genre_status: [['有効', true], ['無効', false]]
  )

Post.create!(
    id: 1,
    genre_id: 11,
    user_id: 1,
    title: "袋キャップミニ",
    body: "小麦粉や片栗粉、パン粉など、一度に使い切れない食材を輪ゴムでぐるぐる巻きにしたり、タッパーに入れて保管したりと手間がかかってましたが、このキャップで手間を解消されました！ 袋そのものに取り出し口を付けられて、キャップを閉めたらそのまま棚へ。片付けの手間も省けて楽チンで、おススメです！！",
    post_image: open("./app/assets/images/sub-buzz-23509-1559181430-1.jpg")
  )