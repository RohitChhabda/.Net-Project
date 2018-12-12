<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Mpage.Master" CodeFile="AddCourse.aspx.vb" Inherits="AddCourse" %>
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
                    <i> Add Course</i></font></h1>
        </div>
       <table class="formm">
           <tr>
               <td class="auto-style17" style="font-style: italic; font-size: large; font-family: 'Arial Black'">
                 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Batch</td>
               <td class="auto-style18">

                   <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="243px">
                    <asp:ListItem Text="Select Batch" Value="selectc2" Selected="True"></asp:ListItem>  
                    <asp:ListItem Text="MCA" Value="MCA" ></asp:ListItem>
                    <asp:ListItem Text="BE(CS)" Value="BE(CS)" ></asp:ListItem> 
                    <asp:ListItem Text="IMSC." Value="IMSC" ></asp:ListItem> 
                    <asp:ListItem Text="BE(IT)" Value="BE(IT)" ></asp:ListItem>  
                    <asp:ListItem Text="BCA" Value="BCA" ></asp:ListItem>   
                             
                   </asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="select" ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>

               </td>
           </tr>
            <tr>
               <td class="auto-style19" style="font-style: italic; font-size: large; font-family: 'Arial Black'">
                 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Course</td>
               <td class="auto-style20">
                      
                   <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="243px">
                    <asp:ListItem Text="Select Course" Value="selectc" Selected="True"></asp:ListItem>  
                    <asp:ListItem Text="Java Programming" Value="Java" ></asp:ListItem>
                    <asp:ListItem Text="Advance Java" Value="Advance Java" ></asp:ListItem> 
                    <asp:ListItem Text="Data Structure" Value="Data Structure" ></asp:ListItem> 
                    <asp:ListItem Text="Algorithm" Value="Algorithm" ></asp:ListItem>  
                    <asp:ListItem Text="Operating System" Value="Operating System" ></asp:ListItem>   
                             
                   </asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="select" ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                      
               </td>
           </tr>
           <tr>
              <td class="auto-style7"  style="font-style: italic; font-family: 'Arial Black'; font-size: large">
                 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Course Id</td>
               <td class="auto-style10">

                   <asp:TextBox ID="TextBox2" placeholder="Eg:mca/datastructure/2" runat="server" Height="31px" Width="239px" required="true"></asp:TextBox>

                   </td>
           </tr>
            <tr>
               <td class="auto-style15" style="font-style: italic; font-size: large; font-family: 'Arial Black'">
                 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sem
                 
                </td>
               <td class="auto-style16">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="243px">
                    <asp:ListItem Text=" Select Semester" Value="selectc1" Selected="True"></asp:ListItem>  
                    <asp:ListItem Text="1st Sem" Value="1st Sem" ></asp:ListItem>
                    <asp:ListItem Text="2nd Sem" Value="2nd Sem" ></asp:ListItem> 
                    <asp:ListItem Text="3rd Sem" Value="3rd Sem" ></asp:ListItem> 
                    <asp:ListItem Text="4th Sem" Value="4th Sem" ></asp:ListItem>  
                    <asp:ListItem Text="5th Sem" Value="5th Sem" ></asp:ListItem>       
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="select" ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style19" style="font-style: italic; font-size: large; font-family: 'Arial Black'">
                 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Timing</td>
               <td class="auto-style20">
                      
                   <asp:DropDownList ID="DropDownList4" runat="server" Height="35px" Width="243px">
                    <asp:ListItem Text="Select Interval" Value="selectc4" Selected="True"></asp:ListItem>  
                    <asp:ListItem Text="8:00-8:50 am" Value="8:00-8:50 am" ></asp:ListItem>
                    <asp:ListItem Text="8:50-9:40 am" Value="8:50-9:40 am" ></asp:ListItem> 
                    <asp:ListItem Text="9:40-10:30 am" Value="9:40-10:30 am" ></asp:ListItem> 
                    <asp:ListItem Text="10:30-11:20 am" Value="10:30-11:20 am" ></asp:ListItem>  
                    <asp:ListItem Text="11:20-12:10 am" Value="11:20-12:10 am" ></asp:ListItem>   
                             
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator InitialValue="select" ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                      
               </td>
           </tr>
           <tr>
              <td class="auto-style19" style="font-style: italic; font-size: large; font-family: 'Arial Black'">
                 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Day </td>
               <td>
                 <asp:CheckBoxList ID="checkboxlist1" AutoPostBack="True"
         RepeatColumns="3" RepeatDirection="Vertical" RepeatLayout="Flow" TextAlign="Right"
        runat="server">
        <asp:ListItem >Daily</asp:ListItem>
        <asp:ListItem>Monday</asp:ListItem>
        <asp:ListItem>Tuesday</asp:ListItem>
        <asp:ListItem>Wednesday</asp:ListItem>
        <asp:ListItem>Thursday</asp:ListItem>
        <asp:ListItem>Friday</asp:ListItem>
       </asp:CheckBoxList>

                   <br />
                   <font color="red">Note: By Default Daily will be Selected
</font>
               </td>
           </tr>
       </table>
        <div class="Dbutton">
            <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" Font-Italic="True" ForeColor="Black" Width="87px" />
        </div>
    </div>
</asp:Content>
