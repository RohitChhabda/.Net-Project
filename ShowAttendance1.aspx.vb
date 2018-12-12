Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data.DataTable
Imports System.Data.Sql
Imports System.Data
Public Class ShowAttendance1
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim SDA As SqlDataAdapter
    Dim dataSet As New DataSet()
    Dim batch As String
    Dim course As String
    Dim sem As String
    Dim id As String
    Dim courseid As String
    Dim datee As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
            batch = DropDownList3.Text
            course = DropDownList2.Text
            sem = DropDownList1.Text

            courseid = batch & "/" & course & "/" & sem
            id = Convert.ToString(Session("Id"))
            If String.IsNullOrEmpty(id) Then
                Response.Redirect("Default.aspx")
            Else
                Session("Courseid") = courseid

                Response.Redirect("ShowAttendance.aspx")
            End If


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class