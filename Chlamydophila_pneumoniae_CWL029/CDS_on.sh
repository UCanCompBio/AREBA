grep $CDS $qstat | sort -t$ -k8nr | cut -d'$' -f8 | head -n 10 | awk 'BEGIN{i=0; result=0;}{array[i]=$1; i++;}END{for(a=0;a<i;a++) if(array[a]>=0.5) result+=1; printf"CDS On : %f\n",result/i;}'
