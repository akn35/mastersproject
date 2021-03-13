
wo=50/(30000/2);
bw= wo/35;
[b,a]= iirnotch(wo,bw);
fvtool(b,a)