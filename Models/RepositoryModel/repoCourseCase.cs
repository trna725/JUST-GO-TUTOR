using Dapper;
using Microsoft.AspNetCore.Mvc.Rendering;

/// <summary>
/// 員工資料 CRUD 程式
/// </summary>
public class z_repoCourseCase : BaseClass
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
        str_query = dpr.GetSQLSelectCommand(new CourseCase());
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
        searchColumn = dpr.GetStringColumnList(new CourseCase());
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
    private readonly string DefaultOrderByColumn = "CourseCase.CaseDate";
    /// <summary>
    /// 預設 SQL 排序方式指令
    /// </summary>
    private readonly string DefaultOrderByDirection = "DESC";
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
    /// SQL 新增指令
    /// </summary>
    /// <returns></returns>
    public string GetSQLInsert()
    {
        string str_query = "";
        //自動由表格 Class 產生 Insert 查詢指令
        using var dpr = new DapperRepository();
        str_query = dpr.GetSQLInsertCommand(new CourseCase());
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
        str_query = dpr.GetSQLDeleteCommand(new CourseCase());
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
        str_query = dpr.GetSQLUpdateCommand(new CourseCase());
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
    public z_repoCourseCase()
    {
        OrderByColumn = DefaultOrderByColumn;
        OrderByDirection = DefaultOrderByDirection;
    }
    /// <summary>
    /// 建構子
    /// </summary>
    /// <param name="orderByColumn">排序欄位</param>
    /// <param name="orderByDirection">排序方式</param>
    public z_repoCourseCase(string orderByColumn, string orderByDirection)
    {
        OrderByColumn = orderByColumn;
        OrderByDirection = orderByDirection;
    }
    #endregion
    #region 資料表 CRUD 指令(使用同步呼叫)
    /// <summary>
    /// 取得單筆資料(同步呼叫)
    /// </summary>
    /// <param name="id">Key 欄位值</param>
    /// <returns></returns>
    public CourseCase GetData(int id)
    {
        var model = new CourseCase();
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
            model = dpr.ReadSingle<CourseCase>(sql_query, parm);
        }
        return model;
    }
    /// <summary>
    /// 取得多筆資料(同步呼叫)
    /// </summary>
    /// <param name="searchString">模糊搜尋文字(空白或不傳入表示不搜尋)</param>
    /// <returns></returns>
    public List<CourseCase> GetDataList(string searchString = "")
    {
        List<string> searchColumns = GetSearchColumns();
        DynamicParameters parm = new DynamicParameters();
        var model = new List<CourseCase>();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = GetSQLWhere();
        sql_query += sql_where;
        if (!string.IsNullOrEmpty(searchString))
            sql_query += dpr.GetSQLWhereBySearchColumn(new CourseCase(), searchColumns, sql_where, searchString);
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            //parm.Add("參數名稱", "參數值");
        }
        sql_query += GetSQLOrderBy();
        model = dpr.ReadAll<CourseCase>(sql_query, parm);
        return model;
    }
    /// <summary>
    /// 新增或修改資料(同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    public void CreateEdit(CourseCase model)
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
    public void Create(CourseCase model)
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
    public void Edit(CourseCase model)
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
        string str_query = dpr.GetSQLDeleteCommand(new CourseCase());
        DynamicParameters parm = dpr.GetSQLDeleteParameters(new CourseCase(), id);
        dpr.Execute(str_query, parm);
    }
    #endregion
    #region 資料表 CRUD 指令(使用非同步呼叫)   
    /// <summary>
    /// 取得單筆資料(非同步呼叫)
    /// </summary>
    /// <param name="id">Key 欄位值</param>
    /// <returns></returns>
    public async Task<CourseCase> GetDataAsync(int id)
    {
        var model = new CourseCase();
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
            model = await dpr.ReadSingleAsync<CourseCase>(sql_query, parm);
        }
        return model;
    }
    /// <summary>
    /// 取得多筆資料(非同步呼叫)
    /// </summary>
    /// <param name="searchString">模糊搜尋文字(空白或不傳入表示不搜尋)</param>
    /// <returns></returns>
    public async Task<List<CourseCase>> GetDataListAsync(string searchString = "")
    {
        List<string> searchColumns = GetSearchColumns();
        DynamicParameters parm = new DynamicParameters();
        var model = new List<CourseCase>();
        using var dpr = new DapperRepository();
        string sql_query = GetSQLSelect();
        string sql_where = GetSQLWhere();
        sql_query += sql_where;
        if (!string.IsNullOrEmpty(searchString))
            sql_query += dpr.GetSQLWhereBySearchColumn(new CourseCase(), searchColumns, sql_where, searchString);
        if (!string.IsNullOrEmpty(sql_where))
        {
            //自定義的 Weher Parm 參數
            //parm.Add("參數名稱", "參數值");
        }
        sql_query += GetSQLOrderBy();
        model = await dpr.ReadAllAsync<CourseCase>(sql_query, parm);
        return model;
    }
    /// <summary>
    /// 新增或修改資料(非同步呼叫)
    /// </summary>
    /// <param name="model">資料模型</param>
    /// <returns></returns>
    public async Task CreateEditAsync(CourseCase model)
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
    public async Task CreateAsync(CourseCase model)
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
    public async Task EditAsync(CourseCase model)
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
        string str_query = dpr.GetSQLDeleteCommand(new CourseCase());
        DynamicParameters parm = dpr.GetSQLDeleteParameters(new CourseCase(), id);
        await dpr.ExecuteAsync(str_query, parm);
    }
    #endregion
    #region 其它自定義事件與函數
    public void InsertCase(vmCourseCase model)
    {
        string str_time_section = "";
        string str_week_section = "";
        using var dpr = new DapperRepository();
        SetSectionValue(model.IsTime1 , "09:00" , ref str_time_section);
        SetSectionValue(model.IsTime2 , "10:00" , ref str_time_section);
        SetSectionValue(model.IsTime3 , "11:00" , ref str_time_section);
        SetSectionValue(model.IsTime4 , "13:00" , ref str_time_section);
        SetSectionValue(model.IsTime5 , "14:00" , ref str_time_section);
        SetSectionValue(model.IsTime6 , "15:00" , ref str_time_section);
        SetSectionValue(model.IsTime7 , "16:00" , ref str_time_section);
        SetSectionValue(model.IsTime8 , "17:00" , ref str_time_section);
        SetSectionValue(model.IsTime9 , "18:00" , ref str_time_section);
        SetSectionValue(model.IsTime10 , "19:00" , ref str_time_section);
        SetSectionValue(model.IsTime11 , "20:00" , ref str_time_section);
        SetSectionValue(model.IsWeek1 , "一" , ref str_week_section);
        SetSectionValue(model.IsWeek2 , "二" , ref str_week_section);
        SetSectionValue(model.IsWeek3 , "三" , ref str_week_section);
        SetSectionValue(model.IsWeek4 , "四" , ref str_week_section);
        SetSectionValue(model.IsWeek5 , "五" , ref str_week_section);
        SetSectionValue(model.IsWeek6 , "六" , ref str_week_section);
        SetSectionValue(model.IsWeek7 , "日" , ref str_week_section);

        string str_query = @"
INSERT INTO CourseCase
(StatusCode,CaseDate,ConfirmTime,StudentNo,StudentName
,TeacherNo,TeacherName,CourseNo,CourseName,TimeSection,WeekSection
,UserMemo,Remark)
VALUES  
(@StatusCode,@CaseDate,@ConfirmTime,@StudentNo,@StudentName
,@TeacherNo,@TeacherName,@CourseNo,@CourseName,@TimeSection,@WeekSection
,@UserMemo,@Remark)  
";
        DynamicParameters parm = new DynamicParameters();
        parm.Add("StatusCode" , "N");
        parm.Add("CaseDate" , DateTime.Today);
        parm.Add("ConfirmTime" , DateTime.Now);
        parm.Add("StudentNo" , SessionService.UserNo);
        parm.Add("StudentName" , SessionService.UserName);
        parm.Add("TeacherNo" , SessionService.TeacherNo);
        parm.Add("TeacherName" , SessionService.TeacherName);
        parm.Add("CourseNo" , SessionService.CourseNo);
        parm.Add("CourseName" , SessionService.CourseName);
        parm.Add("TimeSection" , str_time_section);
        parm.Add("WeekSection" , str_week_section);
        parm.Add("UserMemo" , model.CourseMemo);
        parm.Add("Remark" , "");
        dpr.Execute(str_query , parm);

        SessionService.WeekSection = str_week_section;
        SessionService.TimeSection =str_time_section;  
    }

    private void SetSectionValue(bool checkValue , string value , ref string sectionValue)
    {
        if (checkValue)
        {
            if (!string.IsNullOrEmpty(sectionValue)) sectionValue += ",";
            sectionValue += value;
        }
    }
    #endregion
}