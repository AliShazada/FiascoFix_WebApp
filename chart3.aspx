<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="chart3.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
          <script type="text/javascript" language="JavaScript" src="FusionCharts/FusionCharts.js"></script>
      <script type="text/javascript" language="JavaScript">
      
         function myJS(myVar){
            window.alert(myVar);
         }
      
      </script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
        <table width="800px" border="0" cellspacing="0" cellpadding="3" align="center">
          <tr> 
            <td valign="top" class="text" align="center" >
            <asp:Literal ID="FCLiteral1" runat="server"></asp:Literal>
	        </td>
            <td valign="top" class="text" align="center">
            <asp:Literal ID="FCLiteral2" runat="server"></asp:Literal>
	        </td>
	        
          </tr>
          <tr> 
            <td valign="top" class="text" align="center">
            <asp:Literal ID="FCLiteral3" runat="server"></asp:Literal>
	        </td>
            <td valign="top" class="text" align="center">
            <asp:Literal ID="FCLiteral4" runat="server"></asp:Literal>
	        </td>
	        
          </tr>          
        </table>    
    </div>
    </form>
</body>
</html>
