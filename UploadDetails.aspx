<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Mpage.Master" CodeFile="UploadDetails.aspx.vb" Inherits="UploadDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style> 
    .full{
            height:581px;
            width:1100px;
        }
        .header
        {
            margin-top:45px;
            height:50px;
            width:900px;
            margin-left:30px;
            margin-right:30px;
            background-color:white;
            text-align:center;

        }
        .formm{
            padding-top:0px;
            height:250px;
            width:900px;
            margin-left:65px;
            margin-right:30px;
            background-color:white;
        }
        .auto4{
            text-align:center
        }
        .auto-style7 {
            text-align: center;
            width: 440px;
            height: 18px;
        }
        .auto-style10 {
            height: 18px;
        }
        .auto-style15 {
            text-align: center;
            width: 440px;
            height: 43px;
        }
        .auto-style16 {
            height: 43px;
        }
        .auto-style17 {
            text-align: center;
            width: 440px;
            height: 41px;
        }
        .auto-style18 {
            height: 41px;
        }
        .auto-style19 {
            text-align: center;
            width: 440px;
            height: 2px;
        }
        .auto-style20 {
            height: 2px;
        }
        .Dbutton{
            text-align:center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="full">
        <div class="header">
            <h1>
                <font size="8" color="black">
                    <i> Upload Details</i>
                </font>
            </h1>
        </div>
       <table class="formm">
             <tr>
                <td class="auto-style7"  style="font-style: italic; font-family: 'Arial Black'; font-size: large">
                 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name</td>
               <td class="auto-style10">

                   <asp:TextBox ID="TextBox1" placeholder="Name of Student" runat="server" Height="31px" Width="239px" required="true"></asp:TextBox>

                   </td>
           </tr>
                      <tr>
                <td class="auto-style7"  style="font-style: italic; font-family: 'Arial Black'; font-size: large">
                 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;RollNo</td>
               <td class="auto-style10">

                   <asp:TextBox ID="TextBox3" placeholder="RollNo" runat="server" Height="31px" Width="239px" required="true"></asp:TextBox>

                   </td>
           </tr>
           <tr>
                <td class="auto-style7"  style="font-style: italic; font-family: 'Arial Black'; font-size: large">
                 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; CourseId&nbsp;&nbsp;&nbsp;&nbsp;</td>
               <td class="auto-style10">

                   <asp:TextBox ID="TextBox2" placeholder="Eg:batch/subject/sem" runat="server" Height="31px" Width="239px" required="true"></asp:TextBox><font color="red">Only Added Course are allowed<br /></font>

                   </td>
           </tr>
       </table>
        <div class="Dbutton">
            <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" Font-Italic="True" ForeColor="Black" Width="87px" />
        </div>
    </div>
</asp:Content>
