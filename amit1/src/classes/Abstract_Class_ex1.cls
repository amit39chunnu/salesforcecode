public virtual class Abstract_Class_ex1 {
    public Decimal area{set;get;}
    public Integer l;
    public Abstract_Class_ex1(Decimal l){
        area=l*l;
    }
    public Decimal circleArea(Integer r){
	area = (r)*(r)*(Math.acos(-1)); // Pi = Math.acos(-1)
	return area;
	}
    public virtual void RectangleArea(){
        system.debug('jjjjjj');
    }
    //public  string hexagonArea(decimal l){
      //  return 'r u creazy';
    //}
  
}