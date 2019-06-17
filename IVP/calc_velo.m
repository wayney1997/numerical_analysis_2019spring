function v=calc_velo(distank)

va=0; vb=1;

for k=1:100
	vb=vb+10;
	dis=disfly(vb);
	if(dis>distank) break; end
end

for k=1:50
	v=(va+vb)/2;
	dis=disfly(v);
	if(dis>distank) vb=v;
	else va=v;
	end
end
