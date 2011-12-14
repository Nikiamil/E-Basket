package user;
public class Sbean {
	
	private double aP, bP, cP,total;
	
	public Sbean (){
		
	}
	public void setAP (String s){
		aP = Double.parseDouble(s);
		aP = aP * 18.5;
	}
	public void setBP (String s){
		bP = Double.parseDouble(s);
		bP = bP * 6.95;
	}
	public void setCP(String s){
		cP = Double.parseDouble(s);
		cP = cP * 1.29;
	}
	public double getAP(){
		return(aP);
	}
	public double getBP(){
		return(bP);
	}
	public double getCP(){
		return(cP);
	}
	public double getTotal(){
		total = aP+bP+cP;
		return (total);
	}
}
