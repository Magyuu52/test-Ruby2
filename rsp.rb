def rsc_system()
   puts "じゃんけん・・・\n0(グー) 1(チョキ) 2(パー) 3(戦わない)"
   player_number = gets.to_i
   enemy_number = rand(3)
   selection_hands = ["グー","チョキ","パー"]
      if player_number == 3
         escape_system()
      end
   puts "ホイ！"
   puts "------------------"
   puts "あなた：#{selection_hands[player_number]}を出しました\n相手：#{selection_hands[enemy_number]}を出しました"
      if (player_number == 0 && enemy_number == 1) || (player_number == 1 && enemy_number == 2) || (player_number == 2 && enemy_number == 0)
         direction_system_player
      elsif player_number == enemy_number
         draw_system()
      else
         direction_system_enemy()
      end
end

def draw_system()
   puts "あいこで・・・\n0(グー) 1(チョキ) 2(パー) 3(戦わない)"
   player_number = gets.to_i
   enemy_number = rand(3)
   selection_hands = ["グー","チョキ","パー"]
      if player_number == 3
         escape_system()
      end
   puts "ショ！"
   puts "------------------"
   puts "あなた：#{selection_hands[player_number]}を出しました\n相手：#{selection_hands[enemy_number]}を出しました"
      if (player_number == 0 && enemy_number == 1) || (player_number == 1 && enemy_number == 2) || (player_number == 2 && enemy_number == 0)
         direction_system_player()
      elsif player_number == enemy_number
         draw_system()
      else
         direction_system_enemy()
      end
end

def direction_system_player()
   puts "あっち向いて〜\n 0(上) 1（右） 2(下) 3(左)"
   player_direction = gets.to_i
   enemy_direction = rand(4)
   select_direction = ["上","右","下","左"]
   puts "ホイ！"
   puts "------------------"
   puts "あなた：#{select_direction[player_direction]}\n相手：#{select_direction[enemy_direction]}"
      if player_direction == enemy_direction
         puts "あなたの勝ちです！"
         exit
      else
         rsc_system()
         puts "------------------"
      end
end

def direction_system_enemy()
   puts "あっち向いて〜\n 0(上) 1（右） 2(下) 3(左)"
   player_direction = gets.to_i
   enemy_direction = rand(4)
   select_direction = ["上","右","下","左"]
   puts "ホイ！"
   puts "------------------"
   puts "あなた：#{select_direction[player_direction]}\n相手：#{select_direction[enemy_direction]}"
      if player_direction == enemy_direction
         puts "あなたの負けです..."
         exit
      else
         rsc_system()
         puts "------------------"
      end
end

def escape_system()
    puts "逃走完了！"
    exit
end

rsc_system()
