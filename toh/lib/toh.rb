class TowersOH
  attr_accessor :towers

  def initialize(towers)
    @towers = towers
  end

  def move(take, put)
    if valid_move?(take, put)
      towers[put] << towers[take].pop
    end
    towers
  end

  def valid_move?(take, put)
    return true if towers[put].empty? || towers[put].last < towers[take].last
    false
  end

  def won?
    towers[1] == [3, 2, 1] || towers[2] == [3, 2, 1]
  end

end
