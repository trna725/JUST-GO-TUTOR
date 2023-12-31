using Dapper;

public class SendMailService : BaseClass
{
    /// <summary>
    /// 會員註冊寄發驗證的電子郵件
    /// </summary>
    /// <param name="mailObject">電子郵件物件</param>
    /// <returns></returns>
    public string UserRegister(MailObject mailObject)
    {
        using var gmail = new GmailService();
        using var dpr = new DapperRepository();

        //變數
        string str_reg_date = DateTime.Now.ToString("yyyy/MM/dd HH:mm");

        //信件內容
        gmail.MessageText = "";
        gmail.ReceiverName = mailObject.UserName;
        gmail.ReceiverEmail = mailObject.ToEmail;
        gmail.Subject = string.Format("{0} 會員註冊驗證通知信", AppService.AppName);
        gmail.Body = string.Format("敬愛的會員 {0} 您好~~ <br /><br />", mailObject.UserName);
        gmail.Body += string.Format("您於 {0} 在我們網站註冊了會員帳號<br />", str_reg_date);
        gmail.Body += string.Format("您的會員帳號為：{0}<br />", mailObject.UserNo);
        gmail.Body += "請您點擊以下連結進行帳號電子郵件驗證<br /><br />";
        gmail.Body += string.Format("<a href=\"{0}\" target=\"_blank\">{1}</a><br /><br />", mailObject.ReturnUrl, mailObject.ReturnUrl);
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />";
        gmail.Body += string.Format("{0} {1}<br />", AppService.AppName, AppService.AppVersion);
        gmail.Body += string.Format("{0}<br />", ActionService.HttpHost);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();
        return gmail.MessageText;
    }


    /// <summary>
    /// 帳號忘記密碼寄發密碼重設的電子郵件
    /// </summary>
    /// <param name="mailObject">電子郵件物件</param>
    /// <returns></returns>
    public string UserForget(MailObject mailObject)
    {
        using var gmail = new GmailService();
        using var dpr = new DapperRepository();

        //變數
        string str_reg_date = mailObject.MailTime.ToString("yyyy/MM/dd HH:mm");

        //信件內容
        gmail.MessageText = "";
        gmail.ReceiverName = mailObject.UserName;
        gmail.ReceiverEmail = mailObject.ToEmail;
        gmail.Subject = string.Format("{0} 帳號忘記密碼重新設定通知信", AppService.AppName);
        gmail.Body = string.Format("敬愛的會員 {0} 您好!! <br /><br />", mailObject.UserName);
        gmail.Body += string.Format("您於 {0} 在我們網站執行了忘記密碼的功能，<br /><br />", str_reg_date);
        gmail.Body += string.Format("您新的密碼為： {0} <br /><br />", mailObject.Password);
        gmail.Body += "請您點擊以下連結進行忘記密碼驗證，並再自行變更您熟悉的密碼！！<br /><br />";
        gmail.Body += string.Format("<a href=\"{0}\" target=\"_blank\">{1}</a><br /><br />", mailObject.ReturnUrl, mailObject.ReturnUrl);
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />";
        gmail.Body += string.Format("{0} {1}<br />", AppService.AppName, AppService.AppVersion);
        gmail.Body += string.Format("{0}<br />", ActionService.HttpHost);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();
        return gmail.MessageText;
    }

    /// <summary>
    /// 帳號重設密碼寄發驗證的電子郵件
    /// </summary>
    /// <param name="mailObject">電子郵件物件</param>
    /// <returns></returns>
    public string UserResetPassword(MailObject mailObject)
    {
        using var gmail = new GmailService();
        using var dpr = new DapperRepository();

        //變數
        string str_reg_date = DateTime.Now.ToString("yyyy/MM/dd HH:mm");

        //信件內容
        gmail.MessageText = "";
        gmail.ReceiverName = mailObject.UserName;
        gmail.ReceiverEmail = mailObject.ToEmail;
        gmail.Subject = string.Format("{0} 帳號重設密碼重新設定通知信", AppService.AppName);
        gmail.Body = string.Format("敬愛的會員 {0} 您好!! <br /><br />", mailObject.UserName);
        gmail.Body += string.Format("您於 {0} 在我們網站執行了重設密碼的功能，<br /><br />", str_reg_date);
        gmail.Body += "請您點擊以下連結完成兩階段驗證！！<br /><br />";
        gmail.Body += string.Format("<a href=\"{0}\" target=\"_blank\">{1}</a><br /><br />", mailObject.ReturnUrl, mailObject.ReturnUrl);
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />";
        gmail.Body += string.Format("{0} {1}<br />", AppService.AppName, AppService.AppVersion);
        gmail.Body += string.Format("{0}<br />", ActionService.HttpHost);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();
        return gmail.MessageText;
    }

    /// <summary>
    ///連絡我們的電子郵件
    /// </summary>
    /// <param name="mailObject">電子郵件物件</param>
    /// <returns></returns>
    public string ContactUs(MailObject mailObject)
    {
        using var gmail = new GmailService();

        //寄信給管理員
        gmail.MessageText = "";
        gmail.ReceiverName = AppService.AdminName;
        gmail.ReceiverEmail = AppService.AdminEmail;
        gmail.Subject = string.Format("{0} 連絡我們的通知信-{1}", AppService.AppName, mailObject.ToName);
        gmail.Body = string.Format("敬愛的 {0} 您好!! <br /><br />", mailObject.FromName);
        gmail.Body += string.Format("{0} 在我們網站 {1} 提交了一封連絡訊息，<br /><br />", mailObject.ToName, AppService.AppName);
        gmail.Body += string.Format("訊息的內容如下：<br /><br />");
        gmail.Body += string.Format("訊息提交時間： {0} <br />", DateTime.Now.ToString("yyyy/MM/dd HH:mm"));
        gmail.Body += string.Format("提訊人姓名： {0} <br />", mailObject.ToName);
        gmail.Body += string.Format("提訊人信箱： {0} <br />", mailObject.ToEmail);
        gmail.Body += string.Format("訊息主旨： {0} <br />", mailObject.MailSubject);
        gmail.Body += string.Format("訊息內文：<br /></hr>");
        gmail.Body += mailObject.MailContent;
        gmail.Body += "<br /><br />";
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />";
        gmail.Body += string.Format("{0} {1}<br />", AppService.AppName, AppService.AppVersion);
        gmail.Body += string.Format("{0}<br />", ActionService.HttpHost);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();
        if (!string.IsNullOrEmpty(gmail.MessageText)) return gmail.MessageText;

        //寄信給提交訊息的人員備查
        gmail.MessageText = "";
        gmail.ReceiverName = mailObject.ToName;
        gmail.ReceiverEmail = mailObject.ToEmail;
        gmail.Subject = string.Format("{0} 連絡我們訊息已提交, 請靜待回覆!!", AppService.AppName);
        gmail.Body = string.Format("敬愛的 {0} 您好!! <br /><br />", mailObject.ToName);
        gmail.Body += string.Format("您在我們網站 {0} 提交了一封連絡訊息，<br /><br />", AppService.AppName);
        gmail.Body += string.Format("訊息的內容如下：<br /><br />");
        gmail.Body += string.Format("訊息提交時間： {0} <br />", DateTime.Now.ToString("yyyy/MM/dd HH:mm"));
        gmail.Body += string.Format("提訊人姓名： {0} <br />", mailObject.ToName);
        gmail.Body += string.Format("提訊人信箱： {0} <br />", mailObject.ToEmail);
        gmail.Body += string.Format("訊息主旨： {0} <br />", mailObject.MailSubject);
        gmail.Body += string.Format("訊息內文：<br /></hr>");
        gmail.Body += mailObject.MailContent;
        gmail.Body += "<br /><br />";
        gmail.Body += "我們已收到您的來信，將會在最短的時間內給您回覆，感謝您的來信!!<br /><br />";
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />";
        gmail.Body += string.Format("{0}<br />", AppService.AppName);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();

        return gmail.MessageText;
    }

    /// <summary>
    ///訂閱
    /// </summary>
    /// <param name="email">電子信箱</param>
    /// <param name="isAddEmail">是否訂閱/退訂</param>
    /// <returns></returns>
    public string Subscription(string email, bool isAddEmail)
    {
        using var gmail = new GmailService();

        //寄信給管理員
        string str_data = (isAddEmail) ? "訂閱" : "退訂";
        gmail.MessageText = "";
        gmail.ReceiverName = AppService.AdminName;
        gmail.ReceiverEmail = AppService.AdminEmail;
        gmail.Subject = string.Format("{0} {1}網站的通知信", AppService.AppName, str_data);
        gmail.Body = string.Format("敬愛的 {0} 您好!! <br /><br />", AppService.AdminName);
        gmail.Body += string.Format("我們網站 {0} 有人提交了一份{1}資訊，<br /><br />", AppService.AppName, str_data);
        gmail.Body += string.Format("訂閱人信箱： {0} <br />", email);
        gmail.Body += "<br /><br />";
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />";
        gmail.Body += string.Format("{0}<br />", AppService.AppName);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();
        return gmail.MessageText;
    }

    /// <summary>
    /// Case To User
    /// </summary>
    /// <returns></returns>
    public string CaseSendToUser()
    {
        using var gmail = new GmailService();
        using var user = new z_repoUsers();
        using var courseCase = new z_repoCourseCase(); 
        var userData = user.GetData(SessionService.UserNo);
        var caseData = courseCase.GetData(SessionService.CaseTime); 
        //寄信給 User
        gmail.MessageText = "";
        gmail.ReceiverName = userData.UserName;
        gmail.ReceiverEmail = userData.ContactEmail;
        gmail.Subject = string.Format("{0} 申請預約家教通知信，案件編號：{1}", AppService.AppName, caseData.Id);
        gmail.Body = string.Format("親愛的 {0} 同學您好~~ <br /><br />", SessionService.UserName);
        gmail.Body += string.Format("您於 {0} 在本平台申請了一份上課申請資訊<br /><br />", DateTime.Now.ToString("yyyy/MM/dd HH:mm"));
        gmail.Body += "申請資訊如下：<br />";
        gmail.Body += $"希望上課的星期：{SessionService.WeekSection}<br />";
        gmail.Body += $"希望上課的時間：{SessionService.TimeSection}<br />";
        gmail.Body += $"課程名稱：{SessionService.CourseName}<br />";
        gmail.Body += $"老師姓名：{SessionService.TeacherName}<br />";
        gmail.Body += "<br />";
        gmail.Body += "本平台會盡速安排安師與您主動連，請您靜待連絡資訊!!";
        gmail.Body += "<br /><br />";
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />";
        gmail.Body+=  $"與老師會談完後請再填寫滿意度調查~~: <br />";
        gmail.Body+= "https://forms.gle/CknGmLweCUyJ3PgS9"; 
        gmail.Body += "<br />-------------------------------------------<br />";
        gmail.Body += string.Format("{0}<br />", AppService.AppName);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();
        return gmail.MessageText;
    }

     /// <summary>
    /// Case To User by Backend
    /// </summary>
    /// <returns></returns>
    public string CaseSendToUserByBackend(CourseCase model)
    {
        using var gmail = new GmailService();
        using var user = new z_repoUsers();
        using var courseCase = new z_repoCourseCase(); 
        var userData = user.GetData(model.StudentNo);
        // var caseData = courseCase.GetData(model.CaseTime); 
        var caseData = courseCase.GetData(SessionService.CaseTime); 
        //寄信給 User
        gmail.MessageText = "";
        gmail.ReceiverName = userData.UserName;
        gmail.ReceiverEmail = userData.ContactEmail;
        gmail.Subject = string.Format("{0} 申請預約家教通知信，案件編號：{1}", AppService.AppName, caseData.Id);
        gmail.Body = string.Format("親愛的 {0} 同學您好~~ <br /><br />", caseData.StudentName);
        gmail.Body += string.Format("本平台的客服於 {0} 在本平台幫您申請了一份上課申請資訊<br /><br />", DateTime.Now.ToString("yyyy/MM/dd HH:mm"));
        gmail.Body += "申請資訊如下：<br />";
        gmail.Body += $"希望上課的星期：{caseData.WeekSection}<br />";
        gmail.Body += $"希望上課的時間：{caseData.TimeSection}<br />";
        gmail.Body += $"課程名稱：{caseData.CourseName}<br />";
        gmail.Body += $"老師姓名：{caseData.TeacherName}<br />";
        gmail.Body += "<br />";
        gmail.Body += "本平台會盡速安排安師與您主動連，請您靜待連絡資訊!!";
        gmail.Body += "<br /><br />";
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />"; 
        gmail.Body+=  $"與老師會談完後請再填寫滿意度調查~~: <br />";
        gmail.Body+= "https://forms.gle/CknGmLweCUyJ3PgS9"; 
        gmail.Body += "<br />-------------------------------------------<br />";
        gmail.Body += string.Format("{0}<br />", AppService.AppName);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();
        return gmail.MessageText;
    }

    /// <summary>
    /// Case To User
    /// </summary>
    /// <returns></returns>
    public string CaseSendToTeacher()
    {
        using var gmail = new GmailService();
        using var user = new z_repoUsers();
        using var courseCase = new z_repoCourseCase(); 
        var teacherData = user.GetData(SessionService.TeacherNo);
        var userData = user.GetData(SessionService.UserNo);
        var caseData = courseCase.GetData(SessionService.CaseTime); 
        //寄信給 User
        gmail.MessageText = "";
        gmail.ReceiverName = teacherData.UserName;
        gmail.ReceiverEmail = teacherData.ContactEmail;
        gmail.Subject = string.Format("{0} 預約案件成立通知信-{1}，案件編號：{2}", AppService.AppName , SessionService.UserName, caseData.Id);
        gmail.Body = string.Format("敬愛的 {0} 老師您好!! <br /><br />", teacherData.UserName);
        gmail.Body += string.Format("{0} 於本平台申請了一份上課申請資訊<br /><br />", SessionService.UserName);
        gmail.Body += "申請資訊如下：<br />";
        gmail.Body += $"希望上課的星期：{SessionService.WeekSection}<br />";
        gmail.Body += $"希望上課的時間：{SessionService.TimeSection}<br />";
        gmail.Body += $"課程名稱：{SessionService.CourseName}<br />";
        gmail.Body += $"學生編號：{userData.UserNo}<br />";
        gmail.Body += $"學生姓名：{userData.UserName}<br />";
        gmail.Body += $"連絡電話：{userData.ContactTel}<br />";
        gmail.Body += $"電子信箱：{userData.ContactEmail}<br />";
        gmail.Body += "<br />";
        gmail.Body += "請盡速主動聯絡學生，若當天無法上課請聯絡本公司客服專員：02-1234567 陳小姐!!";
        gmail.Body += "<br /><br />";
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />";
        gmail.Body += string.Format("{0}<br />", AppService.AppName);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();
        return gmail.MessageText;
    }

     /// <summary>
    /// Case To User by Backend
    /// </summary>
    /// <returns></returns>
    public string CaseSendToTeacherByBackend(CourseCase model)
    {
        using var gmail = new GmailService();
        using var user = new z_repoUsers();
        using var courseCase = new z_repoCourseCase(); 
        var teacherData = user.GetData(model.TeacherNo);
        var userData = user.GetData(model.StudentNo);
        // var caseData = courseCase.GetData(model.CaseTime); 
        var caseData = courseCase.GetData(SessionService.CaseTime); 
        //寄信給 User
        gmail.MessageText = "";
        gmail.ReceiverName = teacherData.UserName;
        gmail.ReceiverEmail = teacherData.ContactEmail;
        gmail.Subject = string.Format("{0} 預約案件成立通知信-{1}，案件編號：{2}", AppService.AppName , model.StudentName, caseData.Id);
        gmail.Body = string.Format("敬愛的 {0} 老師您好!! <br /><br />", teacherData.UserName);
        gmail.Body += string.Format("本平台的客服幫 {0} 同學申請了一份上課申請資訊<br /><br />", model.StudentName);
        gmail.Body += "申請資訊如下：<br />";
        gmail.Body += $"希望上課的星期：{caseData.WeekSection}<br />";
        gmail.Body += $"希望上課的時間：{caseData.TimeSection}<br />";
        gmail.Body += $"課程名稱：{caseData.CourseName}<br />";
        gmail.Body += $"學生編號：{userData.UserNo}<br />";
        gmail.Body += $"學生姓名：{userData.UserName}<br />";
        gmail.Body += $"連絡電話：{userData.ContactTel}<br />";
        gmail.Body += $"電子信箱：{userData.ContactEmail}<br />";
        gmail.Body += "<br />";
        gmail.Body += "請盡速主動聯絡學生，若當天無法上課請聯絡本公司客服專員：02-1234567 陳小姐!!";
        gmail.Body += "<br /><br />";
        gmail.Body += "本信件為系統自動寄出,請勿回覆!!<br /><br />";
        gmail.Body += "-------------------------------------------<br />";
        gmail.Body += string.Format("{0}<br />", AppService.AppName);
        gmail.Body += "-------------------------------------------<br />";
        //寄信
        gmail.Send();
        return gmail.MessageText;
    }
}