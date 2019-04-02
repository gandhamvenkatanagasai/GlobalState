using StackExchange.Redis;
using System;

namespace GlobalState.API.Utilities
{
    //Redis Extension Methods
    public class RedisExtension : IRedisExtension
    {
        public static string _RedisConnectionAPI;
        public RedisExtension(string RedisConnectionAPI)
        {
            CreateConnection();
        }
        private static readonly RedisHelper RedisConnection = new RedisHelper();
        private static IDatabase _cache;

        public RedisValue StringGet(string key)
        {
            return _cache.KeyExists(key) ? _cache.StringGet(key) : RedisValue.Null;
        }
        public void StringSet(string key, string value)
        {
            _cache.StringSet(key, value);
        }
        public bool KeyExists(string key)
        {
            return _cache.KeyExists(key);
        }
        public void HashSet(string key, HashEntry[] value)
        {
            _cache.HashSet(key, value);
        }
        public bool IsConnected(string key)
        {
            return _cache.KeyExists(key) && _cache.IsConnected(key);
        }

        public RedisValue HashGet(string key, string value)
        {
            return _cache.KeyExists(key) ? _cache.HashGet(key, value) : RedisValue.Null;
        }
        public void KeyExpire(string key, DateTime time)
        {
            _cache.KeyExpire(key, time);
        }
        public RedisValue[] SortedSetRangeByScore(string key, double minRange, double maxRange)
        {
            return _cache.KeyExists(key) ? _cache.SortedSetRangeByScore(key, minRange, maxRange) : new RedisValue[0];
        }

        public TimeSpan Ping()
        {
            return _cache.Ping();
        }
        public void CreateConnection()
        {
            _cache = RedisConnection.GetConnection();
        }
    }

    public interface IRedisExtension
    {
        RedisValue StringGet(string key);
        void StringSet(string key, string value);
        bool KeyExists(string key);
        void HashSet(string key, HashEntry[] value);
        bool IsConnected(string key);
        RedisValue HashGet(string key, string value);
        void KeyExpire(string key, DateTime time);
        RedisValue[] SortedSetRangeByScore(string key, double minRange, double maxRange);
        TimeSpan Ping();
        void CreateConnection();
    }
}
