package fw;
//SQL만 정의하는 클래스 - 프레임워크 기반으로 작업을 하면 설정파일(XML)로 변경됨
public class Query {
	public static String DEPT_INSERT
			="insert into mydept values(?,?,?,?)";
	public static String DEPT_SELECT
	="select * from mydept where deptname like ?";
	public static String DEPT_SELECTALL
	="select * from mydept";
	public static String DEPT_SELECT_NAME
	="select deptname from mydept";
	public static String MEMBER_LIST =
	"select e,id, e.name, e.addr, d.deptname"+"from myemp e, mydept d"
	+"where e.deptno = d.deptno"
	+"and d,deptname = ?";
	public static String DEPT_DELETE ="delete from mydept where deptno=?";
	public static String DEPT_READ
	="select * from mydept where deptno = ?";
	public static String EMP_LOGIN
	="select * from myemp where id=? and pass=?";
	public static String DEPT_UPDATE
	="update mydept set deptname=?, loc=?, telNum=? where deptno = ?";
	public static String memberCheck
	="select *from myemp where id=?";
	public static String PRODUCT_SELECT
	= "select * from TB_PRODUCT";
	public static String PRODUCT_LIST_CATEGORY =
			"select * from TB_PRODUCT where category_no=?";
	public static String BEST_PRODUCT = "select mytop.prd_no,rank() over(order by mytop.gty desc) myrank from (select prd_no, sum(qty) gty from TB_ORDER_PRODUCT group by prd_no order by gty desc) mytop";
	
	public static String PRODUCT_TOP = "select  prd_no, prd_nm, IMG_GEN_FILE_NM "
			+ "from (select o.prd_no, p.prd_nm, p.IMG_GEN_FILE_NM, o.qty "
			+ "from tb_product p, "
			+ "(select prd_no,sum(qty) qty "
			+ "from TB_ORDER_PRODUCT group by prd_no) o "
			+ "where o.prd_no=p.prd_no "
			+ "order by o.qty desc) "
			+ "where rownum <=8 ";

}
