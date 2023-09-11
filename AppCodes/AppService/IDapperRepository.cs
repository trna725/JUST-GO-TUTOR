using Dapper;
using System.Data;

namespace project.AppCodes.AppService
{
    public interface IDapperRepository
    {
        /// <summary>
        /// 連線字串名稱
        /// </summary>
        string ConnectionName { get; set; }
        /// <summary>
        /// 連線字串
        /// </summary>
        string ConnectionString { get; }
        /// <summary>
        /// 錯誤訊息
        /// </summary>
        string ErrorMessage { get; set; }
        /// <summary>
        /// 命令類型 (SQL 語法/預儲程序)
        /// </summary>
        CommandType CommandType { get; }
        /// <summary>
        /// 取得連線字串
        /// </summary>
        /// <param name="connectionName">連線字串名稱</param>
        /// <returns></returns>
        string GetConnectionString(string connectionName);
        /// <summary>
        /// 執行命令 (SQL 語法/預儲程序)
        /// </summary>
        /// <param name="query">命令字串</param>
        /// <returns></returns>
        int Execute(string query);
        /// <summary>
        /// 執行命令 (SQL 語法/預儲程序)
        /// </summary>
        /// <param name="query">命令字串</param>
        /// <param name="parameters">參數變數物件</param>
        /// <returns></returns>
        int Execute(string query, DynamicParameters parameters);

        /// <summary>
        /// 執行命令 (SQL 語法/預儲程序)(非同步)
        /// </summary>
        /// <param name="query">命令字串</param>
        /// <returns></returns>

        Task<int> ExecuteAsync(string query);

        /// <summary>
        ///  執行命令 (SQL 語法/預儲程序)(非同步)
        /// </summary>
        /// <param name="query">命令字串</param>
        /// <param name="parameters">參數變數物件</param>
        /// <returns></returns>
        Task<int> ExecuteAsync(string query, DynamicParameters parameters);

        /// <summary>
        /// 讀取單筆記錄
        /// </summary>
        /// <typeparam name="T">回傳泛型類型</typeparam>
        /// <param name="query">命令字串</param>
        /// <returns></returns>
        T ReadingSingle<T>(string query);

        /// <summary>
        /// 讀取單筆記錄
        /// </summary>
        /// <typeparam name="T">回傳泛型類型</typeparam>
        /// <param name="query">命令字串</param>
        /// <param name="parameters">參數變數物件</param>
        /// <returns></returns>
        T ReadingSingle<T>(string query, DynamicParameters parameters);

        /// <summary>
        /// 讀取單筆記錄
        /// </summary>
        /// <typeparam name="T">回傳泛型類型</typeparam>
        /// <param name="query">命令字串</param>
        /// <returns></returns>
        Task<T> ReadingSingleAsync<T>(string query);

        /// <summary>
        /// 讀取單筆記錄
        /// </summary>
        /// <typeparam name="T">回傳泛型類型</typeparam>
        /// <param name="query">命令字串</param>
        /// <param name="parameters">參數變數物件</param>
        /// <returns></returns>
        Task<T> ReadingSingleAsync<T>(string query, DynamicParameters parameters);

        /// <summary>
        /// 讀取多筆記錄
        /// </summary>
        /// <typeparam name="T">回傳泛型類型</typeparam>
        /// <param name="query">命令字串</param>
        /// <returns></returns>
        List<T> ReadAll<T>(string query);

        /// <summary>
        /// 讀取多筆記錄
        /// </summary>
        /// <typeparam name="T">回傳泛型類型</typeparam>
        /// <param name="query">命令字串</param>
        /// <param name="parameters">參數變數物件</param>
        /// <returns></returns>
        List<T> ReadAll<T>(string query, DynamicParameters parameters);

        /// <summary>
        /// 讀取多筆記錄(非同步)
        /// </summary>
        /// <typeparam name="T">回傳泛型類型</typeparam>
        /// <param name="query">命令字串</param>
        /// <returns></returns>
        Task<List<T>> ReadAllAsync<T>(string query);

        /// <summary>
        /// 讀取多筆記錄 (非同步)
        /// </summary>
        /// <typeparam name="T">回傳泛型類型</typeparam>
        /// <param name="query">命令字串</param>
        /// <param name="parameters">參數變數物件</param>
        /// <returns></returns>
        Task< List<T>> ReadAllAsync<T>(string query, DynamicParameters parameters);

    }
}
