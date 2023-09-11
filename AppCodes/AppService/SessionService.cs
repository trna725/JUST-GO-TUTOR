/// <summary>
/// Session 類別
/// </summary>
public static class SessionService
{
     /// <summary>
     /// HttpContextAccessor 物件
     /// </summary>
     /// <returns></returns>
     public static IHttpContextAccessor _contextAccessor { get; set; } = new HttpContextAccessor();
     /// <summary>
     /// HttpContext 物件
     /// </summary>
     public static HttpContext? _context { get { return _contextAccessor.HttpContext; } }
     /// <summary>
     /// 登入使用者代號
     /// </summary>
     /// <value></value>
     public static string AccountNo
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("AccountNo");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          { _context?.Session.Set<string>("AccountNo", value); }
     }
     /// <summary>
     /// 登入使用者姓名
     /// </summary>
     /// <value></value>
     public static string Name
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("Name");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          { _context?.Session.Set<string>("Name", value); }
     }
     /// <summary>
     /// 登入使用者角色
     /// </summary>
     /// <value></value>
     public static string RoleNo
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("RoleNo");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          { _context?.Session.Set<string>("RoleNo", value); }
     }

      /// <summary>
     /// 部門代號
     /// </summary>
     /// <value></value>
     public static string DeptNo
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("DeptNo");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          { _context?.Session.Set<string>("DeptNo", value); }
     }

      /// <summary>
     /// 部門代號
     /// </summary>
     /// <value></value>
     public static string DeptName
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("DeptName");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          { _context?.Session.Set<string>("DeptName", value); }
     }


      /// <summary>
      /// 部門代號
      /// </summary>
      /// <value></value>
      public static string TitleNo
      {
            get
            {
                  string str_value = "";
                  if (_context != null) str_value = _context.Session.Get<string>("TitleNo");
                  if (str_value == null) str_value = "";
                  return str_value;
            }
            set
            { _context?.Session.Set<string>("TitleNo", value); }
      }

      /// <summary>
      /// 部門代號
      /// </summary>
      /// <value></value>
      public static string TitleName
      {
            get
            {
                  string str_value = "";
                  if (_context != null) str_value = _context.Session.Get<string>("TitleName");
                  if (str_value == null) str_value = "";
                  return str_value;
            }
            set
            { _context?.Session.Set<string>("TitleName", value); }
      }
    /// <summary>
    /// 使用者圖片
    /// </summary>
    /// <value></value>
    public static string UserImage
    {
        get
        {
            string str_value = "~/images/users/";
            //取得目前專案資料夾目錄路徑
            string FileNameOnServer = Directory.GetCurrentDirectory();
            //專案路徑加入要存入的資料夾路徑
            FileNameOnServer += "\\wwwroot\\images\\users\\";
            //以使用者名稱.jpg 存入
            FileNameOnServer += $"{AccountNo}.jpg";
            //照片如果不存在則用預設照片
            if (File.Exists(FileNameOnServer))
                str_value += $"{AccountNo}.jpg";
            else
                str_value += "User.jpg";
            //處理瀏覽器會有緩存圖片問題
            str_value += $"?t={DateTime.Now.ToString("yyyyMMddHHmmssff")}";
            return str_value;
        }
    }

    /// <summary>
    /// 是否已經登入
    /// </summary>
    /// <value></value>
    public static bool IsLogin
     {
          get
          {
               string str_value = "no";
               if (_context != null) str_value = _context.Session.Get<string>("IsLogin");
               if (str_value == null) str_value = "no";
               return (str_value == "yes");
          }
          set
          {
               string str_value = (value) ? "yes" : "no";
               _context?.Session.Set<string>("IsLogin", str_value);
          }
     }
     /// <summary>
     /// 搜尋文字
     /// </summary>
     /// <value></value>
     public static string SearchText
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("SearchText");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          {
               string str_value = "";
               if (value != null) str_value = value.ToString();
               _context?.Session.Set<string>("SearchText", str_value);
          }
     }
     /// <summary>
     /// 排序欄位
     /// </summary>
     /// <value></value>
     public static string SortColumn
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("SortColumn");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          { _context?.Session.Set<string>("SortColumn", value); }
     }
     /// <summary>
     /// 排序方式 (asc / desc) 小寫
     /// </summary>
     /// <value></value>
     public static string SortDirection
     {
          get
          {
               string str_value = "asc";
               if (_context != null) str_value = _context.Session.Get<string>("SortDirection");
               if (str_value == null) str_value = "asc";
               return str_value.ToLower();
          }
          set
          { _context?.Session.Set<string>("SortDirection", value.ToLower()); }
     }
     /// <summary>
     /// 記錄 Id
     /// </summary>
     /// <value></value>
     public static int Id
     {
          get
          {
               int int_value = 0;
               string str_value = "0";
               if (_context != null) str_value = _context.Session.Get<string>("Id");
               if (!int.TryParse(str_value, out int_value)) int_value = 0;
               return int_value;
          }
          set
          { _context?.Session.Set<string>("Id", value.ToString()); }
     }
     /// <summary>
     /// 字串變數1
     /// </summary>
     /// <value></value>
     public static string StringValue1
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("StringValue1");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          { _context?.Session.Set<string>("StringValue1", value); }
     }
     /// <summary>
     /// 字串變數2
     /// </summary>
     /// <value></value>
     public static string StringValue2
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("StringValue2");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          { _context?.Session.Set<string>("StringValue2", value); }
     }
     /// <summary>
     /// 字串變數3
     /// </summary>
     /// <value></value>
     public static string StringValue3
     {
          get
          {
               string str_value = "";
               if (_context != null) str_value = _context.Session.Get<string>("StringValue3");
               if (str_value == null) str_value = "";
               return str_value;
          }
          set
          { _context?.Session.Set<string>("StringValue3", value); }
     }
     /// <summary>
     /// 數字變數1
     /// </summary>
     /// <value></value>
     public static int IntValue1
     {
          get
          {
               int int_value = 0;
               string str_value = "0";
               if (_context != null) str_value = _context.Session.Get<string>("IntValue1");
               if (str_value == null) str_value = "0";
               if (!int.TryParse(str_value, out int_value)) int_value = 0;
               return int_value;
          }
          set
          {
               string str_value = value.ToString();
               _context?.Session.Set<string>("IntValue1", str_value);
          }
     }
     /// <summary>
     /// 數字變數2
     /// </summary>
     /// <value></value>
     public static int IntValue2
     {
          get
          {
               int int_value = 0;
               string str_value = "0";
               if (_context != null) str_value = _context.Session.Get<string>("IntValue2");
               if (str_value == null) str_value = "0";
               if (!int.TryParse(str_value, out int_value)) int_value = 0;
               return int_value;
          }
          set
          {
               string str_value = value.ToString();
               _context?.Session.Set<string>("IntValue2", str_value);
          }
     }
     /// <summary>
     /// 數字變數3
     /// </summary>
     /// <value></value>
     public static int IntValue3
     {
          get
          {
               int int_value = 0;
               string str_value = "0";
               if (_context != null) str_value = _context.Session.Get<string>("IntValue3");
               if (str_value == null) str_value = "0";
               if (!int.TryParse(str_value, out int_value)) int_value = 0;
               return int_value;
          }
          set
          {
               string str_value = value.ToString();
               _context?.Session.Set<string>("IntValue3", str_value);
          }
     }
}