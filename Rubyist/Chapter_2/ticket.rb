class Ticket
  attr_reader :venue, :date, :price
  attr_writer :price
  
  def initialize(venue, date)
    @venue = venue
    @date = date
  end
  
  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
  
end

