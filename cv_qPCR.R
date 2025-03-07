library("dplyr")
#install.packages("xlsx")
library("xlsx")
library("readxl")
Sys.setenv(JAVA_HOME='C:\\Program Files (x86)\\Java\\jre1.8.0_271')

library("rJava")

library(xlsx)

#############################
## data qPCR ----

# Nactete data ze souboru data_examples.xlsx, list "qPCR". 
read.xlsx("data_examples.xlsx", sheetName="qPCR")
read_excel("data_examples.xlsx", sheet = "qPCR")

# Spocitejte sumarizace pro vsechny sloupce. 
qPCR <- read_excel("data_examples.xlsx", sheet = "qPCR")
View(qPCR)

qPCR %>% 
  summary()

# Prevedte sloupce na faktory, kde to dava smysl. 
qPCR %>% 
  as.factor(Replicate)

# Vypiste pouze radky s kondici wt 
# Vypiste pouze radky s kondici wt pro geny Fzd2 a Wnt9a

# Spocitejte prumery pro jednotlive kondice u jednotlivych genu. 

# Prumery vypiste v poradi genu Prickle1, Fzd2, Wnt9a a kondice wt, #1, #2, #3. 

# ÚKOL NAVÍC: Muzete se pokusit vykreslit jednoduchy graf s prumery. 

# Vyjadrete expresi relativne vuci hodnote wt v kazdem replikatu. 

# Pro tyto hodnoty vyjadrete prumer. 