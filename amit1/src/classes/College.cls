public class College {
	public String name;
    public Integer depts;
    public Integer strength;
    public String principal;
    public Date doe;
    
    public College(){
        name = 'VBIT';
        depts = 12;
        strength = 4700;
        principal = 'Sekhar Kammula';
        doe = Date.newInstance(1999, 3, 11);
    }
    public void display(){
        System.debug('Name: ' + name);
        System.debug('Departments: ' +depts);
        System.debug('Strength: ' + strength);
        System.debug('Principal: ' + principal);
        System.debug('Date established: ' + doe);
    }
}