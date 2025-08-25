using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace BlogDataLibrary.Database
{

    public class SqlDataAccess
    {
        private IConfigurationSystem _config;

            public SqlDataAccess(IConfigurationSystem config)
        {
            _config = config;
        }

        public List<T> LoadData<T, U>(string sqlStatement, 
            U parameters, 
            string connectionStringName,
            bool isStoredProcedure)
        {
            CommandType commandType = CommandType.Text;
            string connectionString = _config.GetConnectionString(connectionStringName);

            if (isStoredProcedure)
            {
                commandType = CommandType.StoredProcedure;
            }    

        }

    }
}
