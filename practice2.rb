class FoodStuff

	attr_accessor :name, :price
  
  @@count = 0
  @@total_price = 0
  @@money = 10000


	def self.count
		@@count
	end

	def self.total_price
		@@total_price
	end

	def self.left_money
		10000 - @@total_price 
	end

	def self.info
		puts "商品の個数は全部で#{FoodStuff.count}点、お会計は#{FoodStuff.total_price}円になります。"
	end

	def initialize(name, price)
		@name = name
		@price = price
		@@count += 1
	end

	def sum(price)
    @@total_price += price
	end

end



class Meat < FoodStuff

	attr_accessor :gram

	def initialize(name, price, gram)
		super(name, price)
		@gram = gram
	end

	def info
		puts "#{self.gram}g#{self.price}円の#{self.name}を買い物カゴに入れました。"
	end
end



class Vegetable < FoodStuff

	attr_accessor :area

	def initialize(name, price, area)
		super(name, price)
		@area = area
	end

	def info
		puts "#{self.price}円の#{self.area}産#{self.name}を商品買い物カゴに入れました。"
	end
end



class Fish < FoodStuff

	attr_accessor :number

	def initialize(name, price, number)
		super(name, price)
		@number = number
	end

	def info
		puts "#{self.number}匹#{self.price}円の#{self.name}を買い物カゴに入れました。"
	end
end



class DairyProduct < FoodStuff

	attr_accessor :animal

	def initialize(name, price, animal)
		super(name, price)
		@animal = animal
	end

	def info
		puts "#{self.animal}の乳で作られた#{self.price}円の#{self.name}を買い物カゴに入れました。"
	end
end



class InstantFood < FoodStuff

	def initialize(name, price)
		super
	end

	def info
		puts "#{self.price}円のインスタント食品#{self.name}を買い物カゴに入れました。"
	end
end



bar = "--------------------------------------------------"
puts "買い物を始めましょう。所持金は1万円です。"
puts "1: 買い物をする, 2: 買い物をやめる"
action = gets.chomp.to_i
puts bar
  
if action == 1
	while true do
		puts "どのコーナーに向かいますか？"
		puts "1: お肉, 2:野菜, 3: お魚, 4: 乳製品, 5: インスタント食品, 6: お会計"
		number = gets.chomp.to_i
		puts bar
		case number
		when 1..5
			case number
			when 1
				puts "お肉コーナーに到着しました。"
      when 2
	   		puts "野菜コーナーに到着しました。"
			when 3
				puts "お魚コーナーに到着しました。"
			when 4
				puts "乳製品コーナーに到着しました。"
			when 5
				puts "インスタント食品コーナーに到着しました。"
			else
				break
			end
      

			while true do
				puts "何を購入しますか？"
				stuffName = gets.chomp
				puts bar
				puts "値段はいくらでしたか？(数字のみを半角で入力)"
				stuffPrice = gets.chomp.to_i
				puts bar

				if FoodStuff.total_price + stuffPrice > 10000
					puts "お買い物の合計金額が所持金を超えてしまいます。"
					puts "商品を棚に戻しました。"
					puts bar
					puts "残りの所持金は#{FoodStuff.left_money}円です。"
					puts "1: 買い物を続ける, 2: お会計"
					num = gets.chomp.to_i
					if num == 2
						number = 6
						next
					elsif num == 1
						puts bar
						puts "どのコーナーに向かいますか？"
						puts "1: お肉, 2:野菜, 3: お魚, 4: 乳製品, 5: インスタント食品"
						number = gets.chomp.to_i
						puts bar
						case number
						when 1
							puts "お肉コーナーに到着しました。"
			      when 2
				   		puts "野菜コーナーに到着しました。"
						when 3
							puts "お魚コーナーに到着しました。"
						when 4
							puts "乳製品コーナーに到着しました。"
						when 5
							puts "インスタント食品コーナーに到着しました。"
						else
							break
					  end
					else
						break
					end
				else
					break
				end
			end

			case number
			when 1
				puts "何グラム購入しましたか？(数字のみを半角で入力)"
				stuffGram = gets.chomp.to_i
				foodStuff = Meat.new(stuffName, stuffPrice, stuffGram)
			when 2
				puts "産地はどこですか？(都道府県または外国名を入力)"
				stuffMadeIn = gets.chomp
        foodStuff = Vegetable.new(stuffName, stuffPrice, stuffMadeIn)
			when 3
				puts "何匹購入しましたか？"
		    stuffNumber = gets.chomp.to_i
        foodStuff = Fish.new(stuffName, stuffPrice, stuffNumber)
			when 4
        puts "何の動物のミルクで作られていますか？"
        stuffAnimal = gets.chomp
        foodStuff = DairyProduct.new(stuffName, stuffPrice, stuffAnimal)
			when 5
        foodStuff = InstantFood.new(stuffName, stuffPrice)
		  else
		  	break
		  end
		  
		  foodStuff.info
		  foodStuff.sum(stuffPrice)

	  when 6
			puts "買い物を終了します。"
			FoodStuff.info
			break
		else
			puts "その数字には対応していません。"
			break
		end
	end
else
	puts "またのお越しをお待ちしています。"
end