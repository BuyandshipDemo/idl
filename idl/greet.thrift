namespace go example.helloworld.greet

include "base.thrift"

struct Item {
    1: i64 id
    2: string msg
}

struct GetItemReq {
    1: required i64 id
}

struct GetItemResp {
    1: Item item
    255: base.BaseResp baseResp
}

service ItemService {
    GetItemResp GetItem(1: GetItemReq req)
}