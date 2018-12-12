<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Mpage.Master" CodeFile="AttendanceChart.aspx.vb" Inherits="AttendanceChart" %>
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
            padding-top:20px;
            height:350px;
            width:900px;
            padding-left:300px;
            text-align-center;
            background-color:white;
            float:left;
        }
         
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="full">

       <div class="header">
          <h1 style="font-family: Arial; font-style: italic; font-size: xx-large">Schedule</h1>
        </div>
       <div class="formm">
           <asp:GridView ID="GridView2" AutoGenerateColumns="False" runat="server" Height="158px" Width="291px" CellPadding="4" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:BoundField DataField="Roll" HeaderText="Roll"/>
                   <asp:BoundField DataField="Name" HeaderText="Name"/>
                   <asp:BoundField DataField="CourseId" HeaderText="CourseId"/>
                   <asp:TemplateField HeaderText="Status">
                       <ItemTemplate>
                           <asp:CheckBox ID="CheckBox1" runat="server" />
                       </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               <EditRowStyle BackColor="#999999" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#E9E7E2" />
               <SortedAscendingHeaderStyle BackColor="#506C8C" />
               <SortedDescendingCellStyle BackColor="#FFFDF8" />
               <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
           </asp:GridView>
          &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="UPDATE" Height="32px" Width="91px" Font-Bold="True" Font-Italic="True" /><br />
       </div>
            
   
   </div>
</asp:Content>
