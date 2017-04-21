# 子うさぎが1羽いる、子うさぎは1年経つと大人のうさぎとなり、また1年経つと子うさぎを1羽産む
# うさぎは死なないものとする　N年後までの毎年、子うさぎと大人うさぎが何羽になっているのか

border = '------------------------------------------------------------------'

puts "子うさぎが1羽いる、子うさぎは1年経つと大人のうさぎとなり、また1年経つと子うさぎを1羽産む。"
puts "うさぎは死なないものとし、N年後の子うさぎと大人うさぎの数を求める。"
puts border
print 'N(数字で入力): '
n = gets.chomp.to_i
total = 0
child = 0
adult = 0
count = 1

if n >= 0
  if n == 0
  	child = 1
  elsif n == 1
  	adult = 1
  elsif n == 2
  	adult = 1
  	child = 1
  	total = adult + child
  elsif n >= 3
  	i = 3
  	adult = 1
  	child = 1
  	while i <= n do
  		total = adult * 2 + child
  		adult = adult + child
  		child = total - adult
  		i += 1
  	end
  else
  	puts border
  	puts "その数字には対応していません"
  end
end

puts border
puts "#{n}年後、子うさぎは#{child}羽、大人うさぎは#{adult}羽"