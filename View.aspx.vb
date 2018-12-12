Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data.DataTable
Imports System.Data.Sql
Imports System.Data
Public Class View
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim SDA As SqlDataAdapter
    Dim dataSet As New DataSet()
    Dim temp As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
        con.Open()
        Dim temp As String = Convert.ToString(Session("Courseid"))
        Dim name As String = Convert.ToString(Session("NN"))
        cmd = New SqlCommand("select * from [" & temp & "C]  WHERE  name=@name", con)
        cmd.Parameters.AddWithValue("@name", name)
        SDA = New SqlDataAdapter(cmd)
        SDA.Fill(DataSet)
        cmd.ExecuteNonQuery()
        GridView3.DataSource = DataSet
        GridView3.DataBind()
        con.Close()
    End Sub

End Class