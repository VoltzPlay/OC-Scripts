function countItem(rs, tag)
  local stack = rs.getItem(tag)
	
  if stack then
    return stack.size
  end

  return 0
end

function countOres()
  local oreCounts = {}
  
  for index, ore in ipairs(ores) do
	oreCounts[ore] = 0
	
	for subIndex, subOre in ipairs(oreTags[ore]) do
	  oreCounts[ore] = oreCounts[ore] + countItem(publicRs, subOre)
	end
  end
  
  return oreCounts
end

function countProductsStock()
  print("called")
  local ingotCounts = {}
  
  for i, ore in ipairs(ores) do
    ingotCounts[ore] = countItem(privateRs, ingotTags[ore])
  end
  
  return ingotCounts
end

function calculateMaxOres(productStock)
  local maxOres = {}
  
  for i, ore in ipairs(ores) do
    maxOres[ore] = math.floor(productStock / 5)
  end
  
  return productCounts
end

function calculateProducts(oreCounts)
  local productCounts = {}
  
  for i, ore in ipairs(ores) do
    productCounts[ore] = math.floor((oreCounts[ore] * 5) * 0.95)
  end
  
  return productCounts
end

function limitOres(oreCounts, maxOres)
  for i, ore in ipairs(ores) do
    oreCounts[ore] = math.min(oreCounts[ore],maxOres[ore])
  end
  
  return productCounts
end

function doTrade(oreCounts, productCounts)
  if validate(productCounts) == false
  then
	  return
  end
  transferOre(oreCounts)
  transferIngots(productCounts)
end

function validate(productCounts)

	for i, ore in ipairs(ores) 
	do
		if(countItem(privateRs,ingotTags[ore]) < productCounts[ore])
		then
			return false
		end
	end
end
function transferIngots(productCounts)
	for index, ore in ipairs(ores) 
	do
		transfer(privateRs,config.privateSide,ingotTags[ore], productCounts[ore])
	end
end
function transferOre(oreCounts)
  for index, ore in ipairs(ores) 
  do
	  local toTransfer = oreCounts[ore]
    for subIndex, subOre in ipairs(oreTags[ore]) 
    do
		  suboreCount = countItem(publicRs,subOre)
		  if transfer(publicRs,config.publicSide,subOre, suboreCount)
		  then
			  toTransfer = toTransfer - suboreCount
		  end
	  end
  end
end

function transfer(rs,rsSide,item, ItemCount)
--validate
  
  if (countItem(rs, item) < ItemCount) 
  then
    return false
  end
  
  
  local toTransfer = ItemCount
  
  while (toTransfer > 0) 
  do
    local extracted = rs.extractItem(item, toTransfer, rsSide)
    toTransfer = toTransfer - extracted
  end

  return true
end