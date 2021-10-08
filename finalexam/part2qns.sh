echo "enter r for sphere volume calculation "
read rs
echo "enter a for cube volume calculation"
read a
echo "enter r for cylinder volume calculation"
read cr
echo "enter h for cylinder volume calculation"
read ch


sphere()
{
   s=$rs
   ((cu=rs*rs*rs))
   ((q=3*cu))
   ((fs=4/3*q))
   echo "$fs"
   
}

cube()
{
i=$a
((fc=i*i*i))
echo "$fc"
}

cylinder()
{
y=$cr
l=$ch
pi=3
((fc=y*y*l))
((fc1=pi*fc))
echo "$fc1"
}


sphere $s $y
cube $i
cylinder $y $l

for((i=1;i<=3;i++))
do
echo  "Choice List"
echo "************"
echo -e "1.Sphere\n2.Cube\n3.Cylinder"
echo "Enter your choice"
read ch
case $ch in
1)echo "Sphere volume:$fs";;
2)echo "Cube volume:$fc";;
3)echo "Cylinder Volume:$fc1";;
*)echo "Invalid choice"
esac
done
