package day03;

public class DemoString {
	public static void main(String[] args) {
		String s="abc";
		String s2=s;
		String s3="bc";
		String s4="a"+s3;
		String s5="abc";
		System.out.println(s==s2);//true
		System.out.println(s==s4);//false
		System.out.println(s==s5);//true
		
		
		//���Ա�����
		String str=new String("ehf");
		//�����ϴ����˼������� 2��  new String������һ������
		//"ehp"��һ���ַ��������ڳ�������û��"ehp"��������Ҫ����һ����ehp������
		//��˴������������������������С�ehp���������ó������еġ�ehp������
		//��ôstring str=new string("ehp");�򴴽���һ������
	}
	
}