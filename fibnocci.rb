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

unsortedArr = [31, 27, 28, 42, 13, 8, 11, 30, 17, 41, 15, 43, 1, 36, 9, 16, 20, 35, 48, 37, 7, 26, 34, 21, 22, 6, 29, 32, 49, 10, 12, 19, 24, 38, 5, 14, 44, 40, 3, 50, 46, 25, 18, 33, 47, 4, 45, 39, 23, 2];

def mergeSort(numArr) 
  result = [];
	if numArr.length == 1
  	return numArr;
  end
  halfLength = (numArr.length / 2).floor();
  leftArr = numArr.slice(0, halfLength);
  rightArr = numArr.slice(halfLength, numArr.length);
	return (
  	merge(mergeSort(leftArr), mergeSort(rightArr))
  );
end

def merge(arr1, arr2) 
  sorted = [];

  while arr1.length != 0 && arr2.length != 0 do
  	if arr1[0] < arr2[0] 
    	sorted.push(arr1.shift());
    else 
    	sorted.push(arr2.shift());
    end
  end

  return sorted.concat(arr1.slice(0,arr1.length).concat(arr2.slice(0,arr2.length)));
end

puts mergeSort(unsortedArr)
