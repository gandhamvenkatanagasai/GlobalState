using StackExchange.Redis;
using System;

namespace GlobalState.API.Utilities
{
    public class RedisHelper : IRedisHelper
    {
        private static readonly Lazy<ConnectionMultiplexer> LazyConnection = new Lazy<ConnectionMultiplexer>(()
            => ConnectionMultiplexer.Connect(Environment.GetEnvironmentVariable("RedisConnectionString")));

        private static ConnectionMultiplexer Connection => LazyConnection.Value;

        public IDatabase GetConnection()
        {
            return Connection.GetDatabase();
        }

    }

    public interface IRedisHelper
    {
        IDatabase GetConnection();
    }
}
