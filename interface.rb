class Interface
  def initialize
    @game = Game.new(introduction)
    new_game
    @skip = false
    @end = false
  end

  def introduction
    puts 'БЛЭК ДЖЭК'
    print 'Введите имя: '
    gets.chomp
  end

  def new_game
    puts 'Новый раунд'
    @game.new_game
    print_info
    @skip = false
    @end = false
    actions
  end

  def print_info(hide_dealer = true)
    if hide_dealer
      puts 'Карты дилера'
      puts '** ' * @game.dealer.cards.size
    else
      puts 'Карты дилера | Очки дилера'

      puts @game.dealer.cards.map(&:face).join(' ')
      puts @game.dealer.points
    end
    puts 'Карты игрока | Очки игрока'
    puts @game.user.cards.map(&:face).join(' ')
    puts @game.user.points
  end

  def actions
    loop do
      break if @end

      puts '1 --- пропустить ход' unless @skip
      puts '2 --- открыть карты'
      puts '3 --- взять карту'

      choise_move = gets.chomp.to_i

      case choise_move
      when 1
        if @skip
          puts 'Вы уже делали этот ход'
        else
          @game.dealer.turn(@game.deck)
          print_info
          @skip = true
        end
      when 2
        result_game
      when 3
        @game.user.take_card(@game.deck)
        result_game

      end
    end

    ask_new_game
  end

  def result_game
    print_info(false)
    winner = @game.winner
    if winner
      puts "победил #{winner.name}"
      @game.send_money(winner)
      puts "Деньги победителя #{winner.money}"
    else
      puts 'ничья'
    end

    @end = true
  end

  def ask_new_game
    puts 'Играт ещё раз - нажмите "y", для выхода нажмите любую клавишу'
    choise = gets.chomp
    new_game if choise == 'y'
  end
end
