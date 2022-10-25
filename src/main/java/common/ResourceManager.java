package common;

import java.util.*;

public class ResourceManager
{
	ResourceBundle bundle = null;

	// ���캯�����õ�ResourceBundle��ʵ��
	public ResourceManager( String packageName )
	{
		String bundleName = packageName + ".LocalStrings";
		bundle = PropertyResourceBundle.getBundle(bundleName);
	}

	// �õ�ĳ�����Ե�ֵ
	public String getString( String key )
	{
		return bundle.getString( key );
	}

	// ���ڱ���ResourceBundle��ʵ������
	private static Hashtable managers = new Hashtable();

	// �õ�ResourceBundle�����ʵ��
	public synchronized static ResourceManager getManager( String packageName ) 
	{
		ResourceManager mgr = (ResourceManager)managers.get( packageName );
		if (mgr == null) {
		    mgr = new ResourceManager( packageName );
		    managers.put(packageName, mgr);
		}
		return mgr;
	}

	// �õ�ResourceBundle�����ʵ��
	public synchronized static ResourceManager getManager( Class cls )
	{
	    return getManager( cls.getPackage().getName() );
	}
}
