module CowHelper
  def cows
    @a.map(&:succ)
  end

  def noes(value)
    if value.odd?
      "Hello #{value}"
    else
      "NOES Hello #{value}"
    end
  end
end
