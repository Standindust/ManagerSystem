package common;

import java.util.*;

/**
 * �Լ���д���ַ�������
 */
public class StringUtil
{
	// �ж�һ���ַ����Ƿ�Ϊ��
	public static boolean isEmptyString( String str )
	{
		return str==null || str.length()==0;
	}

	// ȥ��һ���ַ������˵Ŀո�
	public static String trim( String str )
	{
		if ( str == null ) return null;
		return str.trim();
	}

	public static String[] strTokenizer( String str, String delim )
	{
		if( isEmptyString( trim( str ) ) ) return null;

		StringTokenizer st = new StringTokenizer( str, delim );
		String[] result = new String[st.countTokens()];
		int i=0;
		while ( st.hasMoreTokens() ) 
		{
			result[i++] = st.nextToken();
		}
		return result;
	}

	public static String getFileName( String filename )
	{
		filename = trim( filename );

		if( isEmptyString( filename ) ) return null;

		int nIndex = filename.lastIndexOf( "\\" );
		if( nIndex > 0 )
			return filename.substring( nIndex+1 );
		return filename;
	}
}
