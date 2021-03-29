module Welcome
  def self.included(base)
    base.extend ClassMethods
    # base.send :include, InstanseMethods
  end

  module ClassMethods
    attr_writer :welcome

    def welcome
      puts "
      _______  ___      _______  _______  ___   _             ___  _______  _______  ___   _
     |  _    ||   |    |   _   ||       ||   | | |           |   ||   _   ||       ||   | | |
     | |_|   ||   |    |  |_|  ||       ||   |_| |   ____    |   ||  |_|  ||       ||   |_| |
     |       ||   |    |       ||       ||      _|  |____|   |   ||       ||       ||      _|
     |  _   | |   |___ |       ||      _||     |_         ___|   ||       ||      _||     |_
     | |_|   ||       ||   _   ||     |_ |    _  |       |       ||   _   ||     |_ |    _  |
     |_______||_______||__| |__||_______||___| |_|       |_______||__| |__||_______||___| |_|
     "
    end
  end

  #   module InstanseMethods
  #     def welcome
  #       self.class.instances += 1
  #     end
  #   end
end
