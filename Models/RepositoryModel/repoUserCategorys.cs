using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

/// <summary>
/// 角色資料 CRUD 程式
/// </summary>
public class z_repoUserCategorys : BaseClass
{
    #region SQL 指令設定區
    /// <summary>
    /// SQL 查詢欄位及表格指令
    /// </summary>
    /// <returns></returns>
    public string GetSQLSelect()
    {
        string str_query = @"
    SELECT UserCategorys.Id, UserCategorys.UserNo, Users.UserName, Users.CountryNo, Users.ReviewStar,
    UserCategorys.CategoryNo,ContactEmail, Users.ContactTel, UserCategorys.Remark, Category3s.CategoryName, Category3s.EnglishName, Category3s.ParentNo , Users.ContentText 
    FROM UserCategorys 
    LEFT OUTER JOIN Users ON Users.UserNo = UserCategorys.UserNo 
    LEFT OUTER JOIN Category3s ON UserCategorys.CategoryNo = Category3s.CategoryNo 
        ";
        return str_query;
    }
    /// <summary>
    /// 取得模擬搜尋的欄位集合
    /// </summary>
    /// <returns></returns> <summary>
    public List<string> GetSearchColumns()
    {
        List<string> searchColumn;
        //由系統自動取得文字欄位的集合
        using var dpr = new DapperRepository();
        searchColumn = dpr.GetStringColumnList(new UserCategorys());
        return searchColumn;
    }
    /// <summary>
    /// SQL 查詢條件式指令
    /// </summary>
    /// <returns></returns>
    public string GetSQLWhere()
    {
        string str_query = "";
        return str_query;
    }
    /// <summary>
    /// 預設 SQL 排序指令
    /// </summary>
    private readonly string DefaultOrderByColumn = "UserCategorys.UserNo";
    /// <summary>
    /// 預設 SQL 排序方式指令
    /// </summary>
    private readonly string DefaultOrderByDirection = "ASC";
    /// <summary>
    /// SQL 查詢排序指令
    /// </summary>
    /// <returns></returns>
    public string GetSQLOrderBy()
    {
        string str_query = $" ORDER BY {OrderByColumn}";
        if (!string.IsNullOrEmpty(OrderByDirection)) str_query += $" {OrderByDirection}";
        return str_query;
    }
    /// <summary>
    /// 取得下拉式選單資料集
    /// </summary>
    /// <param name="showNo">是否顯示編號</param>
    /// <returns></returns>
    public List<SelectListItem> GetDropDownList(bool showNo = true)
    {
        using var dpr = new DapperRepository();
        string str_query = "SELECT ";
        if (showNo) str_query += "CategoryNo + ' ' + ";
        str_query += "CategoryName AS Text , CategoryNo AS Value FROM UserCategorys ORDER BY CategoryNo";
        var model = dpr.ReadAll<SelectListItem>(str_query);
        return model;
    }
    /// <summary>
    /// SQL 新增指令
    /// </summary>
    /// <returns></returns>
    public string GetSQLInsert()
    {
        string str_query = "";
        //自動由表格 Class 產生 Insert 查詢指令
        using var dpr = new DapperRepository();
        str_query = dpr.GetSQLInsertCommand(new UserCategorys());
        return str_query;
    }
    /// <summary>
    /// SQL 刪除指令
    /// </summary>
    /// <returns></returns>
    public string GetSQLDelete()
    {
        string str_query = "";
        //自動由表格 Class 產生 Delete 查詢指令
        using var dpr = new DapperRepository();
        str_query = dpr.GetSQLDeleteCommand(new UserCategorys());
        return str_query;
    }
    /// <summary>
    /// SQL 修改指令
    /// </summary>
    /// <returns></returns>
    public string GetSQLUpdate()
    {
        string str_query = "";
        //自動由表格 Class 產生 Update 查詢指令
        using var dpr = new DapperRepository();
        str_query = dpr.GetSQLUpdateCommand(new UserCategorys());
        return str_query;
    }
    #endregion
    #region 物件建構子
    /// <summary>
    /// OrderBy 排序指令
    /// </summary>
    /// <value></value>
    public string OrderByColumn { get; set; }
    /// <summary>
    /// OrderBy 排序方式
    /// </summary> <summary>
    public string OrderByDirection { get; set; }
    /// <summary>
    /// 建構子
    /// </summary>
    public z_repoUserCategorys()
    {
        OrderByColumn = DefaultOrderByColumn;
        OrderByDirection = DefaultOrderByDirection;
    }
    /// <summary>
    /// 建構子
    /// </summary>
    /// <param name="orderByColumn">排序欄位</param>
    /// <param name="orderByDirection">排序方式</param>
    public z_repoUserCategorys(string orderByColumn, string orderByDirection)
    {
        if (!string.IsNullOrEmpty(orderByColumn))
            OrderByColumn = orderByColumn;
        else
            OrderByColumn = DefaultOrderByColumn;
        if (!string.IsNullOrEmpty(orderByDirection))
            OrderByDirection = orderByDirection;
        else
            OrderByDirection = DefaultOrderByDirection;
    }
    #endregion
    #region 資料表 CRUD 指令(使用同步呼叫)
    /// <summary>
    /// 取得單筆資料(同步呼叫)
    /// </summary>
    /// <param name="userNo">使用者代號</param>
    /// <returns></returns>
    public UserCategorys GetData(string userNo)
    {
        var model = new UserCategorys();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = " WHERE UserCategorys.UserNo = @UserNo ";
        sql_query += sql_where;
        sql_query += GetSQLOrderBy();
        DynamicParameters parm = new DynamicParameters();
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            parm.Add("UserNo", userNo);
        }
        model = dpr.ReadSingle<UserCategorys>(sql_query, parm);
        return model;
    }
    /// <summary>
    /// 取得單筆資料(同步呼叫)
    /// </summary>
    /// <param name="id">Key 欄位值</param>
    /// <returns></returns>
    public UserCategorys GetData(int id)
    {
        var model = new UserCategorys();
        if (id == 0)
        {
            //新增預設值
        }
        else
        {
            using var dpr = new DapperRepository();
            string sql_query = GetSQLSelect();
            string sql_where = " WHERE UserCategorys.Id = @Id ";
            sql_query += sql_where;
            sql_query += GetSQLOrderBy();
            DynamicParameters parm = new DynamicParameters();
            if (!string.IsNullOrEmpty(sql_where))
            {
                //自定義的 Weher Parm 參數
                parm.Add("Id", id);
            }
            model = dpr.ReadSingle<UserCategorys>(sql_query, parm);
        }
        return model;
    }
    /// <summary>
    /// 取得多筆資料(同步呼叫)
    /// </summary>
    /// <param name="searchString">模糊搜尋文字(空白或不傳入表示不搜尋)</param>
    /// <returns></returns>
    public List<UserCategorys> GetDataList(string searchString = "")
    {
        List<string> searchColumns = GetSearchColumns();
        DynamicParameters parm = new DynamicParameters();
        var model = new List<UserCategorys>();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = GetSQLWhere();
        sql_query += sql_where;
        if (!string.IsNullOrEmpty(searchString))
            sql_query += dpr.GetSQLWhereBySearchColumnByUserCategory(new UserCategorys(), searchColumns, sql_where, searchString);
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            //parm.Add("參數名稱", "參數值");
        }
        sql_query += GetSQLOrderBy();
        model = dpr.ReadAll<UserCategorys>(sql_query, parm);
        return model;
    }
    /// <summary>
    /// 取得多筆資料(同步呼叫)
    /// </summary>
    /// <param name="cate3No">Category 3 No</param>
    /// <returns></returns>
    public List<UserCategorys> GetDetailDataList(string cate3No)
    {
        List<string> searchColumns = GetSearchColumns();
        DynamicParameters parm = new DynamicParameters();
        var model = new List<UserCategorys>();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = " WHERE UserCategorys.CategoryNo = @CategoryNo ";
        sql_query += sql_where;
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            parm.Add("CategoryNo", cate3No);
        }
        sql_query += GetSQLOrderBy();
        model = dpr.ReadAll<UserCategorys>(sql_query, parm);
        return model;
    }
    /// <summary>
    /// 新增或修改資料(同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    public void CreateEdit(UserCategorys model)
    {
        if (model.Id == 0)
            Create(model);
        else
            Edit(model);
    }
    /// <summary>
    /// 新增資料(同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    public void Create(UserCategorys model)
    {
        using var dpr = new DapperRepository();
        //string str_query = dpr.GetSQLInsertCommand(model);
        string str_query = @"
        INSERT INTO UserCategorys (UserNo, CategoryNo, Remark) VALUES (@UserNo, @CategoryNo, @Remark)
        ";
        //DynamicParameters parm = dpr.GetSQLInsertParameters(model);
        DynamicParameters parm = new DynamicParameters();

        parm.Add("UserNo", model.UserNo);
        parm.Add("CategoryNo", model.CategoryNo);
        parm.Add("Remark", model.Remark);

        dpr.Execute(str_query, parm);
    }
    /// <summary>
    /// 更新資料(同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    public void Edit(UserCategorys model)
    {
        using var dpr = new DapperRepository();
        //string str_query = dpr.GetSQLUpdateCommand(model);
        string str_query = @"
UPDATE UserCategorys 
SET 
UserNo  = @UserNo, 
CategoryNo  = @CategoryNo, 
Remark  = @Remark
WHERE Id = @Id
";
        // DynamicParameters parm = dpr.GetSQLUpdateParameters(model);
        DynamicParameters parm = new DynamicParameters();

        parm.Add("UserNo", model.UserNo); 
        parm.Add("CategoryNo", model.CategoryNo); 
        parm.Add("Remark", model.Remark); 
        parm.Add("Id", model.Id); 

        dpr.Execute(str_query, parm);
    }
    /// <summary>
    /// 刪除資料(同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    public void Delete(int id = 0)
    {
        using var dpr = new DapperRepository();
        // string str_query = dpr.GetSQLDeleteCommand(new UserCategorys());
        // DynamicParameters parm = dpr.GetSQLDeleteParameters(new UserCategorys(), id);
        string str_query =@"
DELETE FROM UserCategorys
WHERE id = @id      
";
        DynamicParameters parm = new DynamicParameters(); 
        parm.Add("Id", id); 
        dpr.Execute(str_query, parm);
    }
    #endregion
    #region 資料表 CRUD 指令(使用非同步呼叫)   
    /// <summary>
    /// 取得單筆資料(非同步呼叫)
    /// </summary>
    /// <param name="id">Key 欄位值</param>
    /// <returns></returns>
    public async Task<UserCategorys> GetDataAsync(int id)
    {
        var model = new UserCategorys();
        if (id == 0)
        {
            //新增預設值
        }
        else
        {
            using var dpr = new DapperRepository();
            string sql_query = GetSQLSelect();
            string sql_where = GetSQLWhere();
            sql_query += dpr.GetSQLSelectWhereById(model, sql_where);
            sql_query += GetSQLOrderBy();
            DynamicParameters parm = dpr.GetSQLSelectKeyParm(model, id);
            if (!string.IsNullOrEmpty(sql_where))
            {
                //自定義的 Weher Parm 參數
                //parm.Add("參數名稱", "參數值");
            }
            model = await dpr.ReadSingleAsync<UserCategorys>(sql_query, parm);
        }
        return model;
    }
    /// <summary>
    /// 取得多筆資料(非同步呼叫)
    /// </summary>
    /// <param name="searchString">模糊搜尋文字(空白或不傳入表示不搜尋)</param>
    /// <returns></returns>
    public async Task<List<UserCategorys>> GetDataListAsync(string searchString = "")
    {
        List<string> searchColumns = GetSearchColumns();
        DynamicParameters parm = new DynamicParameters();
        var model = new List<UserCategorys>();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = GetSQLWhere();
        sql_query += sql_where;
        if (!string.IsNullOrEmpty(searchString))
            sql_query += dpr.GetSQLWhereBySearchColumn(new UserCategorys(), searchColumns, sql_where, searchString);
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            //parm.Add("參數名稱", "參數值");
        }
        sql_query += GetSQLOrderBy();
        model = await dpr.ReadAllAsync<UserCategorys>(sql_query, parm);
        return model;
    }
    /// <summary>
    /// 新增或修改資料(非同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    /// <returns></returns>
    public async Task CreateEditAsync(UserCategorys model)
    {
        if (model.Id == 0)
            await CreateAsync(model);
        else
            await EditAsync(model);
    }
    /// <summary>
    /// 新增資料(非同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    /// <returns></returns>
    public async Task CreateAsync(UserCategorys model)
    {
        using var dpr = new DapperRepository();
        string str_query = dpr.GetSQLInsertCommand(model);
        DynamicParameters parm = dpr.GetSQLInsertParameters(model);
        await dpr.ExecuteAsync(str_query, parm);
    }
    /// <summary>
    /// 更新資料(非同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    /// <returns></returns>
    public async Task EditAsync(UserCategorys model)
    {
        using var dpr = new DapperRepository();
        string str_query = dpr.GetSQLUpdateCommand(model);
        DynamicParameters parm = dpr.GetSQLUpdateParameters(model);
        await dpr.ExecuteAsync(str_query, parm);
    }
    /// <summary>
    /// 刪除資料(非同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    /// <returns></returns>
    public async Task DeleteAsync(int id = 0)
    {
        using var dpr = new DapperRepository();
        string str_query = dpr.GetSQLDeleteCommand(new UserCategorys());
        DynamicParameters parm = dpr.GetSQLDeleteParameters(new UserCategorys(), id);
        await dpr.ExecuteAsync(str_query, parm);
    }
    #endregion
    #region 其它自定義事件與函數
    /// <summary>
    /// 取得多筆資料(同步呼叫)
    /// </summary>
    /// <param name="userNo">User No</param>
    /// <returns></returns>
    public List<UserCategorys> GetUserCourseList(string userNo)
    {
        List<string> searchColumns = GetSearchColumns();
        DynamicParameters parm = new DynamicParameters();
        var model = new List<UserCategorys>();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = " WHERE UserCategorys.UserNo = @UserNo ";
        sql_query += sql_where;
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            parm.Add("UserNo", userNo);
        }
        sql_query += "ORDER BY UserCategorys.CategoryNo ASC";
        model = dpr.ReadAll<UserCategorys>(sql_query, parm);
        return model;
    }
    #endregion
}