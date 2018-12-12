<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Mpage.Master" CodeFile="Home.aspx.vb" Inherits="Home" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="full">

       <div class="header">
          <h1 style="font-family: Arial; font-style: italic; font-size: xx-large">Schedule</h1>
        </div>
       <div class="formm">
           <asp:GridView ID="Grid" AutoGenerateColumns="False" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id"/>
                   <asp:BoundField DataField="Sem" HeaderText="Batch"/>
                   <asp:BoundField DataField="Courseid" HeaderText="SubjectId"/>
                   <asp:BoundField DataField="Subject" HeaderText="Course"/>
                   <asp:BoundField DataField="Batch" HeaderText="Semester"/>
                   <asp:BoundField DataField="Timing" HeaderText="Lecture"/>
                   <asp:BoundField DataField="Day" HeaderText="Day"/>
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
