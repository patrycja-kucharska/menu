module EntriesHelper

  def week_days(entries)
    entries.first.date.all_week.collect { |day| day.strftime("%A")}
  end

  def get_lunches(entries)
    entries.filter { |entry| entry.is_lunch? }
  end

  def get_dinners(entries)
    entries.filter { |entry| entry.is_dinner? }
  end

end
