
# def lcs(a, b)
#   if a.is_a?(Array) && b.is_a?(Array)
#     common = a & b
#   else
#     c = a.chars
#     d = b.chars
#     common = c & d
#   end
#   common
# end


def lcs(a, b)
  index_a = 0
  index_b = 0
  longer = ''
  long_comm = []
  if a.length > b.length
    longer = a
  else
    longer = b
  end

  while index_a && index_b < longer.length
    if a[index_a] == b[index_b]
      if !long_comm.include?(a)
        long_comm << a[index_a]
      end
    elsif a[index_a] == b[index_b + 1]


  end
end


a = ['A','B','C','D','A','F']
b = ['A','C','B','C','F']


print lcs(a, b)
print lcs('testing', 'test')
