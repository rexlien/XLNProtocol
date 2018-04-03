namespace cpp XLN.Game.Thrift
namespace csharp XLN.Game.Common.Thrift


//typedef binary (cpp2.type = "folly::IOBuf") IOBuf
//typedef binary (cpp2.type = "std::unique_ptr<folly::IOBuf>") IOBufPtr
enum MessageType
{
    Create = 0,
    Update = 1,
    Delete = 2
}

struct Message {

  1: i32 id,
  2: string name,
  4: MessageType type,
  3: map<string, string> properties
}


service ActorService {
  
  void sendMessage(1: Message msg);
  string testString(1: string str);
}
