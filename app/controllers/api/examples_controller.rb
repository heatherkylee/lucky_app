class Api::ExamplesController < ApplicationController
  def get_fortune
    fortune_bank = ["A lifetime friend shall soon be made.", "A lifetime of happiness lies ahead of you.", "A light heart carries you through all the hard times."]
    #random select from #fortunes
    @fortune = fortune_bank.sample
    render "fortune_view.json.jbuilder"
  end

  def get_number
    @lotto = "does this work"
    render "lotto_view.json.jbuilder"
  end
end

#(rand(10..60))