Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data.DataTable
Imports System.Data.Sql
Imports System.Data
Public Class AttendanceChart
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim SDA As SqlDataAdapter
    Dim dataSet As New DataSet()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Try
                con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
                con.Open()
                Dim temp As String = Convert.ToString(Session("Courseid"))
                cmd = New SqlCommand("select * from Admission where CourseId=@idd", con)
                cmd.Parameters.AddWithValue("@idd", temp)
                SDA = New SqlDataAdapter(cmd)
                SDA.Fill(dataSet)
                cmd.ExecuteNonQuery()
                GridView2.DataSource = dataSet
                GridView2.DataBind()

                con.Close()
            Catch ex As Exception

            End Try

        Else

            If String.IsNullOrEmpty(Session("FirstName")) Then
                Response.Redirect("Default.aspx")
            End If


        End If


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        con = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='" & Server.MapPath("~") & "App_Data\FacultyDB.mdf';Integrated Security=True")
        Dim cid As String = Convert.ToString(Session("Courseid"))

        Dim cidT As String = cid & "T"
        Dim dte As String = Convert.ToString(Session("d"))
        Dim reader As SqlDataReader

        cid = cid & "C"
        For Each row As GridViewRow In GridView2.Rows
            con.Open()
            Dim st As Integer
            Dim ta As Integer
            Dim Att As Integer
            Dim SDA As SqlDataAdapter
            Dim Presentt As CheckBox = CType(row.FindControl("CheckBox1"), CheckBox)

            If Presentt.Checked Then
                Dim rn As String = Convert.ToString(row.Cells(0).Text)
                Dim nme As String = row.Cells(1).Text
                cmd = New SqlCommand("Insert INTO [" & cid & "]([RollNo],[Name],[Date],[Status])  VALUES (@rn,@nme,@dte,'P')", con)
                cmd.Parameters.AddWithValue("@rn", rn)
                cmd.Parameters.AddWithValue("@nme", nme)
                cmd.Parameters.AddWithValue("@dte", dte)
                cmd.ExecuteNonQuery()


                cmd = New SqlCommand("select * from [" & cidT & "] where RollNo=@rn", con)
                cmd.Parameters.AddWithValue("@rn", rn)
                reader = cmd.ExecuteReader()


                While reader.Read()

                    st = Convert.ToInt64(reader("Present").ToString)
                    ta = Convert.ToInt64(reader("TotalClasses").ToString)
                    st = st + 1
                    ta = ta + 1
                    Att = ((st / ta) * 100)
                End While

                reader.Close()

                cmd = New SqlCommand("update [" & cidT & "] set Present=@stt , TotalClasses=@ta , AttendancePercentage=@Att where RollNo=@rn", con)
                cmd.Parameters.AddWithValue("@rn", rn)

                cmd.Parameters.AddWithValue("@ta", Convert.ToString(ta))
                cmd.Parameters.AddWithValue("@stt", Convert.ToString(st))
                cmd.Parameters.AddWithValue("@Att", Convert.ToString(Att))
                cmd.ExecuteNonQuery()

            Else


                Dim rn As String = row.Cells(0).Text
                Dim nme As String = row.Cells(1).Text
                cmd = New SqlCommand("insert into [" & cid & "] ([RollNo],[Name],[Date],[Status]) values(@rn,@nme,@dte,'A')", con)
                cmd.Parameters.AddWithValue("@cidd", cid)

                cmd.Parameters.AddWithValue("@rn", rn)
                cmd.Parameters.AddWithValue("@nme", nme)
                cmd.Parameters.AddWithValue("@dte", dte)
                cmd.ExecuteNonQuery()
                cmd = New SqlCommand("select * from [" & cidT & "] where RollNo=@rn", con)
                cmd.Parameters.AddWithValue("@rn", rn)
                reader = cmd.ExecuteReader()


                While reader.Read()

                    st = Convert.ToInt64(reader("Present").ToString)
                    ta = Convert.ToInt64(reader("TotalClasses").ToString)

                    ta = ta + 1
                    Att = ((st / ta) * 100)
                End While

                reader.Close()



                cmd = New SqlCommand("update [" & cidT & "] Set TotalClasses=@ta , AttendancePercentage =@Att where RollNo=@rn", con)
                cmd.Parameters.AddWithValue("@rn", rn)

                cmd.Parameters.AddWithValue("@Att", Convert.ToString(Att))
                cmd.Parameters.AddWithValue("@ta", Convert.ToString(ta))
                cmd.ExecuteNonQuery()
            End If
            con.Close()
        Next row

        Response.Redirect("MarkAttendance.aspx")


    End Sub
    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged

    End Sub
End Class