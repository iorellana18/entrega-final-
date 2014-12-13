class LecturaTwStreamController < ApplicationController

def index
end


def self.prox
  TweetStream.configure do |config|
  	config.consumer_key       = 'xYEFttTg61yWfZO20byljihWF'
  	config.consumer_secret    = 'DLdNpRAgcxsqdODqJP1yTSE7p02T3hSUDF1qMbz14QrVp5jKLO'
  	config.oauth_token        = '93945943-Pd4V1IuroSUUU4GsdzUvprQ0or0ZRAajUt8DMPgIb'
  	config.oauth_token_secret = 'GZWtSu5QEXmUJUb0ZTEjfdg262DxxX03IljeeCl5PtvhZ'
  	config.auth_method        = :oauth
  end
  
  e = Event.all

  h = Hashtag.all
  h_c = h.pluck(:hashtag_content)
  t_h = h.size

  u = Account.all
  u_t = u.where("type_account = ? OR type_account = ?",1,2).pluck(:user_twitter)
  t_u = u_t.size

  p = KeyWordsEvent.all
  pk_tw = p.pluck(:palabra)
  t_p = p.size
  
  sh = h_c.join(',')
  su_t = u_t.join(',')
  spk_tw = pk_tw.join(',');

  puts sh+"\n "+su_t+"\n "+spk_tw
  
  TweetStream::Client.new.track(spk_tw,sh,su_t) do |status| puts 
     	us_tw = '@' + status.user.screen_name
     
  #Busco usuraio
    op = Account.where(user_twitter: us_tw).exists? 
      if op
          a = Account.where(user_twitter: us_tw).take # Si existe cuenta la llamo a terreno
          puts "La cuenta ya existe"
          #Leo el tweet y lo almaceno
          t = Tweet.new
          t.account_id = a.id
          t.content_tweet = status.text
          t.key_tw_id = status.id
          t.save 
          if a.type_account == 0 #Si la cuenta no pertenece al evento y cuentra de promocion (Cuenta corriente)
            dtr = DataTweetReview.new
            dtr.state = "false"
            dtr.tweet_id = t.id
            dtr.save 
            t.data_tweet_review_id = dtr.id
            t.save  
          end  
      
    # contains t_h / hashtag_tweets
             uh = 0
             while uh < t_h 
              if t.content_tweet.downcase.include?(h_c[uh].downcase) == true
                  cs = HashtagTweet.new
                  h_ob = h.where(hashtag_content: h_c[uh]).take
                  a = h_ob.num_mentions_hashtag
                  a = a + 1
                  h_ob.num_mentions_hashtag = a
                  h_ob.save 
                  cs.hashtag_id = h_ob.id 
                  cs.tweet_id = t.id
                  cs.save
              end 
              uh = uh + 1 
             end
  
 
 
  #reference_a_ts / account_tweets
              k = 0
               while k < t_u
                if t.content_tweet.downcase.include?(u_t[k].downcase) == true
                    cs = AccountTweet.new
                    u_t_ob = u.where(user_twitter: u_t[k]).take
                    cs.account_id = u_t_ob.id 
                    cs.tweet_id = t.id
                    cs.save
                end 
                k = k + 1 
           end

  #reference_t_e / event_tweets
              m = 0
               while m < t_p 
                if t.content_tweet.downcase.include?(pk_tw[m].downcase) == true
                    cs = EventTweet.new
                    pk_tw_ob = p.where(palabra: pk_tw[m]).take
                    ev = e.where(id: pk_tw_ob.event_id).take
                    cs.event_id = ev.id 
                    cs.tweet_id = t.id
                    cs.save
                end 
                m = m + 1 
           end

      else #Si no Creo Cuenta y la guardo en el sistema
          a = Account.new
          a.user_twitter = us_tw
          a.user_name = status.user.name
          a.key_user_id = status.user.id
          a.type_account = 0
          a.save
          t = Tweet.new
          t.account_id = a.id
          t.content_tweet = status.text
          t.key_tw_id = status.id
          t.save
          if a.type_account == 0 #Si la cuenta no pertenece al evento y cuentra de promocion (Cuenta corriente)
            dtr = DataTweetReview.new
            dtr.state = "false"
            dtr.tweet_id = t.id
            dtr.save 
            t.data_tweet_review_id = dtr.id
            t.save  
          end  


    # contains t_h / hashtag_tweets
             uh = 0
             while uh < t_h 
              if t.content_tweet.downcase.include?(h_c[uh].downcase) == true
                  cs = HashtagTweet.new
                  h_ob = h.where(hashtag_content: h_c[uh]).take
                  a = h_ob.num_mentions_hashtag
                  a = a + 1
                  h_ob.num_mentions_hashtag = a
                  h_ob.save 
                  cs.hashtag_id = h_ob.id 
                  cs.tweet_id = t.id
                  cs.save
              end 
              uh = uh + 1 
             end
  
 
 
  #reference_a_ts / account_tweets
              k = 0
               while k < t_u
                if t.content_tweet.downcase.include?(u_t[k].downcase) == true
                    cs = AccountTweet.new
                    u_t_ob = u.where(user_twitter: u_t[k]).take
                    cs.account_id = u_t_ob.id 
                    cs.tweet_id = t.id
                    cs.save
                end 
                k = k + 1 
           end

  #reference_t_e / event_tweets
              m = 0
               while m < t_p 
                if t.content_tweet.downcase.include?(pk_tw[m].downcase) == true
                    cs = EventTweet.new
                    pk_tw_ob = p.where(palabra: pk_tw[m]).take
                    ev = e.where(id: pk_tw_ob.event_id).take
                    cs.event_id = ev.id 
                    cs.tweet_id = t.id
                    cs.save
                end 
                m = m + 1 
           end
  #############################
      end
   

 #Relleno otras tablas 
 # rellenar reference_t_es, contains_t_hs, reference_a_ts 
 # (Analizando contenido de tweet y agregando datos)

  end
end

end
