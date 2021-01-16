class SalesMatch
  def sockMerchant(n, ar)

    num_pairs = 0

    b = Hash.new(0)

    ar.each do |v|
      b[v] += 1
    end

    b.each do |k, v|
      num_pairs += (v / 2)
    end

    puts num_pairs
  end
end

match = SalesMatch.new
match.sockMerchant(9, [10, 20, 20, 10, 10, 30 , 50, 20, 10])
match.sockMerchant(7, [1,2,1,2,1,3,2])
