package common;

public class IntUtil
{
	// ���ַ���ת��Ϊ����
	public static int getInt( String str, int defaultvalue )
	{
		try
		{
			return Integer.parseInt( str );
		}
		catch( Exception ex )
		{
			return defaultvalue;
		}
	}
}
