class PagesController < ApplicationController
  def about
  end

  def home
  end

  def contact # => look for a views/pages/contact.html.erb
    search = params[:member]
    # params = { member: "leo" }

    # the '@' makes it available to the view
    @members = ['leonardo', 'michelangelo', 'raphael', 'donatello']

    if search.present?
      @members = @members.select { |member| member.start_with?(search.downcase) }
    end
    # DON'T NEED TO RETURN ANYTHING
  end
end
