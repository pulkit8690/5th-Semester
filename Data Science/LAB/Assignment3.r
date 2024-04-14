#1. Create an array A with elements (12, 13, 14, 15, 16) and display them.
A<-c(12,13,14,15,16)
A
#2. Find the sum of all the elements of A.
sum(A)

#3. Find the product of all the element of A.
prod(A)

#4. Find the maximum and minimum element of A.
max(A)
min(A)

#5. Find the range of array A.
range(A)

#6. Find the mean, variance, standard deviation and median of value of A.
mean(A)
var(A)
sd<-sqrt(var(A))
sd
median(A)

#7. Sort the element of A both in increasing and decreasing order and store them in B and C.
B<-sort(A)
C<-sort(A,decreasing = T)

#8. Create a matrix of 3x4 to have the set of natural numbers.
m1<-matrix(1:12,nrow=3,ncol=4)
m1

#9. Create MxN matrix by combining A, B and C row-wise (RW) and column-wise(CW).
cw<-cbind(A,B,C)
rw<-rbind(A,B,C)

#10. Find the 2 and 3 row element of RW.
rw[2,]
rw[3,]

#11. Find the 1 and 4 column of CW.
cw[,1]
cw[,4]

#12. Using both RW and CW find sub-matrices having elements [2, 3] and [2, 4].
m2<-rw[2,3]
m3<-cw[2,3]
m2
m3
