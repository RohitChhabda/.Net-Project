Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Public Class _Default
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim sid As String
    Dim s1password As String
    Dim Temp As String
    Dim data As SqlDataReader
    Dim Name As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        End Sub

        Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
            Try
            con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
            sid = TextBox1.Text
                s1password = TextBox2.Text

                con.Open()
                cmd = New SqlCommand("SELECT * from Faculty where id=@sidd ", con)
                cmd.Parameters.AddWithValue("@sidd", sid)

                data = cmd.ExecuteReader()
                data.Read()
            Temp = data.GetValue(2)
            Name = data.GetValue(1)
            Session("FirstName") = Name
            Session("Id") = sid
            con.Close()
            If Temp = s1password Then

                    Response.Redirect("Home.aspx")
                Else
                    Label1.Text = "Warning: Wrong Id Or Password"

                End If
            Catch ex As Exception


        End Try
        End Sub
    End Class