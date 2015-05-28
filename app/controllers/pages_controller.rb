class PagesController < ApplicationController

  def home
    @title = "Fortune Teller"
    reply = ["YOU WILL BE RICH. BE SURE TO SHARE THE WEALTH WITH THOSE LESS FORTUNATE!", "YOU SHALL HAVE 12 CHILDREN BEFORE YOU DIE.",
      "YOU SHALL LIVE A LONG BUT SAD LIFE", "THERE IS MONEY COMING FOR YOU IN THE MAIL. CHECK YOUR MAILBOX EVERY HOUR UNTIL SUNDAY OR YOU WILL MISS IT!", "YOU SHALL SEE AN OWL SOON.",
      "SOMEONE IS GOING TO GIVE YOU A BIG HUG THIS WEEK!"]
      @fortune = reply.sample
    end

    def lottery
      @title = "Lottery Numbers"
      @lotto1 = rand(1..50)
      @lotto2 = rand(1..50)
      @lotto3 = rand(1..50)
      @lotto4 = rand(1..50)
      @lotto5 = rand(1..50)
      @lotto6 = rand(1..50)
    end

    def beer
      @bottles = ""
      count = 100
      100.times do
        @bottles += " #{count} bottles of beer on the wall. #{count} bottles of beer. Take one down and pass it around. #{count - 1} bottles of beer on the wall. "
        count -= 1
      end
    end
  end
