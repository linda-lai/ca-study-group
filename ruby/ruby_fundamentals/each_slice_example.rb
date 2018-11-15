arr= (1..100).to_a

n=3

arr.each_slice(n) do |value|
    if value[n-1].nil? == false
        p value[n-1]
    end
end