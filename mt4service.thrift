/**
 * The available types in Thrift are:
 *
 *  bool        Boolean, one byte
 *  i8 (byte)   Signed 8-bit integer
 *  i16         Signed 16-bit integer
 *  i32         Signed 32-bit integer
 *  i64         Signed 64-bit integer
 *  double      64-bit floating point value
 *  string      String
 *  binary      Blob (byte array)
 *  map<t1,t2>  Map from one type to another
 *  list<t1>    Ordered list of one type
 *  set<t1>     Set of unique elements of one type
 *
 */

namespace cpp mt4
namespace php mt4

/*** Exception ***/

exception MyException {
	1: i32 code,
	2: string message
}


/*** Struct ***/

/*** Server API ***/

service MT4Service {

# Version
	string Version(),

# Connecting to the Server
	i32 Connect(1:string server),
	i32 Disconnect(),
	i32 Login(1:i32 login, 2:string password),
	i32 Ping(),
}
