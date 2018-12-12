<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Mpage.Master" CodeFile="ShowShortAttendance.aspx.vb" Inherits="ShowShortAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" EnableEventValidation="true" runat="server">
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
         
     
         .auto-style4 {
             padding-top: 20px;
             height: 350px;
             width: 900px;
             padding-left: 300px;
             text-align-center;
             background-color: white;
             float: left;
             text-align: center;
         }
         
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="full">

       <div class="header">
          <h1 style="font-family: Arial; font-style: italic; font-size: xx-large">Schedule</h1>
        </div>
       <div class="auto-style4">
           <asp:GridView ID="GridView3" AutoGenerateColumns="False"  
 OnSelectedIndexChanged = "OnSelectedIndexChanged"
  runat="server" Height="158px" Width="291px" CellPadding="4" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:BoundField DataField="RollNo" HeaderText="RollNo"/>
                   <asp:BoundField DataField="Name" HeaderText="Name"/>
                   <asp:BoundField DataField="Present" HeaderText="Present"/>
                   <asp:BoundField DataField="TotalClasses" HeaderText="TotalClasses"/>
                    <asp:BoundField DataField="AttendancePercentage" HeaderText="AttendancePercentage"/>
                    <asp:TemplateField HeaderText="Status">
                       <ItemTemplate>
                           <asp:Button ID="Button1" CommandName="Select" runat="server" Text="View"  />
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
        
       </div>
            
   
   </div>
</asp:Content>
