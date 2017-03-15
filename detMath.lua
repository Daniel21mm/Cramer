function steper(a,b)
 local tmp = 1
  for i=1, b
   do
    tmp = tmp * a
   end
   return tmp
end


--возвращение подминора
function getMinor(m,index)
local newMinor =	{}
 
 for i=1, #m -1 
  do

   newMinor[i] = {}   
 end 
 
  for i=2, #m
   do
    local inloc
    inloc = 1

      for j=1, #m
       do
       
        if j ~= index then       
        newMinor[i-1][inloc] = m[i][j]
        inloc = inloc + 1
        end
        
       end
   end
  return newMinor
end

--определитель минора
function detMinor(m)
 if #m==2 then
    return (m[1][1]*m[2][2] - m[1][2]*m[2][1])
 else
    local rez = 0 
  for i=1, #m
    do
      rez = rez + m[1][i]*steper(-1,i+1)*detMinor( getMinor (m, i ) )
      
    end
   return rez 
 end
end


function createrMatrixFromfreeMemders(m, v, index)
	local newMatr = {}
	for i = 1, #m
		do
			newMatr[i] = {}
		end
	
	for i = 1, #m
		do
			for j = 1, #m
				do
					if j ~= index then
						newMatr[i][j]=m[i][j]
					else
						newMatr[i][j] = v[i]
					end
				end
		end
	return newMatr
end









