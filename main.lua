dofile("detMath.lua")

print("введите размерность слау ") 
local size = io.read()

matrix = {}
for i=1,size 
 do 
    matrix[i] = {}
    print("введите "..i.."-ую строку коэфицентов")
    for j=1, size
    do
    matrix[i][j]=io.read()
    end
 end

mainMinor = detMinor(matrix)

print(mainMinor)

print("введите столбец свободных членов")
freeMembers = {}
for i = 1, size
 do
	freeMembers[i] = io.read()
 end

x = {}
for i = 1, size
	do
		x[i] = detMinor( createrMatrixFromfreeMemders(matrix, freeMembers, i))
		print(x[i])
	end

for i = 1, size
	do
		print("x"..i.." = "..(x[i]/mainMinor) )
	end

print("Hello Lua")
