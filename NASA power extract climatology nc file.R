#POWER_Global_Climatology Temperature tmax----
library(ncdf4)
library(reshape2)
library(dplyr)
library(ncdf4.helpers)

# Clear workspace
rm(list=ls())

ncpath <- "~/Dropbox/Labour & climate change/Data/climate/"

ncname <- "POWER_Global_Climatology_5c8af4ff"
ncfname <- paste(ncpath, ncname, ".nc", sep="")
ncin <- nc_open(ncfname)
print(ncin)
nc<- nc_open(ncfname)
print(nc)
attributes(nc)$names
print(paste("The file has",nc$nvars,"variables,",nc$ndims,"dimensions and",nc$natts,"NetCDF attributes"))
attributes(nc$var)$names
pr_mean <- ncvar_get(nc, attributes(nc$var)$names[2])
dim(pr_mean)
attributes(nc$dim)$names
nc_lat <- ncvar_get( nc, attributes(nc$dim)$names[2])
nc_lon <- ncvar_get( nc, attributes(nc$dim)$names[1])

print(paste(dim(nc_lat), "latitudes and", dim(nc_lon), "longitudes"))
dim(pr_mean)
pr_mean[35:36, 0:3, 1:5]

nc_time <- ncvar_get( nc, attributes(nc$dim)$names[3])


nc_close(nc)

# set the dimension names and values of your matrix to the appropriate latitude and longitude values
dimnames(pr_mean) <- list(lon=nc_lon, lat=nc_lat, time=nc_time)


tmp_pr_df <- melt(pr_mean, id=c("lon", "lat", "time"),value.name = "maxtemp")

Egypt<- subset(tmp_pr_df, tmp_pr_df$lat>=22 & tmp_pr_df$lat<=32 & tmp_pr_df$lon>=24 & tmp_pr_df$lon<=37) 

library(reshape2)
Egypt<- dcast(Egypt, lon + lat ~ time, value.var="maxtemp")
library("writexl")
write_xlsx(Egypt,"Egypt monthly longtmax 1984-1-1 2013-12-31.xlsx")

Tunisia<- subset(tmp_pr_df, tmp_pr_df$lat>=30 & tmp_pr_df$lat<=38 & tmp_pr_df$lon>=7 & tmp_pr_df$lon<=12) 
library(reshape2)
Tunisia<- dcast(Tunisia, lon + lat ~ time, value.var="maxtemp")
library("writexl")
write_xlsx(Tunisia,"Tunisia monthly longtmax 1984-1-1 2013-12-31.xlsx")

Jordan<- subset(tmp_pr_df, tmp_pr_df$lat>=29 & tmp_pr_df$lat<=34 & tmp_pr_df$lon>=34 & tmp_pr_df$lon<=40) 
library(reshape2)
Jordan<- dcast(Jordan, lon + lat ~ time, value.var="maxtemp")
library("writexl")
write_xlsx(Jordan,"Jordan monthly longtmax 1984-1-1 2013-12-31.xlsx")

#POWER_Global_Climatology Temperature average temperature----
library(ncdf4)
library(reshape2)
library(dplyr)
library(ncdf4.helpers)

# Clear workspace
rm(list=ls())

ncpath <- "~/Dropbox/Labour & climate change/Data/climate/"

ncname <- "POWER_Global_Climatology_5c8af4ff"
ncfname <- paste(ncpath, ncname, ".nc", sep="")
ncin <- nc_open(ncfname)
print(ncin)
nc<- nc_open(ncfname)
print(nc)
attributes(nc)$names
print(paste("The file has",nc$nvars,"variables,",nc$ndims,"dimensions and",nc$natts,"NetCDF attributes"))
attributes(nc$var)$names
pr_mean <- ncvar_get(nc, attributes(nc$var)$names[3])
dim(pr_mean)
attributes(nc$dim)$names
nc_lat <- ncvar_get( nc, attributes(nc$dim)$names[2])
nc_lon <- ncvar_get( nc, attributes(nc$dim)$names[1])

print(paste(dim(nc_lat), "latitudes and", dim(nc_lon), "longitudes"))
dim(pr_mean)
pr_mean[35:36, 0:3, 1:5]

nc_time <- ncvar_get( nc, attributes(nc$dim)$names[3])


nc_close(nc)

# set the dimension names and values of your matrix to the appropriate latitude and longitude values
dimnames(pr_mean) <- list(lon=nc_lon, lat=nc_lat, time=nc_time)


tmp_pr_df <- melt(pr_mean, id=c("lon", "lat", "time"),value.name = "maxtemp")

Egypt<- subset(tmp_pr_df, tmp_pr_df$lat>=22 & tmp_pr_df$lat<=32 & tmp_pr_df$lon>=24 & tmp_pr_df$lon<=37) 

library(reshape2)
Egypt<- dcast(Egypt, lon + lat ~ time, value.var="maxtemp")
library("writexl")
write_xlsx(Egypt,"Egypt monthly longaveragetemp 1984-1-1 2013-12-31.xlsx")

Tunisia<- subset(tmp_pr_df, tmp_pr_df$lat>=30 & tmp_pr_df$lat<=38 & tmp_pr_df$lon>=7 & tmp_pr_df$lon<=12) 
library(reshape2)
Tunisia<- dcast(Tunisia, lon + lat ~ time, value.var="maxtemp")
library("writexl")
write_xlsx(Tunisia,"Tunisia monthly longaveragetemp 1984-1-1 2013-12-31.xlsx")

Jordan<- subset(tmp_pr_df, tmp_pr_df$lat>=29 & tmp_pr_df$lat<=34 & tmp_pr_df$lon>=34 & tmp_pr_df$lon<=40) 
library(reshape2)
Jordan<- dcast(Jordan, lon + lat ~ time, value.var="maxtemp")
library("writexl")
write_xlsx(Jordan,"Jordan monthly longaveragetemp 1984-1-1 2013-12-31.xlsx")

#POWER_Global_Climatology Temperature precipitation----
library(ncdf4)
library(reshape2)
library(dplyr)
library(ncdf4.helpers)

# Clear workspace
rm(list=ls())

ncpath <- "~/Dropbox/Labour & climate change/Data/climate/"

ncname <- "POWER_Global_Climatology_6f8988d8"
ncfname <- paste(ncpath, ncname, ".nc", sep="")
ncin <- nc_open(ncfname)
print(ncin)
nc<- nc_open(ncfname)
print(nc)
attributes(nc)$names
print(paste("The file has",nc$nvars,"variables,",nc$ndims,"dimensions and",nc$natts,"NetCDF attributes"))
attributes(nc$var)$names
pr_mean <- ncvar_get(nc, attributes(nc$var)$names[2])
dim(pr_mean)
attributes(nc$dim)$names
nc_lat <- ncvar_get( nc, attributes(nc$dim)$names[2])
nc_lon <- ncvar_get( nc, attributes(nc$dim)$names[1])

print(paste(dim(nc_lat), "latitudes and", dim(nc_lon), "longitudes"))
dim(pr_mean)
pr_mean[35:36, 0:3, 1:5]

nc_time <- ncvar_get( nc, attributes(nc$dim)$names[3])


nc_close(nc)

# set the dimension names and values of your matrix to the appropriate latitude and longitude values
dimnames(pr_mean) <- list(lon=nc_lon, lat=nc_lat, time=nc_time)


tmp_pr_df <- melt(pr_mean, id=c("lon", "lat", "time"),value.name = "precip")

Egypt<- subset(tmp_pr_df, tmp_pr_df$lat>=22 & tmp_pr_df$lat<=32 & tmp_pr_df$lon>=24 & tmp_pr_df$lon<=37) 

library(reshape2)
Egypt<- dcast(Egypt, lon + lat ~ time, value.var="precip")
library("writexl")
write_xlsx(Egypt,"Egypt monthly longprecip 1984-1-1 2013-12-31.xlsx")

Tunisia<- subset(tmp_pr_df, tmp_pr_df$lat>=30 & tmp_pr_df$lat<=38 & tmp_pr_df$lon>=7 & tmp_pr_df$lon<=12) 
library(reshape2)
Tunisia<- dcast(Tunisia, lon + lat ~ time, value.var="precip")
library("writexl")
write_xlsx(Tunisia,"Tunisia monthly longprecip 1984-1-1 2013-12-31.xlsx")

Jordan<- subset(tmp_pr_df, tmp_pr_df$lat>=29 & tmp_pr_df$lat<=34 & tmp_pr_df$lon>=34 & tmp_pr_df$lon<=40) 
library(reshape2)
Jordan<- dcast(Jordan, lon + lat ~ time, value.var="precip")
library("writexl")
write_xlsx(Jordan,"Jordan monthly longprecip 1984-1-1 2013-12-31.xlsx")

#POWER_Global_Climatology Temperature humidity----
library(ncdf4)
library(reshape2)
library(dplyr)
library(ncdf4.helpers)

# Clear workspace
rm(list=ls())

ncpath <- "~/Dropbox/Labour & climate change/Data/climate/"

ncname <- "POWER_Global_Climatology_6f8988d8"
ncfname <- paste(ncpath, ncname, ".nc", sep="")
ncin <- nc_open(ncfname)
print(ncin)
nc<- nc_open(ncfname)
print(nc)
attributes(nc)$names
print(paste("The file has",nc$nvars,"variables,",nc$ndims,"dimensions and",nc$natts,"NetCDF attributes"))
attributes(nc$var)$names
pr_mean <- ncvar_get(nc, attributes(nc$var)$names[1])
dim(pr_mean)
attributes(nc$dim)$names
nc_lat <- ncvar_get( nc, attributes(nc$dim)$names[2])
nc_lon <- ncvar_get( nc, attributes(nc$dim)$names[1])

print(paste(dim(nc_lat), "latitudes and", dim(nc_lon), "longitudes"))
dim(pr_mean)
pr_mean[35:36, 0:3, 1:5]

nc_time <- ncvar_get( nc, attributes(nc$dim)$names[3])


nc_close(nc)

# set the dimension names and values of your matrix to the appropriate latitude and longitude values
dimnames(pr_mean) <- list(lon=nc_lon, lat=nc_lat, time=nc_time)


tmp_pr_df <- melt(pr_mean, id=c("lon", "lat", "time"),value.name = "RH2M")

Egypt<- subset(tmp_pr_df, tmp_pr_df$lat>=22 & tmp_pr_df$lat<=32 & tmp_pr_df$lon>=24 & tmp_pr_df$lon<=37) 

library(reshape2)
Egypt<- dcast(Egypt, lon + lat ~ time, value.var="RH2M")
library("writexl")
write_xlsx(Egypt,"Egypt monthly longRH2M 1984-1-1 2013-12-31.xlsx")

Tunisia<- subset(tmp_pr_df, tmp_pr_df$lat>=30 & tmp_pr_df$lat<=38 & tmp_pr_df$lon>=7 & tmp_pr_df$lon<=12) 
library(reshape2)
Tunisia<- dcast(Tunisia, lon + lat ~ time, value.var="RH2M")
library("writexl")
write_xlsx(Tunisia,"Tunisia monthly longRH2M 1984-1-1 2013-12-31.xlsx")

Jordan<- subset(tmp_pr_df, tmp_pr_df$lat>=29 & tmp_pr_df$lat<=34 & tmp_pr_df$lon>=34 & tmp_pr_df$lon<=40) 
library(reshape2)
Jordan<- dcast(Jordan, lon + lat ~ time, value.var="RH2M")
library("writexl")
write_xlsx(Jordan,"Jordan monthly longRH2M 1984-1-1 2013-12-31.xlsx")



