package common;

/**
 * ��ҳ��ϢBean
 */
public class PageBean
{
	int currentpage = 0;
	int totalpage = 0;
	String urlpattern = null;
	
	// ���캯��
	public PageBean( int currentpage, int totalpage )
	{
		this.currentpage = currentpage;
		this.totalpage = totalpage;
	}

	// �Ƿ���Ҫ��ҳ��ʾ
	public boolean hasMorePage()
	{
		return totalpage > 1;
	}

	// �������ӵ�URL
	public void setURLPattern( String urlpattern )
	{
		this.urlpattern = urlpattern;
	}

	// �Ƿ��е�һҳ
	public boolean hasFirstPage( )
	{
		return currentpage > 0;
	}
	// ���ص�һҳ��ҳ��
	public int getFirstPage(  )
	{
		return 0;
	}
	// �õ���ת����һҳ������
	public String getFirstURL( String title )
	{
		if( urlpattern==null ) throw new Error( "Must set the urlpattern first!" );
		if( hasFirstPage() )
		{
			return urlpattern.replaceAll( "CURRENTPAGE", String.valueOf( getFirstPage() ) ).replaceAll( "TITLE", title );
		}
		return "";
	}

	// �Ƿ������һҳ
	public boolean hasPrevPage(  )
	{
		return currentpage > 0;
	}
	// �õ���һҳ��ҳ��
	public int getPrevPage(  )
	{
		return currentpage > 1 ? currentpage - 1 : 0;
	}
	// �õ���ת����һҳ������
	public String getPrevURL( String title )
	{
		if( urlpattern==null ) throw new Error( "Must set the urlpattern first!" );
		if( hasPrevPage() )
		{
			return urlpattern.replaceAll( "CURRENTPAGE", String.valueOf( getPrevPage() ) ).replaceAll( "TITLE", title );
		}
		return "";
	}

	// �Ƿ�����һҳ
	public boolean hasNextPage(  )
	{
		return currentpage < totalpage - 1;
	}
	// �õ���һҳ��ҳ��
	public int getNextPage(  )
	{
		return currentpage + 1;
	}
	// �õ���һҳ������
	public String getNextURL( String title )
	{
		if( urlpattern==null ) throw new Error( "Must set the urlpattern first!" );
		if( hasNextPage() )
		{
			return urlpattern.replaceAll( "CURRENTPAGE", String.valueOf( getNextPage() ) ).replaceAll( "TITLE", title );
		}
		return "";
	}

	// �ж��Ƿ���βҳ
	public boolean hasLastPage(  )
	{
		return currentpage < totalpage - 1;
	}
	// �õ�βҳ��ҳ��
	public int getLastPage(  )
	{
		return totalpage - 1;
	}
	// �õ���ת��βҳ������
	public String getLastURL( String title )
	{
		if( urlpattern==null ) throw new Error( "Must set the urlpattern first!" );
		if( hasLastPage() )
		{
			return urlpattern.replaceAll( "CURRENTPAGE", String.valueOf( getLastPage() ) ).replaceAll( "TITLE", title );
		}
		return "";
	}
}
