.class public abstract Lc8/wof;
.super Ljava/lang/Object;
.source "MtopAdapter.java"


# static fields
.field public static final CONFIG_UPDATE_API:Ljava/lang/String; = "mtop.taobao.bc.realtime.configupdate"

.field public static final LINK_INFO_API:Ljava/lang/String; = "mtop.taobao.baichuan.afc.linkinfo"

.field public static final VERSION:Ljava/lang/String; = "1.0"

.field private static instance:Lc8/wof;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lc8/wof;
    .locals 3

    .prologue
    .line 28
    const-class v2, Lc8/wof;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/wof;->instance:Lc8/wof;

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Lc8/wof;->instance:Lc8/wof;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v0, "MTOP_REQUEST_CLASS_NAME":Ljava/lang/String;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 33
    .end local v0    # "MTOP_REQUEST_CLASS_NAME":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lc8/wof;->isValidMtopId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    new-instance v1, Lc8/uof;

    invoke-direct {v1}, Lc8/uof;-><init>()V

    .line 35
    sput-object v1, Lc8/wof;->instance:Lc8/wof;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    .restart local v0    # "MTOP_REQUEST_CLASS_NAME":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 38
    .end local v0    # "MTOP_REQUEST_CLASS_NAME":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v0, "mtopsdk.mtop.domain.MtopRequest"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .restart local v0    # "MTOP_REQUEST_CLASS_NAME":Ljava/lang/String;
    :try_start_3
    invoke-static {v0}, Lc8/wof;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    new-instance v1, Lc8/sof;

    invoke-direct {v1}, Lc8/sof;-><init>()V

    sput-object v1, Lc8/wof;->instance:Lc8/wof;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :goto_1
    :try_start_4
    sget-object v1, Lc8/wof;->instance:Lc8/wof;

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    new-instance v1, Lc8/uof;

    invoke-direct {v1}, Lc8/uof;-><init>()V

    sput-object v1, Lc8/wof;->instance:Lc8/wof;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static final getRequestId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "timeMillis"    # J

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .end local p0    # "appKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&&_$#%151Safe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/jpf;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 54
    .restart local p0    # "appKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method private static isValidMtopId()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v2, Lc8/unf;->mtopId:Ljava/lang/String;

    .line 74
    .local v0, "mtopId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    const-string/jumbo v2, "OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "INNER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "PRODUCT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addCheckParams(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "appKey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "appKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v1, "appkey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appKey":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 67
    .restart local v0    # "appKey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    .local v2, "timeMillis":J
    const-string/jumbo v1, "t"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v1, "requestId"

    invoke-static {v0, v2, v3}, Lc8/wof;->getRequestId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public abstract sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/xof;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lc8/xof;",
            ")V"
        }
    .end annotation
.end method
