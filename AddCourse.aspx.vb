Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Public Class AddCourse
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ddl3 As String
    Dim ddl2 As String
    Dim ddl1 As String
    Dim tb2 As String
    Dim id As String
    Dim tm As String
    Dim Dy As String
    Dim count As Integer
    Dim str As String
    Dim Label1 As Label

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack Then

        Else

            If String.IsNullOrEmpty(Session("FirstName")) Then
                Response.Redirect("Default.aspx")
            End If


        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
            ddl1 = DropDownList1.Text
            tb2 = TextBox2.Text
            ddl2 = DropDownList2.Text
            ddl3 = DropDownList3.Text
            tm = DropDownList4.text
            Dy = ""
            For Each item As ListItem In checkboxlist1.Items
                If item.Selected = True Then
                    Dy = Dy + "" + item.Text
                    Dy = Dy + ","
                End If
                If Dy.CompareTo("Daily,") = 0 Then
                    Exit For
                End If

            Next
            str = Dy.Remove(Dy.LastIndexOf(","))
            id = Convert.ToString(Session("Id"))
            If String.IsNullOrEmpty(id) Then
                Response.Redirect("Default.aspx")
            Else
                con.Open()
                cmd = New SqlCommand("INSERT INTO CourseDetails VALUES(@sidd,@snamee,@s1passwordd,@s22,@s33,@tmng,@dayy)", con)
                cmd.Parameters.AddWithValue("@sidd", id)
                cmd.Parameters.AddWithValue("@snamee", ddl1)
                cmd.Parameters.AddWithValue("@s1passwordd", tb2)
                cmd.Parameters.AddWithValue("@s22", ddl2)
                cmd.Parameters.AddWithValue("@s33", ddl3)
                cmd.Parameters.AddWithValue("@tmng", tm)
                cmd.Parameters.AddWithValue("@dayy", str)
                cmd.ExecuteNonQuery()
                Dim str1 As String = "CREATE TABLE [" & tb2 & "C]([SrNo] INT NOT NULL IDENTITY(1,1), [RollNo] VARCHAR(50) NOT NULL,[Name] VARCHAR(50) NOT NULL,[Date] VARCHAR(50) NOT NULL,[Status] VARCHAR(50) NOT NULL,PRIMARY KEY (SrNo));"
                cmd = New SqlCommand(str1, con)
                cmd.ExecuteNonQuery()
                Dim str2 As String = "CREATE TABLE [" & tb2 & "T]( [RollNo] VARCHAR(50) NOT NULL,[Name] VARCHAR(50) NOT NULL,[Present] VARCHAR(50) DEFAULT '0',[TotalClasses] VARCHAR(50) DEFAULT '0'
,[AttendancePercentage] VARCHAR(50) ,PRIMARY KEY (RollNo));"
                cmd = New SqlCommand(str2, con)
                cmd.ExecuteNonQuery()
                con.Close()
                Session("Course") = tb2
                Response.Redirect("AddCourse.aspx")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class