# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "斎藤"
  p names

end

def q2
  array1 = %w(dog cat fish)
  array2 = %w(bird bat tiger)

  # 以下に回答を記載
  array = array1 + array2
  print(array)
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
  # 以下に回答を記載
  p numbers.count(3)
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載

  sports.compact!
  p sports

end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  p array1.empty?
  p array2.empty?

end

def q6
  numbers1 = [1, 2, 3, 4, 5]
  numbers2 = []

  # 以下に回答を記載
  numbers1.each do |number|
    numbers2.push(number*10)
  end
  p numbers2

end

def q7
  array = ["1", "2", "3", "4", "5"]
  array.map!(&:to_i)
  # 以下に回答を記載
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記
  upper_case_programming_languages = programming_languages.map(&:upcase)
  programming_languages.map!(&:capitalize)
  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) {|name,i| puts "会員No.#{i} #{name}さん"}
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?("うに")
      puts "#{food}　：　好物です"
    else
      puts "#{food}　：　まあまあ好きです"
    end
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  #出力内容を選定
  sports.flatten!.uniq!
  #出力
  sports.each.with_index(1) do |sport ,i|
    puts "No#{i} #{sport}"
  end
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  puts data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  user_data.merge!(update_data)
  p user_data
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  data_2 = data.keys
  p data_2
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  datas = [data1,data2]
  datas.each do |data|
    puts data.include?(:age) ? "OK" : "NG"
  end
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end
end

class UserQ17
  # 以下に回答を記載
  attr_accessor :name
  attr_accessor :age
  attr_accessor :gender
  attr_accessor :admin
  def initialize(**user)
    self.name = user[:name]
    self.age = user[:age]
    self.gender = user[:gender]

    self.admin= user[:admin] ? "有り" : "無し"
  end

  def info
    puts <<~EOS
    名前：#{self.name}
    年齢：#{self.age}
    性別：#{self.gender}
    管理者権限：#{self.admin}
    EOS
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  attr_accessor :name
  attr_accessor :age
  # 以下に回答を記載
  def initialize(**user)
      self.name = user[:name]
      self.age =user[:age]
  end
  def introduce
    if self.age >= 20
      return <<~TEXT
      こんにちは，#{self.name}と申します。宜しくお願いいたします。
      TEXT
    else
      return <<~TEXT
      はいさいまいど〜，#{self.name}です！！！
      TEXT
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  attr_accessor :name
  def initialize(name:)
    self.name = name
  end

end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_accessor :name
  attr_accessor :age
  def initialize(name: ,age:)
    self.name = name
    self.age = age
  end
end

class Zoo
  # 以下に回答を記載
  attr_accessor :name
  attr_accessor :entry_fee

  def initialize(name:,entry_fee:)
    self.name = name
    self.entry_fee = entry_fee
  end

  def info_entry_fee(user)
    if user.age >= 0 && user.age <= 5
      price = self.entry_fee[:infant]
    elsif user.age >= 6 && user.age <= 12
      price = self.entry_fee[:children]
    elsif user.age >= 13 && user.age <= 64
      price = self.entry_fee[:adult]
    elsif user.age >= 65 && user.age <= 120
      price = self.entry_fee[:senior]
    end
    puts "#{user.name}さんの入場料金は #{price} 円です。"
  end
end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end
