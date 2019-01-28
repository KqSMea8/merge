.class public Lc8/wXe;
.super Lc8/uXe;
.source "SwitchDO.java"


# static fields
.field public static final JSON_CMD_DISABLEPUSH:Ljava/lang/String; = "disablePush"

.field public static final JSON_CMD_ENABLEPUSH:Ljava/lang/String; = "enablePush"

.field private static final TAG:Ljava/lang/String; = "SwitchDO"


# instance fields
.field public appKey:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lc8/uXe;-><init>()V

    return-void
.end method

.method public static buildSwitchDO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 2
    .param p0, "appkey"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;
    .param p3, "enablePush"    # Z

    .prologue
    .line 46
    new-instance v0, Lc8/wXe;

    invoke-direct {v0}, Lc8/wXe;-><init>()V

    .line 47
    .local v0, "switchDO":Lc8/wXe;
    iput-object p0, v0, Lc8/wXe;->appKey:Ljava/lang/String;

    .line 48
    iput-object p1, v0, Lc8/wXe;->deviceId:Ljava/lang/String;

    .line 49
    iput-object p2, v0, Lc8/wXe;->utdid:Ljava/lang/String;

    .line 50
    if-eqz p3, :cond_0

    .line 51
    const-string/jumbo v1, "enablePush"

    iput-object v1, v0, Lc8/wXe;->cmd:Ljava/lang/String;

    .line 55
    :goto_0
    invoke-virtual {v0}, Lc8/wXe;->buildData()[B

    move-result-object v1

    return-object v1

    .line 53
    :cond_0
    const-string/jumbo v1, "disablePush"

    iput-object v1, v0, Lc8/wXe;->cmd:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public buildData()[B
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 24
    const/4 v2, 0x0

    .line 26
    .local v2, "result":[B
    :try_start_0
    new-instance v0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    invoke-direct {v0}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;-><init>()V

    .line 27
    .local v0, "builder":Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    const-string/jumbo v4, "cmd"

    iget-object v5, p0, Lc8/wXe;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v4

    const-string/jumbo v5, "appKey"

    iget-object v6, p0, Lc8/wXe;->appKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    .line 30
    iget-object v4, p0, Lc8/wXe;->deviceId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    const-string/jumbo v4, "utdid"

    iget-object v5, p0, Lc8/wXe;->utdid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    .line 35
    :goto_0
    invoke-virtual {v0}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->build()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "data":Ljava/lang/String;
    const-string/jumbo v4, "SwitchDO"

    const-string/jumbo v5, "buildData"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "data"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const-string/jumbo v4, "utf-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 42
    .end local v0    # "builder":Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .end local v1    # "data":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 33
    .restart local v0    # "builder":Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    :cond_0
    const-string/jumbo v4, "deviceId"

    iget-object v5, p0, Lc8/wXe;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v0    # "builder":Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    :catch_0
    move-exception v3

    .line 39
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "SwitchDO"

    const-string/jumbo v5, "buildData"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
