# ただのワンオクロックの歌詞打ち間違え探しアプリ

text = [
	"Switch the light off Welcome to the night",
	"What's the problem Not gonna make it right",
	"Bite the bullet Then pull the trigger hold tight",
	"It's a feeling you know",
	"言葉を飲み込んだ君の　何かを訴える目つきは",
	"例えれないくらい　冷たいの",
	"I take it for no one",
	"But I don't know what to call it",
	"When I know I don't care anymore",
	"いたずらに過ぎ去ってた昨日",
	"Cry out Will you tell me now",
	"So we say we want change and never be the same and yeah",
	"Cry out Oh I'm burning out",
	"Can't you hear the sound?",
	"全てが裏腹な僕の　弱みをつかもうとしても　さらに固く閉ざして見せるの",
	"それでも強引な君は　何かをチラつかせて見せて　あたかも平然を装うの",
	"I take it for no one",
	"But I don't know what to call it",
	"When I know I don't care anymore",
	"In the end I know we'll all be gone",
	"Cry out Will you tell me now",
	"So we say we want change and never be the same and yeah",
	"Cry out Oh I'm burning out",
	"Can't you hear the sound?",
	"One by one It's taking apart It's taking a part of me",
	"Can't you hear the voices screaming?",
	"Out loud to me I feel it",
	"We can be the change we needed",
	"Shout it out now shout it out now",
	"Cry out Will you tell me now",
	"So we say we want change and never be the same and yeah",
	"Cry out Oh I'm burning out",
	"Can't you hear the sound?",
]

border = '----------------------------'

puts "歌詞暗記練習テスト(33点満点)"
puts "曲名はCry out by ONE OK ROCKです。"
puts border

correct = 0

text.each do |txt|
	puts txt
	input = gets.chomp
	if txt == input
		correct += 1
	end
end

puts border
puts "あなたの点数は、#{correct} / 33 点です。"