class PagesController < ApplicationController

  def home
    @hashtags = Hashtag.all
    @goodvsevilsingle = ReviewEvent.joins(:event).where('name_event = ?', 'Mysteryland').pluck(:name_event, :num_mentions_negative_sum, :num_mentions_positive_sum).first
  end

  def about
  end

  def ranking
  	@ranks = ReviewEvent.joins(:event).order(num_of_mentions: :desc).pluck(:name_event, :num_of_mentions);
  end

end
