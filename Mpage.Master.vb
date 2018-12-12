Public Class Mpage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "Hello Dr. " & Convert.ToString(Session("FirstName"))

    End Sub

End Class