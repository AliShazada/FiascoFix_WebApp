using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    string user;
	public User()
	{
		//
		// TODO: Add constructor logic here
		//
	}
  public  void set_user( string a)
    {
        user = a;
    }
  public  string get_user()
    {
        return user;
    }
}