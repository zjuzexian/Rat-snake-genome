# install.packages("UpSetR")
library(UpSetR)



data <- read.csv("/Users/xsyang/Documents/ZhouLab/Genome_snake/GO_KEGG/MM_tmlzh9sr.emapper.annotations.csv")

str(data)
#data[] <- sapply(data, as.integer)
upset(data,nintersects= 20,order.by = c("freq"),
      main.bar.color = 'gray', #柱状图颜色
      sets.bar.color= "lightblue", # 条形图条形的颜色
      queries = list(list(
        query = intersects, 
        params = list("EC", "KEGG_ko", "GOs","PFAMs","KEGG_Pathway"), 
        color = "red", 
        active = T)))