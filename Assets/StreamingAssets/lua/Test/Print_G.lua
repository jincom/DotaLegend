local count = 0
for n in pairs(_G) do
  count = count + 1
  print(n)
end
print('_G count is :'..count)