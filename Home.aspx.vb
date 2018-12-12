Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data.DataTable
Imports System.Data.Sql
Imports System.Data
Public Class Home
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim id2 As String
    Dim SDA As SqlDataAdapter
    Dim dataSet As New DataSet()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If String.IsNullOrEmpty(Convert.ToString(Session("FirstName"))) Then

            Response.Redirect("Default.aspx")
        Else
            Try
                con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
                con.Open()
                id2 = Convert.ToString(Session("Id"))
                cmd = New SqlCommand("select * from CourseDetails where id=@idd", con)
                cmd.Parameters.AddWithValue("@idd", id2)
                SDA = New SqlDataAdapter(cmd)
                SDA.Fill(dataSet)
                cmd.ExecuteNonQuery()
                Grid.DataSource = dataSet
                Grid.DataBind()
                con.Close()
            Catch ex As Exception

            End Try

        End If

    End Sub

End Class