.class public Lc8/tXe;
.super Lc8/uXe;
.source "AliasDO.java"


# static fields
.field public static final JSON_CMD_REMOVEALIAS:Ljava/lang/String; = "removeAlias"

.field public static final JSON_CMD_SETALIAS:Ljava/lang/String; = "setAlias"

.field public static final JSON_PUSH_USER_TOKEN:Ljava/lang/String; = "pushAliasToken"

.field private static final TAG:Ljava/lang/String; = "AliasDO"


# instance fields
.field public alias:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public pushAliasToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lc8/uXe;-><init>()V

    return-void
.end method

.method public static buildremoveAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "pushAliasToken"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lc8/tXe;

    invoke-direct {v0}, Lc8/tXe;-><init>()V

    .line 53
    .local v0, "aliasDO":Lc8/tXe;
    iput-object p0, v0, Lc8/tXe;->appKey:Ljava/lang/String;

    .line 54
    iput-object p1, v0, Lc8/tXe;->deviceId:Ljava/lang/String;

    .line 55
    iput-object p2, v0, Lc8/tXe;->pushAliasToken:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "removeAlias"

    iput-object v1, v0, Lc8/tXe;->cmd:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Lc8/tXe;->buildData()[B

    move-result-object v1

    return-object v1
.end method

.method public static buildsetAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lc8/tXe;

    invoke-direct {v0}, Lc8/tXe;-><init>()V

    .line 44
    .local v0, "aliasDO":Lc8/tXe;
    iput-object p0, v0, Lc8/tXe;->appKey:Ljava/lang/String;

    .line 45
    iput-object p1, v0, Lc8/tXe;->deviceId:Ljava/lang/String;

    .line 46
    iput-object p2, v0, Lc8/tXe;->alias:Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "setAlias"

    iput-object v1, v0, Lc8/tXe;->cmd:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lc8/tXe;->buildData()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public buildData()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "result":[B
    :try_start_0
    new-instance v3, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    invoke-direct {v3}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;-><init>()V

    const-string/jumbo v4, "cmd"

    iget-object v5, p0, Lc8/tXe;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "appKey"

    iget-object v5, p0, Lc8/tXe;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "deviceId"

    iget-object v5, p0, Lc8/tXe;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "alias"

    iget-object v5, p0, Lc8/tXe;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "pushAliasToken"

    iget-object v5, p0, Lc8/tXe;->pushAliasToken:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->build()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v3, "AliasDO"

    const-string/jumbo v4, "buildData"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "data"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "AliasDO"

    const-string/jumbo v4, "buildData"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
