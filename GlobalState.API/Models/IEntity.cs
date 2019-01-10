using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Domain
{
    internal interface IEntity
    {
        Guid Id { get; }
    }
}
