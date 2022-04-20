library(sp)
library(raster)

# change the tempdir() location
tempdir <- function() "G:/Rtemp"
unlockBinding("tempdir", baseenv())
utils::assignInNamespace("tempdir", tempdir, ns="base", envir=baseenv())
assign("tempdir", tempdir, baseenv())
lockBinding("tempdir", baseenv())

system.time({
 
 # 载入栅格
 r1 <- raster("G:/Bachelor_Degree_Thesis/DATA/LUCC_30m_WHU/Extracted/CLCD_v01_1985_clip.tif", band = 1)
 r2 <- raster("G:/Bachelor_Degree_Thesis/DATA/LUCC_30m_WHU/Extracted/CLCD_v01_2019_clip.tif", band = 1)
 
 # check that spatial extent is the same
 extent(r1) == extent(r2)
 
 # create r3 from r1，从r1创建新的栅格
 r3 <- raster(r1)
 r4 <- raster(r1)
 
 # r3[r1 == 1 & r2 == 1] <- 1
 # r3[r1 == 1 & r2 == 2] <- 1
 # r3[r1 == 1 & r2 == 3] <- 1
 # r3[r1 == 1 & r2 == 4] <- 1
 # r3[r1 == 1 & r2 == 5] <- 1
 # r3[r1 == 1 & r2 == 6] <- 1
 # r3[r1 == 1 & r2 == 7] <- 1
 r3[r1 == 1 & r2 == 8] <- 0
 # r3[r1 == 1 & r2 == 9] <- 1
 
 r3[r1 == 2 & r2 == 1] <- 0
 # r3[r1 == 2 & r2 == 2] <- 1
 r3[r1 == 2 & r2 == 3] <- 0
 r3[r1 == 2 & r2 == 4] <- 0
 r3[r1 == 2 & r2 == 5] <- 0
 r3[r1 == 2 & r2 == 6] <- 0
 r3[r1 == 2 & r2 == 7] <- 0
 r3[r1 == 2 & r2 == 8] <- 0
 # r3[r1 == 2 & r2 == 9] <- 1
 
 r3[r1 == 3 & r2 == 1] <- 0
 # r3[r1 == 3 & r2 == 2] <- 1
 # r3[r1 == 3 & r2 == 3] <- 1
 r3[r1 == 3 & r2 == 4] <- 0
 r3[r1 == 3 & r2 == 5] <- 0
 r3[r1 == 3 & r2 == 6] <- 0
 r3[r1 == 3 & r2 == 7] <- 0
 r3[r1 == 3 & r2 == 8] <- 0
 # r3[r1 == 3 & r2 == 9] <- 1
 
 r3[r1 == 4 & r2 == 1] <- 0
 # r3[r1 == 4 & r2 == 2] <- 1
 # r3[r1 == 4 & r2 == 3] <- 1
 # r3[r1 == 4 & r2 == 4] <- 1
 r3[r1 == 4 & r2 == 5] <- 0
 r3[r1 == 4 & r2 == 6] <- 0
 r3[r1 == 4 & r2 == 7] <- 0
 r3[r1 == 4 & r2 == 8] <- 0
 # r3[r1 == 4 & r2 == 9] <- 1
 
 r3[r1 == 5 & r2 == 1] <- 0
 # r3[r1 == 5 & r2 == 2] <- 1
 # r3[r1 == 5 & r2 == 3] <- 1
 # r3[r1 == 5 & r2 == 4] <- 1
 # r3[r1 == 5 & r2 == 5] <- 1
 # r3[r1 == 5 & r2 == 6] <- 1
 r3[r1 == 5 & r2 == 7] <- 0
 r3[r1 == 5 & r2 == 8] <- 0
 # r3[r1 == 5 & r2 == 9] <- 1
 
 r3[r1 == 6 & r2 == 1] <- 0
 # r3[r1 == 6 & r2 == 2] <- 1
 # r3[r1 == 6 & r2 == 3] <- 1
 # r3[r1 == 6 & r2 == 4] <- 1
 r3[r1 == 6 & r2 == 5] <- 0
 # r3[r1 == 6 & r2 == 6] <- 1
 r3[r1 == 6 & r2 == 7] <- 0
 r3[r1 == 6 & r2 == 8] <- 0
 # r3[r1 == 6 & r2 == 9] <- 1
 
 r3[r1 == 7 & r2 == 1] <- 0
 # r3[r1 == 7 & r2 == 2] <- 1
 # r3[r1 == 7 & r2 == 3] <- 1
 # r3[r1 == 7 & r2 == 4] <- 1
 # r3[r1 == 7 & r2 == 5] <- 1
 # r3[r1 == 7 & r2 == 6] <- 1
 # r3[r1 == 7 & r2 == 7] <- 1
 r3[r1 == 7 & r2 == 8] <- 0
 # r3[r1 == 7 & r2 == 9] <- 1
 
 # r3[r1 == 8 & r2 == 1] <- 1
 # r3[r1 == 8 & r2 == 2] <- 1
 # r3[r1 == 8 & r2 == 3] <- 1
 # r3[r1 == 8 & r2 == 4] <- 1
 # r3[r1 == 8 & r2 == 5] <- 1
 # r3[r1 == 8 & r2 == 6] <- 1
 # r3[r1 == 8 & r2 == 7] <- 1
 # r3[r1 == 8 & r2 == 8] <- 1
 # r3[r1 == 8 & r2 == 9] <- 1
 
 r3[r1 == 9 & r2 == 1] <- 0
 r3[r1 == 9 & r2 == 2] <- 0
 r3[r1 == 9 & r2 == 3] <- 0
 r3[r1 == 9 & r2 == 4] <- 0
 r3[r1 == 9 & r2 == 5] <- 0
 r3[r1 == 9 & r2 == 6] <- 0
 r3[r1 == 9 & r2 == 7] <- 0
 r3[r1 == 9 & r2 == 8] <- 0
 # r3[r1 == 9 & r2 == 9] <- 1
 
 r4 <- r3
 NAvalue(r4) <- 1
 
 plot(r4) #绘制
 
 writeRaster(r3,"G:/Bachelor_Degree_Thesis/DATA/LC_Change/1985-2019.tif") #导出
 
})
