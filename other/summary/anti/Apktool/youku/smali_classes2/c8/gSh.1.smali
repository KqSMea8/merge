.class public Lc8/gSh;
.super Ljava/lang/Object;
.source "InitialHttpRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildRequestParams(Lc8/hSh;)Ljava/util/HashMap;
    .locals 4
    .param p0, "request"    # Lc8/hSh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hSh;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v0, "ApiParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "device"

    const-class v1, Lc8/Cdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Cdn;

    iget-object v3, p0, Lc8/hSh;->device:Ljava/lang/String;

    invoke-interface {v1, v3}, Lc8/Cdn;->getDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v1, "layout_ver"

    iget-wide v2, p0, Lc8/hSh;->layout_ver:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "root"

    iget-object v2, p0, Lc8/hSh;->root:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v2, "debug"

    const-class v1, Lc8/Cdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Cdn;

    iget v3, p0, Lc8/hSh;->debug:I

    invoke-interface {v1, v3}, Lc8/Cdn;->getDebug(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "system_info"

    iget-object v2, p0, Lc8/hSh;->system_info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lc8/hSh;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v1, "extra"

    iget-object v2, p0, Lc8/hSh;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object v0
.end method

.method public static varargs doMtopYoukuHaibaoAppconfigLoadRequests(Ljava/lang/String;ILjava/lang/String;Lc8/QNp;[Ljava/lang/String;)Lc8/ENp;
    .locals 7
    .param p0, "root"    # Ljava/lang/String;
    .param p1, "debug"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "mtopListener"    # Lc8/QNp;
    .param p4, "types"    # [Ljava/lang/String;

    .prologue
    .line 22
    new-instance v3, Lc8/hSh;

    invoke-direct {v3}, Lc8/hSh;-><init>()V

    .line 23
    .local v3, "requestInfo":Lc8/hSh;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .local v4, "str_buff":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p4

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 26
    aget-object v5, p4, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_0

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lc8/hSh;->type:Ljava/lang/String;

    .line 30
    iput-object p0, v3, Lc8/hSh;->root:Ljava/lang/String;

    .line 31
    iput p1, v3, Lc8/hSh;->debug:I

    .line 32
    iput-object p2, v3, Lc8/hSh;->extra:Ljava/lang/String;

    .line 33
    new-instance v2, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v2}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 35
    .local v2, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v5, v3, Lc8/hSh;->API_NAME:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 36
    iget-object v5, v3, Lc8/hSh;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 37
    iget-boolean v5, v3, Lc8/hSh;->NEED_ECODE:Z

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 38
    invoke-static {v3}, Lc8/gSh;->buildRequestParams(Lc8/hSh;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v5}, Lc8/kSh;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v5

    invoke-static {}, Lc8/FDj;->getTtid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lc8/AOp;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;

    move-result-object v5

    invoke-virtual {v5, p3}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Lc8/COp;->asyncRequest()Lc8/ENp;

    move-result-object v5

    return-object v5
.end method
