module PostsHelper
  def formating_date(date)
    date.strftime("Published on %m/%d/%Y")
  end
end
