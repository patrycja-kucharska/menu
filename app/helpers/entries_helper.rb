module EntriesHelper

  def week_days(entries)
    entries.first.date..entries.first.date + 6
  end

  def get_lunches(entries)
    entries.filter { |entry| entry.is_lunch? }
  end

  def get_dinners(entries)
    entries.filter { |entry| entry.is_dinner? }
  end

  def badge_color(person_out)
    person_out ? "fill-red-500" : "fill-green-500"
  end

end
