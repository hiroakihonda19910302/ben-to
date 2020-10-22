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
    #id: 1,
    email: "1111@gmail.com",
    name: "イチロー",
    password:  "11111111",
    profile_image: open("./app/assets/images/sample-author1.jpg")
  )
User.create!(
    #id: 2,
    email: "2222@gmail.com",
    name: "ジロー",
    password:  "22222222",
    profile_image: open("./app/assets/images/sample-author2.jpg")
  )
User.create!(
    #id: 3,
    email: "3333@gmail.com",
    name: "サブロー",
    password:  "33333333",
    profile_image: open("./app/assets/images/sample-author3.jpg")
  )
User.create!(
    #id: 4,
    email: "4444@gmail.com",
    name: "シロー",
    password:  "44444444",
    profile_image: open("./app/assets/images/sample-author4.jpg")
  )
User.create!(
    #id: 5,
    email: "5555@gmail.com",
    name: "ゴロー",
    password:  "55555555",
    profile_image: open("./app/assets/images/sample-author5.jpg")
  )
User.create!(
    #id: 6,
    email: "6666@gmail.com",
    name: "ロクロー",
    password:  "66666666",
    profile_image: open("./app/assets/images/sample-author6.jpg")
  )
User.create!(
    #id: 7,
    email: "7777@gmail.com",
    name: "シチロー",
    password:  "77777777",
    profile_image: open("./app/assets/images/sample-author7.jpg")
  )
User.create!(
    #id: 8,
    email: "8888@gmail.com",
    name: "ハチロー",
    password:  "88888888",
    profile_image: open("./app/assets/images/sample-author8.jpg")
  )
User.create!(
    #id: 9,
    email: "9999@gmail.com",
    name: "クロー",
    password:  "99999999",
    profile_image: open("./app/assets/images/sample-author9.jpg")
  )
User.create!(
    #id: 10,
    email: "sample@gmail.com",
    name: "サンプルマン",
    password:  "sampleman",
    profile_image: open("./app/assets/images/sample-author10.jpg")
  )

Genre.create!(
    #id: 1,
    name: "キッチン",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 2,
    name: "リビング",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 3,
    name: "勉強、仕事",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 4,
    name: "車",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 5,
    name: "オフィス",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 6,
    name: "子育て",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 7,
    name: "アウトドア、旅行",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 8,
    name: "一人ぐらし",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 9,
    name: "掃除",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 10,
    name: "プレゼント、小物",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 11,
    name: "100円ショップ",
    genre_status: [['有効', true], ['無効', false]]
  )
Genre.create!(
    #id: 12,
    name: "災害時",
    genre_status: [['有効', true], ['無効', false]]
  )

Post.create!(
    #id: 1,
    genre_id: 8,
    user_id: 1,
    title: "テスト用素材No.1",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage1.jpg")
  )
Post.create!(
    #id: 2,
    genre_id: 10,
    user_id: 2,
    title: "テスト用素材No.2",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage2.jpg")
  )
Post.create!(
    #id: 3,
    genre_id: 1,
    user_id: 3,
    title: "テスト用素材No.3",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage3.jpg")
  )
Post.create!(
    #id: 4,
    genre_id: 3,
    user_id: 4,
    title: "テスト用素材No.4",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage4.jpg")
  )
Post.create!(
    #id: 5,
    genre_id: 8,
    user_id: 5,
    title: "テスト用素材No.5",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage5.jpg")
  )
Post.create!(
    #id: 6,
    genre_id: 9,
    user_id: 6,
    title: "テスト用素材No.6",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage6.jpg")
  )
Post.create!(
    #id: 7,
    genre_id: 1,
    user_id: 7,
    title: "テスト用素材No.7",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage7.jpg")
  )
Post.create!(
    #id: 8,
    genre_id: 9,
    user_id: 8,
    title: "テスト用素材No.8",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage8.jpg")
  )
Post.create!(
    #id: 9,
    genre_id: 1,
    user_id: 9,
    title: "テスト用素材No.9",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage9.jpg")
  )
Post.create!(
    #id: 10,
    genre_id: 1,
    user_id: 10,
    title: "テスト用素材No.10",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage10.jpg")
  )
Post.create!(
    #id: 11,
    genre_id: 6,
    user_id: 1,
    title: "テスト用素材No.11",
    body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
    post_image: open("./app/assets/images/postimage11.jpg")
  )

10.times do |n|
    Post.create!(
      genre_id: 1,
      user_id: n + 1,
      title: "キッチンのテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage21.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 2,
      user_id: n + 1,
      title: "リビングのテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage20.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 3,
      user_id: n + 1,
      title: "勉強、仕事のテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage22.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 4,
      user_id: n + 1,
      title: "車のテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage23.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 5,
      user_id: n + 1,
      title: "オフィスのテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage16.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 6,
      user_id: n + 1,
      title: "子育てのテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage15.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 7,
      user_id: n + 1,
      title: "アウトドア、旅行のテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage17.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 8,
      user_id: n + 1,
      title: "一人ぐらしのテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage14.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 9,
      user_id: n + 1,
      title: "掃除のテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage18.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 10,
      user_id: n + 1,
      title: "プレゼント、小物のテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage19.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 11,
      user_id: n + 1,
      title: "100円ショップのテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage13.jpg")
    )
  end
10.times do |n|
    Post.create!(
      genre_id: 12,
      user_id: n + 1,
      title: "災害時のテスト用素材",
      body: "こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！こちらはテスト用の素材です！！",
      post_image: open("./app/assets/images/postimage12.png")
    )
  end