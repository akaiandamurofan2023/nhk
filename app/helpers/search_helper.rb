module SearchHelper

  def today
    Date.today
  end

  def date_selecter
    {今日: 0, 明日: 1, 明後日: 2, ３日後: 3, ４日後: 4, ５日後: 5, ６日後: 6}
  end

  def selected_area(search)
    { selected: search ? search[:area] : '130' }
  end

  def selected_service(search)
    { selected: search ? search[:service] : 'g1' }
  end

  def selected_date(search)
    { selected: search ? search[:after] : 0 }
  end
  
  def strf_time(date)
    DateTime.parse(date).strftime("%H時 %M分")
  end
  
  def strif_date(date)
    date.to_date.strftime("%Y年 %m月 %d日")
  end
end