namespace cpp XLN.Game.Thrift
namespace csharp XLN.Game.Common.Thrift

service NetworkService {
  
  i64 heartbeat(1: i64 localtime);
}
