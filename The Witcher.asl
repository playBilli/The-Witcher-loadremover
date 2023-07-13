state("witcher"){
	byte loading : 0x009BDE3C;
}
isLoading{
	return vars.load || current.loading == 7 || current.loading == 8;
}
start{
	if(current.loading != 0){		
		return true;
	}
}
init{
	vars.load = false;
}
update{
	if(old.loading == 0 && current.loading == 4){
		vars.load = true;
	}
	if(current.loading == 8 && vars.load){
		vars.load = false;		
	}
}