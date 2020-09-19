
def plan(travels)
   travels.each.with_index(1) do |travel,i| 
      puts "#{i}.#{travel[:name]}¥#{travel[:price]}"
   end
end

def travels_choice(travels)
   travels_selected_num = gets.to_i
   travels_menu = travels[travels_selected_num - 1]    
   puts "#{travels_menu[:name]}ですね, 何人で行きますか？"  
   travels_menu
end


puts "旅行プランを選択して下さい> "

travels = [
            {name:"沖縄旅行", price:10000},
            {name:"北海道旅行", price:20000},
            {name:"九州旅行", price:15000}
        ]

 plan(travels)

print "プランを選択 > "

travels_menu = travels_choice(travels)

print "人数を入力 > "
 
people_selected_num = gets.to_i

if people_selected_num >= 5
   sale_price = travels_menu[:price]-travels_menu[:price]/10
   sum = sale_price*people_selected_num     
   puts "5人以上なので10%割引になります"
   puts "合計金額:¥#{sum}" 
else
   sum = travels_menu[:price]*people_selected_num  
   puts "合計金額:¥#{sum}" 
end
  
