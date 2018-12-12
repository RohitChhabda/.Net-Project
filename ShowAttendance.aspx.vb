Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data.DataTable
Imports System.Data.Sql
Imports System.Data
Public Class ShowAttendance
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim SDA As SqlDataAdapter
    Dim dataSet As New DataSet()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then
                con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
                con.Open()
                Dim temp As String = Convert.ToString(Session("Courseid"))

                Dim p As String = "74"
                cmd = New SqlCommand("select * from [" & temp & "T]  ", con)

                SDA = New SqlDataAdapter(cmd)
                SDA.Fill(dataSet)
                cmd.ExecuteNonQuery()
                GridView3.DataSource = dataSet
                GridView3.DataBind()


                con.Close()
            End If



        Catch ex As Exception

        End Try


        If String.IsNullOrEmpty(Session("FirstName")) Then
            Response.Redirect("Default.aspx")
        End If
    End Sub

    Protected Sub OnSelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView3.SelectedIndexChanged
        Dim row As GridViewRow = GridView3.SelectedRow
        Dim name As String = row.Cells(1).Text
        Session("NN") = name
        Response.Redirect("View.aspx")
    End Sub
End Class