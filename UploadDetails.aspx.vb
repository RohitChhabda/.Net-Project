Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Public Class UploadDetails
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim name As String
    Dim roll As String
    Dim cid As String
    Dim id As String
    Dim courseid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack Then

        Else
            If String.IsNullOrEmpty(Convert.ToString(Session("FirstName"))) Then
                Response.Redirect("Default.aspx")
            End If

        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
            name = TextBox1.Text
            roll = TextBox3.Text
            cid = TextBox2.Text
            id = Convert.ToString(Session("Id"))
            Dim ci As String = Convert.ToString(Session("Course"))
            If String.IsNullOrEmpty(id) Then
                Response.Redirect("Default.aspx")
            ElseIf Not ci.CompareTo(cid) = 0
                Response.Redirect("Addcourse.aspx")
            Else
                con.Open()

                cmd = New SqlCommand("INSERT INTO Admission VALUES(@rn,@name,@cid)", con)
                cmd.Parameters.AddWithValue("@name", name)
                cmd.Parameters.AddWithValue("@rn", roll)
                cmd.Parameters.AddWithValue("@cid", cid)
                cmd.ExecuteNonQuery()
                cmd = New SqlCommand("INSERT INTO [" & cid & "T" & "] ([RollNo],[Name])VALUES(@rn,@name)", con)
                cmd.Parameters.AddWithValue("@name", name)
                cmd.Parameters.AddWithValue("@rn", roll)

                cmd.ExecuteNonQuery()
                con.Close()
                Response.Redirect("UploadDetails.aspx")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
End Class