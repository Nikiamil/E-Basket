package user;
public class Sbean {
	
	private double aP, bP, cP,total;
	
	public Sbean (){
		
	}
	public void setAP (double s){
		aP = s;
		aP = aP * 18.5;
	}
	public void setBP (double s){
		bP = s;
		bP = bP * 6.95;
	}
	public void setCP(double s){
		cP = s;
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
