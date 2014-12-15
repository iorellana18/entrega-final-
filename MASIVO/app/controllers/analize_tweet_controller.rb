class AnalizeTweetController < ApplicationController

 def index
 end

#def analisis
  @t = DataTweetReview.where('state = ?', 0).limit(100) #chunk de 100, se puede de mas
 
  @keywords = [['Malo',-1],['Fome',-2],['buenisimo',3],['malisimo',-3], [':)',1], ['super',1],[':(',-1],['>:(',-2]] #Rellenar con palabras y su valor

    @t.each do |tweet|
      final_value = 0
      ta = Tweet.where('data_tweet_review_id = ?', tweet.id).first
      @words = ta.content_tweet.split(' ')
      @words.each do |word|
        @keywords.each do |keyword|
          if word.downcase == keyword[0].downcase
          final_value = final_value + keyword[1]
          break
          end #if word == keyword[0]
        end #keywords.each do |keyword|
      end #@words.each do |word|
      tweet.update(state: 1, sensitivity_rank: final_value)
      @keywords_tweeter = KeyWordsEvent.all
      @words.each do |word|
        @keywords_tweeter.each do |keyword|
         if keyword.palabra.downcase == word.downcase
            e = ReviewEvent.where('event_id = ?', keyword.event_id).first
            e.num_of_mentions = e.num_of_mentions + 1
            if final_value < 0
              e.num_mentions_negative_sum = e.num_mentions_negative_sum + 1
            else
              e.num_mentions_positive_sum = e.num_mentions_positive_sum + 1
            end #if final_value < 0
            e.save
         end # if keyword.palabra == word
        end # @keywords_tweeter.each do |keyword|
      end #@words.each do |word|
   end #@t.each do |tweet|
   
#end

#self.analisis

end
