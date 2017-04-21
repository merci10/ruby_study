# 石取りゲームプログラム

# onece_stoneの範囲内でランダムな数字を返す
def rand(onece_stone)
	Random.rand(1..onece_stone)
end

border1 = "--------------------------------------------"
border2 = "----------------------------------"

puts "[石取りゲーム]"
puts "石取りゲームは、上から順番に石を取っていき、"
puts "最後の石を取った人が負けとなるゲームです。"
puts border1
print "積む石の数を入力してください: "
total_stone = gets.chomp.to_i
print "一度に取れる石の最大数を入力してください: "
onece_stone = gets.chomp.to_i
puts border1
puts "先攻はコンピューターです"

i = 1
while total_stone >  0
	if i % 2 == 0
		puts border2

		# 石の数が多すぎた時のループ
		my_lo = true
		while my_lo do
		  print "取る石の数を選んでください: "
		  my_stone = gets.chomp.to_i
		  if my_stone > onece_stone
		  	puts "取る石の数が多すぎます"
		  else
		    my_lo = false
		  end
		end

		total_stone -= my_stone

		if total_stone <= 0
			puts "石が０になりました"
			puts "勝者はコンピューターです"
		else
		  puts "残りの石は#{total_stone}個です"
		end
		i += 1

		puts border2
	else

		if total_stone < onece_stone
			computer_stone = rand(total_stone)
		else
		  computer_stone = rand(onece_stone)
		end

		puts "コンピューターは#{computer_stone}個の石を取りました"

		total_stone -= computer_stone

		if total_stone <= 0
			puts "石が０になりました"
			puts "勝者はあなたです"
		else
		  puts "残りの石は#{total_stone}個です"
		end
		i += 1
	end
end
