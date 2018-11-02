class Api::ExamplesController < ApplicationController
  def get_number
    fortune_bank = ["A lifetime friend shall soon be made.", "A lifetime of happiness lies ahead of you.", "A light heart carries you through all the hard times."]
    @fortune = fortune_bank.sample

    # @lotto = "#{(rand(1..60))}, #{(rand(1..60))}, #{(rand(1..60))}, #{(rand(1..60))}, #{(rand(1..60))}, #{(rand(1..60))}"
    @lottery_numbers =[]
    6.times do
      number = rand(1..60)
      @lottery_numbers << number
    end
    render "main_view.json.jbuilder"
  end

end
