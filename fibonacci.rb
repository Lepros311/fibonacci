def fibs(n)
  sequence = []
  if n == 0
    sequence
  elsif n == 1
    sequence = [0]
  else
    sequence = [0, 1]
    until sequence.length == n do
      sequence << (sequence[-1] + sequence[-2])
    end
  end
  sequence
end

p fibs(8)

def fibs_rec(n, arr = [0])
  if n == 0
    arr
  elsif n == 1
    [0]
  elsif arr.length == 1
    # arr.push(1)
    fibs_rec(n-1, arr << 1)
    arr
  else
    fibs_rec(n-1, arr << (arr[-1] + arr[-2]))
    arr
  end
end

p fibs_rec(8)

def fibs_rec2(n, arr = [0])
  return arr if n < 2

  if arr.length == 1
    arr << 1
  else
    arr << arr[-1] + arr[-2]
  end

  fibs_rec(n-1, arr)
end

p fibs_rec2(8)
