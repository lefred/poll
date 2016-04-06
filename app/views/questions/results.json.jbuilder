if @question.q_type == 2
    tot = {:correct => 0, :wrong => 0}
    @options.each do |option| 
        if option.correct == true
            tot[:correct]+=option.votes
        else
            tot[:wrong]+=option.votes
        end
    end
    json.array!(tot) do |hash, key| 
        json.label hash 
        json.value key
    end
else    
    json.array!(@options) do |option|
        json.value option.votes
        json.label option[:title]
    end
end    

