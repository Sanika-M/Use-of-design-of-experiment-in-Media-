df2 = read.table(choose.files(), header=TRUE)
df2
r = c(t(as.matrix(df2))) # response data 
r 
f = c("Tv", "Radio", "Print")   # treatment levels 
k = 3                    # number of treatment levels 
n = 6                    # number of control blocks
treatments = gl(k, 1, n*k, factor(f))   # matching treatment 
treatments 
blocks = gl(n, k, k*n)             # blocking factor 
blocks
av = aov(r ~ treatments + blocks, data=df2)
summary(av)
