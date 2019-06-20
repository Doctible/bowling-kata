class Bowling
  def initialize(input)
    @frames = input.split(' ')
    puts input
  end

  def total_score
    @frames.each_with_index.map do |frame, i|
      frame_score(frame, i)
    end.sum
  end

  def frame_score(frame, i)
    if frame == 'X'
      10 + (i >= 9 ? 0 : next_rolls(2, i + 1))
    elsif frame.include?('/')
      10 + (i >= 9 ? 0 : next_rolls(1, i + 1))
    else
      frame.chars.map(&:to_i).sum
    end
  end

  def next_rolls(roll_count, i)
    return 0 if @frames.count <= i

    if roll_count == 1 # spare
      roll = @frames[i].chars[0]
      roll == 'X' ? 10 : roll.to_i
    else # strike
      if @frames[i].chars.count == 2
        @frames[i].include?('/') ? 10 :
          @frames[i].chars.map(&:to_i).sum
      else
        10 + next_rolls(1, i + 1)
      end
    end
  end
end
