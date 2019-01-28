.class public Lc8/aQf;
.super Ljava/lang/Object;
.source "UpdateAdapter.java"


# static fields
.field private static hasInit:Z


# instance fields
.field private hasAccs:Ljava/lang/Boolean;

.field private hasAppMonitor:Ljava/lang/Boolean;

.field private hasMtop:Ljava/lang/Boolean;

.field private hasOrange:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lc8/aQf;->hasInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
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

.method private hasAccs()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lc8/aQf;->hasAccs:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 164
    :try_start_0
    const-class v0, Lcom/taobao/accs/base/AccsAbstractDataListener;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/aQf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 165
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/aQf;->hasAccs:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/aQf;->hasAccs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 167
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/aQf;->hasAccs:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private hasAppMonitor()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lc8/aQf;->hasAppMonitor:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 176
    :try_start_0
    const-class v0, Lc8/LVb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/aQf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/aQf;->hasAppMonitor:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/aQf;->hasAppMonitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 179
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/aQf;->hasAppMonitor:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private hasMtop()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lc8/aQf;->hasMtop:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 152
    :try_start_0
    const-class v0, Lc8/AOp;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/aQf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 153
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/aQf;->hasMtop:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/aQf;->hasMtop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 155
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/aQf;->hasMtop:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private hasOrange()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lc8/aQf;->hasOrange:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 140
    :try_start_0
    const-class v0, Lc8/ctf;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/aQf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/aQf;->hasOrange:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/aQf;->hasOrange:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 143
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/aQf;->hasOrange:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Lc8/aQf;->hasAppMonitor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p1, p2, p3}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public executeThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 122
    new-instance v0, Lc8/ZPf;

    invoke-direct {v0, p0, p1}, Lc8/ZPf;-><init>(Lc8/aQf;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lc8/ZPf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Lc8/aQf;->hasOrange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    sget-object v1, Lc8/rRf;->UPDATE_CONFIG_GROUP:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 108
    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public invokePullApi(Ljava/io/Serializable;Landroid/content/Context;Ljava/lang/String;Z)Lcom/alibaba/fastjson/JSONObject;
    .locals 9
    .param p1, "request"    # Ljava/io/Serializable;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "outApp"    # Z

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-direct {p0}, Lc8/aQf;->hasMtop()Z

    move-result v5

    if-nez v5, :cond_0

    .line 42
    const-string/jumbo v5, "UpdateAdapter"

    const-string/jumbo v7, "mtop is not found"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 71
    :goto_0
    return-object v5

    .line 47
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    const-string/jumbo p3, "600000"

    .line 51
    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v5, "OPEN"

    :goto_1
    invoke-static {v5, p2}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v5

    invoke-virtual {v5, p1, p3}, Lc8/AOp;->build(Ljava/lang/Object;Ljava/lang/String;)Lc8/COp;

    move-result-object v2

    .line 52
    .local v2, "reqInstance":Lc8/COp;
    sget-object v5, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v2, v5}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    .line 54
    invoke-virtual {v2}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 56
    .local v3, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 58
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 59
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 60
    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 61
    .local v1, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 51
    .end local v1    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "reqInstance":Lc8/COp;
    .end local v3    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "INNER"

    goto :goto_1

    .line 65
    .restart local v2    # "reqInstance":Lc8/COp;
    .restart local v3    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "UpdateAdapter"

    const-string/jumbo v7, "get mtop data exception"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    move-object v5, v6

    .line 71
    goto :goto_0

    .line 69
    :cond_4
    const-string/jumbo v5, "UpdateAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invoke mtop api error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public declared-synchronized registerPushApi(Landroid/content/Context;Lc8/yRf;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateDataSource"    # Lc8/yRf;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc8/aQf;->hasAccs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-boolean v0, Lc8/aQf;->hasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lc8/aQf;->hasInit:Z

    .line 91
    const-string/jumbo v0, "mtl"

    new-instance v1, Lc8/CRf;

    invoke-direct {v1, p2}, Lc8/CRf;-><init>(Lc8/yRf;)V

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/ACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
