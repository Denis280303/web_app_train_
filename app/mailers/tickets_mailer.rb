class TicketsMailer < ApplicationMailer
  def buy_ticket(user, ticket)
  	@user = user
  	@ticket = ticket
  	mail(to: user.email, subject: "Ви купили білет!")
  end

  def delete_ticket(user, ticket)
  	@user = user
  	@ticket = ticket
  	mail(to: user.email, subject: "Ви відмінили білет!")
  end
end
