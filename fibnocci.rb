def fibs(num)
  sum = [];
  num.times do |n|
    if n === 0 || n === 1
      sum.push(n);
      p n
    else 
      sum.push(sum[n-1]+sum[n-2]);
      p sum[n]
    end
  end
end

fibs(10)

def fibs_rec(n, cache = [])
  total = []
 if (cache[n])
  return cache[n]
 elsif (n <= 2)
  cache[n] = 1
  total.push(cache[n])
 else
  cache[n] = fibs_rec(n-1, cache) + fibs_rec(n-2, cache)
  total.push(cache[n])
 end
 p total
 return cache[n]
end 

fibs_rec(10)