## ----load-libraries----------------------------------------------------
# load raster package
library(sp)
library(raster)

#烦死了感觉写不完论文了救命啊啊啊啊啊啊好烦好烦好烦啊啊啊啊啊啊啊啊啊啊啊啊啊烦死了！！

# create two random rasters
r1 <- raster("G:/Bachelor_Degree_Thesis/DATA/LUCC_30m_WHU/Extracted/CLCD_v01_1985_clip.tif", band = 1)
r2 <- raster("G:/Bachelor_Degree_Thesis/DATA/LUCC_30m_WHU/Extracted/CLCD_v01_2019_clip.tif", band = 1)

# check that spatial extent is the same
extent(r1) == extent(r2)

#plot(r1) #稍微展示一下
#plot(r2)

# create r3 from r1
r3 <- raster(r1)

# fill based on conditions，计算方法肯定还有迭代的空间，如果一遍一遍进行计算，算法的效率未免也太低了。
r3[r1 == 4 & r2 == 7] <- 1
r3[r1 == 7 & r2 == 4] <- 2

plot(r3)

#barplot(r3) #粗略统计，生成柱状图
#本代码是基础代码，根据两个栅格值的情况，对新栅格进行赋值，使用了非常笨的办法：设定单个规则，每个规则都要求R对两个基础栅格的全部栅格值进行运算，代码效率非常的低
