namespace BetulFinalApp.Helper_Codes
{
    public class AlertBoxHelper
    {
        public static string GetResponseAlertBox(bool isSuccess)
        {
            return isSuccess ? GetSuccessAlertBox() : GetErrorAlertBox();
        }

        public static string GetSuccessAlertBox()
        {
            return "<div class=\"alert alert-success\" role=\"alert\"> Kayıt işleminiz başarılı bir şekilde gerçekleşmiştir.</div>";
        }
        public static string GetErrorAlertBox()
        {
            return "<div class=\"alert alert-danger\" role=\"alert\"> İşleminiz sırasında bir hata meydana gelmiştir. Lütfen bilgilerinizi kontrol ediniz.</div>";
        }
    }
}