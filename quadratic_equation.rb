# 二次方程式の解を求めるプログラム

# 判別式が０以上で平方根がプラスの時の解
def sol_plus(a, b, c)
	(-b + Math.sqrt(b**2 - 4*a*c)) / 2*a
end

# 判別式が０以上で平方根がマイナズの解
def sol_minus(a, b, c)
	(-b - Math.sqrt(b**2 - 4*a*c)) / 2*a
end

# 重解
def sol_root(a, b, c)
	-b / 2*a
end

# 判別式を使った解の条件分岐
def answer(a ,b, c, d)
	if d > 0
		[sol_plus(a, b, c), sol_minus(a, b, c)]
	elsif d == 0
		[sol_root(a, b, c)]
	else
		"解は存在しませんでした"
	end
end

border = '------------------------------------'

puts "二次方程式の解を計算します"
puts "1: 解を求める, 2: やめる　(数字で入力してください)"
num = gets.chomp.to_i
if num == 1
	puts border
	puts 'ax2+bx+c=0 の a,b,c に入る数字を入力してください'
	print 'a: '
	a = gets.to_i
	print 'b: '
	b = gets.to_i
	print 'c: '
	c = gets.to_i
	# 判別式の値を求める
	d = b**2 - 4*a*c
	
	puts border
	print "答え\n"
	puts answer(a, b, c, d)
elsif num == 2
	puts border
	puts '計算を終了します'
else
	puts border
	puts 'その入力には対応していません'
end
