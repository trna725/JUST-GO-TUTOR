using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

/// <summary>
/// 角色資料 CRUD 程式
/// </summary>
public class z_repoCategory2s : BaseClass
{
    #region SQL 指令設定區
    /// <summary>
    /// SQL 查詢欄位及表格指令
    /// </summary>
    /// <returns></returns>
    public string GetSQLSelect()
    {
        string str_query = "";
        //自動由表格 Class 產生 SQL 查詢指令
        using var dpr = new DapperRepository();
        str_query = dpr.GetSQLSelectCommand(new Category2s());
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
        searchColumn = dpr.GetStringColumnList(new Category2s());
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
    private readonly string DefaultOrderByColumn = "Category2s.SortNo";
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
        str_query += "CategoryName AS Text , CategoryNo AS Value FROM Category2s ORDER BY CategoryNo";
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
        str_query = dpr.GetSQLInsertCommand(new Category2s());
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
        str_query = dpr.GetSQLDeleteCommand(new Category2s());
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
        str_query = dpr.GetSQLUpdateCommand(new Category2s());
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
    public z_repoCategory2s()
    {
        OrderByColumn = DefaultOrderByColumn;
        OrderByDirection = DefaultOrderByDirection;
    }
    /// <summary>
    /// 建構子
    /// </summary>
    /// <param name="orderByColumn">排序欄位</param>
    /// <param name="orderByDirection">排序方式</param>
    public z_repoCategory2s(string orderByColumn, string orderByDirection)
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
    /// <param name="id">Key 欄位值</param>
    /// <returns></returns>
    public Category2s GetData(int id)
    {
        var model = new Category2s();
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
            model = dpr.ReadSingle<Category2s>(sql_query, parm);
        }
        return model;
    }
    /// <summary>
    /// 取得多筆資料(同步呼叫)
    /// </summary>
    /// <param name="cate1No">Category 1 No</param>
    /// <param name="parentNo">Parent Category No</param>
    /// <returns></returns>
    public List<Category2s> GetDataList(string cate1No, string parentNo)
    {
        // List<string> searchColumns = GetSearchColumns();
        DynamicParameters parm = new DynamicParameters();
        var model = new List<Category2s>();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = " WHERE Category2s.ParentNo = @ParentNo ";
        sql_query += sql_where;
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            parm.Add("ParentNo", cate1No);
        }
        sql_query += GetSQLOrderBy();
        model = dpr.ReadAll<Category2s>(sql_query, parm);
        return model;
    }
    /// <summary>
    /// 取得多筆資料(同步呼叫)
    /// </summary>
    /// <param name="searchString">模糊搜尋文字(空白或不傳入表示不搜尋)</param>
    /// <returns></returns>
    public List<Category2s> GetDataList(string searchString = "")
    {
        List<string> searchColumns = GetSearchColumns();
        DynamicParameters parm = new DynamicParameters();
        var model = new List<Category2s>();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = GetSQLWhere();
        sql_query += sql_where;
        if (!string.IsNullOrEmpty(searchString))
            sql_query += dpr.GetSQLWhereBySearchColumn(new Category2s(), searchColumns, sql_where, searchString);
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            //parm.Add("參數名稱", "參數值");
        }
        sql_query += GetSQLOrderBy();
        model = dpr.ReadAll<Category2s>(sql_query, parm);
        return model;
    }
    /// <summary>
    /// 新增或修改資料(同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    public void CreateEdit(Category2s model)
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
    public void Create(Category2s model)
    {
        using var dpr = new DapperRepository();
        string str_query = dpr.GetSQLInsertCommand(model);
        DynamicParameters parm = dpr.GetSQLInsertParameters(model);
        dpr.Execute(str_query, parm);
    }
    /// <summary>
    /// 更新資料(同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    public void Edit(Category2s model)
    {
        using var dpr = new DapperRepository();
        string str_query = dpr.GetSQLUpdateCommand(model);
        DynamicParameters parm = dpr.GetSQLUpdateParameters(model);
        dpr.Execute(str_query, parm);
    }
    /// <summary>
    /// 刪除資料(同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    public void Delete(int id = 0)
    {
        using var dpr = new DapperRepository();
        string str_query = dpr.GetSQLDeleteCommand(new Category2s());
        DynamicParameters parm = dpr.GetSQLDeleteParameters(new Category2s(), id);
        dpr.Execute(str_query, parm);
    }
    #endregion
    #region 資料表 CRUD 指令(使用非同步呼叫)   
    /// <summary>
    /// 取得單筆資料(非同步呼叫)
    /// </summary>
    /// <param name="id">Key 欄位值</param>
    /// <returns></returns>
    public async Task<Category2s> GetDataAsync(int id)
    {
        var model = new Category2s();
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
            model = await dpr.ReadSingleAsync<Category2s>(sql_query, parm);
        }
        return model;
    }
    /// <summary>
    /// 取得多筆資料(非同步呼叫)
    /// </summary>
    /// <param name="searchString">模糊搜尋文字(空白或不傳入表示不搜尋)</param>
    /// <returns></returns>
    public async Task<List<Category2s>> GetDataListAsync(string searchString = "")
    {
        List<string> searchColumns = GetSearchColumns();
        DynamicParameters parm = new DynamicParameters();
        var model = new List<Category2s>();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = GetSQLWhere();
        sql_query += sql_where;
        if (!string.IsNullOrEmpty(searchString))
            sql_query += dpr.GetSQLWhereBySearchColumn(new Category2s(), searchColumns, sql_where, searchString);
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            //parm.Add("參數名稱", "參數值");
        }
        sql_query += GetSQLOrderBy();
        model = await dpr.ReadAllAsync<Category2s>(sql_query, parm);
        return model;
    }
    /// <summary>
    /// 新增或修改資料(非同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    /// <returns></returns>
    public async Task CreateEditAsync(Category2s model)
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
    public async Task CreateAsync(Category2s model)
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
    public async Task EditAsync(Category2s model)
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
        string str_query = dpr.GetSQLDeleteCommand(new Category2s());
        DynamicParameters parm = dpr.GetSQLDeleteParameters(new Category2s(), id);
        await dpr.ExecuteAsync(str_query, parm);
    }
    #endregion
    #region 其它自定義事件與函數
    #endregion
}