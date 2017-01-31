def percentage(a, b)
  if b == 0
  	return 0
  end
  a*100/b
end

Asia = {
  "アフガニスタン" => "カブール",
  "インドネシア" => "ジャカルタ",
  "日本" => "東京",
  "マレーシア" => "クアラルンプール",
  "フィリピン" => "マニラ",
  "ロシア" => "モスクワ",
  "ベトナム" => "ハノイ",
  "バングラデシュ" => "ダカ",
  "ブータン" => "ティンプー",
  "カンボジア" => "プノンペン"
 }

 Europe = {
  "アルバニア" => "ティラナ",
  "アルジェリア" => "アルジェ",
  "アンドラ" => "アンドラ・ラ・ヴェリャ",
  "オーストリア" => "ウィーン",
  "ベラルーシ" => "ミンスク",
  "ベルギー" => "ブリュッセル",
  "ボスニア・ヘルツェゴビナ" => "サラエボ",
  "ブルガリア" => "ソフィア",
  "クロアチア" => "ザグレブ",
  "キプロス" => "ニコシア",
 }

border = "---------------------------------------------"

while true do
	puts border
	puts "？？世界の首都クイズ？？"
	puts border
	puts "どの地域を選択しますか？"
	puts "1: アジア, 2: ヨーロッパ, 3: 南北アメリカ(今は選択できません), 4: アフリカ(今は選択できません), 5: 終了"
	num = gets.chomp.to_i
	case num
	when 1
		loop_count = 0
    correct_count = 0

		asiaHash = Hash[Asia.to_a.sample(Asia.size)]
		puts "アジア首都クイズへようこそ！(stopで中断できます)"
		asiaHash.each do |country, capital|
			puts "#{country}の首都は？"
			answer = gets.chomp
			if answer == "stop"
				break
			elsif answer == capital
				puts "アタリ"
				correct_count += 1
			else
				puts "ハズレ"
				puts "正解は#{capital}や"
			end

			loop_count += 1
		end
	when 2
		loop_count = 0
    correct_count = 0

		europeHash = Hash[Europe.to_a.sample(Europe.size)]
		puts "ヨーロッパ首都クイズへようこそ！(stopで中断できます)"
		europeHash.each do |country, capital|
			puts "#{country}の首都は？"
			answer = gets.chomp
			if answer == "stop"
				break
			elsif answer == capital
				puts "アタリ"
				correct_count += 1
			else
				puts "ハズレ"
				puts "正解は#{capital}だ"
			end

			loop_count += 1
		end
	when 3
		break
	when 4
		break
	when 5
		break
	else
		break
	end

	puts "あなたの正解率は#{percentage(correct_count, loop_count)}％です"
end
