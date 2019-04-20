<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="BloodBank_Team7.views.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
     table
     {
         color:white;
     }
     td
     {
         padding:20px;
     }
     .auto-style1{
         width:212px;
     }
    </style>
</head>
<body style="background-image:url('~/img/bg.jpg'); width:100%; height:100%">
    <form id="form1" runat="server">
        <div style="background-image:url('../img/bg.jpg'); width:100%; height:100%; background-size: 100% 100%">
        <div style="background-color:#851212; width:500px; height:950px; margin:0 auto; border-radius:25px 25px 25px 25px">
            <h1 style="background-color:white; color:#851212; text-align:center">Registration Form</h1>


             <table >
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
           
            
             <tr>
                <td>Email</td>
                <td><asp:TextBox ID="txtemail" runat="server"  TextMode="Email"></asp:TextBox></td>
                
                <td class="auto-style1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ValidationExpression="[^@]+@[^@]+\.[^@]+"></asp:RegularExpressionValidator></td>
            </tr>

             <tr>
                <td>Password</td>
                <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>

            <tr>
                <td>Confirm Password</td>
                <td><asp:TextBox ID="txtcpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                
                <td class="auto-style1">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcpassword" Display="Dynamic" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>

            <tr>
                <td>Pin</td>
                <td><asp:TextBox ID="txtcnic" runat="server" ></asp:TextBox></td>
                
                <td class="auto-style1">&nbsp;</td>
            </tr>


            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style2"><asp:TextBox ID="txtname" runat="server" ></asp:TextBox></td>
                
                <td class="auto-style1">&nbsp;</td>
            </tr>

             <tr>
                <td class="auto-style2">Age</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                </td>
                
                <td class="auto-style1"></td>
            </tr>

           <tr>
                <td>Blood Group</td>
                <td>

                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="116px">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
                <td class="auto-style1"></td>
            </tr>
            
                 <tr>
                     <td>Near Hospital</td>
                     <td>
                         <asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="107px" DataSourceID="SqlDataSource1" DataTextField="hos_name" DataValueField="hos_id"></asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bloodbankConnectionString %>" InsertCommand="INSERT INTO hospitals(hos_id) VALUES ('Always there')" SelectCommand="select * from hospitals"></asp:SqlDataSource>
                     </td>
                     <td class="auto-style1"></td>
                 </tr>

            <tr>
                <td class="auto-style2">Contact Number</td>
                <td class="auto-style2"><asp:TextBox ID="txtcontact" runat="server" ></asp:TextBox></td>
                
                <td class="auto-style1">&nbsp;</td>
            </tr>
                  
                 <tr>
                <td>#</td>
                     <td>
                         <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" Width="149px" />
                     </td>
                     <td class="auto-style1"></td>
            </tr>
          
        </table>


        </div>
            </div>
    </form>
</body>
</html>
