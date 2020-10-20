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
    email: "1111@gmail.com",
    name: "イチロー",
    password:  "11111111",
  )
User.create!(
    id: 2,
    email: "2222@gmail.com",
    name: "ジロー",
    password:  "22222222",
  )
User.create!(
    id: 3,
    email: "3333@gmail.com",
    name: "サブロー",
    password:  "33333333",
  )
User.create!(
    id: 4,
    email: "4444@gmail.com",
    name: "シロー",
    password:  "44444444",
  )
User.create!(
    id: 5,
    email: "5555@gmail.com",
    name: "ゴロー",
    password:  "55555555",
  )
User.create!(
    id: 6,
    email: "6666@gmail.com",
    name: "ロクロー",
    password:  "66666666",
  )
User.create!(
    id: 7,
    email: "7777@gmail.com",
    name: "シチロー",
    password:  "77777777",
  )
User.create!(
    id: 8,
    email: "8888@gmail.com",
    name: "ハチロー",
    password:  "s88888888",
  )
User.create!(
    id: 9,
    email: "9999@gmail.com",
    name: "クロー",
    password:  "99999999",
  )
User.create!(
    id: 10,
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
    user_id: 10,
    title: "袋キャップミニ",
    body: "小麦粉や片栗粉、パン粉など、一度に使い切れない食材を輪ゴムでぐるぐる巻きにしたり、タッパーに入れて保管したりと手間がかかってましたが、このキャップで手間を解消されました！ 袋そのものに取り出し口を付けられて、キャップを閉めたらそのまま棚へ。片付けの手間も省けて楽チンで、おススメです！！",
    post_image: open("./app/assets/images/postimage1.jpg")
  )
Post.create!(
    id: 2,
    genre_id: 1,
    user_id: 2,
    title: "チョップドカッター",
    body: "野菜のカットが簡単にできるため、包丁で野菜をカットする手間がなく時短に最適です！！カッターは細目と粗目の2種類があり、用途に合わせてサイズが選べるのもポイントでした！均等な形にカットできるため、スープなどに使用すると均等に火が入って結構便利です！！",
    post_image: open("./app/assets/images/postimage2.jpg")
  )
Post.create!(
    id: 3,
    genre_id: 1,
    user_id: 3,
    title: "アピュイ マルチスタンド",
    body: "調理台の上に散乱しがちな調理グッズをコンパクトに片付けられておススメです！！デザインも家の形をした可愛いデザインで、並べて置いておくとおしゃれなキッチン空間になりました！カラーバリエーションも豊富で、インテリアやキッチンの雰囲気に合わせて色を選べるものグッドでした！",
    post_image: open("./app/assets/images/postimage3.jpg")
  )
Post.create!(
    id: 4,
    genre_id: 1,
    user_id: 4,
    title: "ベジヌードルカッター",
    body: "野菜を道具にセットし、後はくるくると回すだけで麺状になった野菜が出てきます。誰でも簡単に野菜麺が作れる上に、まな板も包丁も必要ないため、洗い物が少なく済んでおすすめです。大きさもりんご1個分くらいのサイズに片付くため、スペースも取らず収納できて便利です！！",
    post_image: open("./app/assets/images/postimage4.jpg")
  )
Post.create!(
    id: 5,
    genre_id: 1,
    user_id: 5,
    title: "フリーザーバッグ スタンド",
    body: "フリーザーバッグの口を開けたまま自立させられる活気的なグッズです！料理をフリーザーバッグに入れる時に倒れてしまい入れずらかったですが、これを使うことで袋を立ててくれるので、個体、液体問わずとても入れやすくおススメです！！",
    post_image: open("./app/assets/images/postimage5.jpg")
  )
