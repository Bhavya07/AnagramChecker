class CheckController < ApplicationController
  def anagram
  	@w1=params[:firstword]
  	@w2=params[:secondword]
  	@foo=nil
    @wd1=@w1.to_s.delete('^a-zA-Z `~!@#$%^&*()-=+{}\|/.,<>;:\'?')
    @wd2=@w2.to_s.delete('^a-zA-Z `~!@#$%^&*()-=+{}\|/.,<>;:\'?')
    @w1=@w1.to_s.delete('^a-zA-Z')
    @w2=@w2.to_s.delete('^a-zA-Z')
  	if(@wd1.to_s.length>0 && @wd2.to_s.length>0)
  		@foo=checkanagram(@w1,@w2)
  	end
  end
  private
 	def checkanagram(word1,word2)
    	word1 = word1.to_s.downcase.split('').sort
    	word2 = word2.to_s.downcase.split('').sort
      if(word1.length>0 && word2.length>0)
    	   word1 == word2 ? true : false
      else
        false
      end
	end
end