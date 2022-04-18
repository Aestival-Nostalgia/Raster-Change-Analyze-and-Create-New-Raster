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

# create new raster
r3 <- raster(r1)
r4 <- raster(r1)
r5 <- raster(r1)

# fill based on conditions，计算方法肯定还有迭代的空间，如果一遍一遍进行计算，算法的效率未免也太低了。

#r3的栅格值为r2的十倍！
r3 <- 10 * r2

#r4，对于r4，是通过r3和r1的数学运算关系来判断土地利用转移的结果的
r4 <- r3 - r1

#通过数学计算，对r5进行定义，如何减少R遍历整个栅格图层的次数，是减少运算时间，提高运算效率的关键！！另外，丨符号是R语言的或运算
r5[r4 == 2 | r4 == 19 | r4 == 17 | r4 == 16 | r4 == 15 | r4 == 14 | r4 == 13 | r4 == 12 ] <- 0
r5[r4 == 9 | r4 == 8 | r4 == 7 | r4 == 6 | r4 == 5 | r4 == 4 | r4 == 3 | r4 == 1 | r4 == 18 | r4 == 11 ] <- 1

plot(r5)

#barplot(r3) #粗略统计，生成柱状图