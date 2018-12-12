Imports System
Imports System.Data.SqlClient
Imports System.Configuration

Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim sname As String
    Dim s1password As String
    Dim confirmpassword As String
    Dim s2 As String
    Dim s3 As String
    Dim sid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button1_click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
            sname = TextBox1.Text
            s1password = TextBox2.Text
            confirmpassword = TextBox3.Text
            s2 = DropDownList1.Text
            s3 = RadioButtonList1.Text
            sid = TextBox4.Text
            If String.Compare(s1password, confirmpassword) = 0 Then
                con.Open()
                cmd = New SqlCommand("INSERT INTO Faculty VALUES(@sidd,@snamee,@s1passwordd,@s22,@s33)", con)
                cmd.Parameters.AddWithValue("@sidd", sid)
                cmd.Parameters.AddWithValue("@snamee", sname)
                cmd.Parameters.AddWithValue("@s1passwordd", s1password)
                cmd.Parameters.AddWithValue("@s22", s2)
                cmd.Parameters.AddWithValue("@s33", s3)
                cmd.ExecuteNonQuery()
                con.Close()
                Response.Redirect("Default.aspx")
            Else
                Response.Redirect("SignUp.aspx")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
    End Sub
End Class