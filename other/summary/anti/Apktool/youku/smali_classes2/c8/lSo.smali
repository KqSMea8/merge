.class public Lc8/lSo;
.super Lc8/dIo;
.source "VipSettingUtil.java"


# static fields
.field private static instance:Lc8/lSo; = null

.field private static final key_config_data:Ljava/lang/String; = "key_config_data"

.field private static final key_config_time:Ljava/lang/String; = "key_config_time"

.field private static final key_request_config_time:Ljava/lang/String; = "key_request_config_time"

.field private static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/lSo;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/dIo;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lc8/lSo;
    .locals 3

    .prologue
    .line 30
    sget-object v1, Lc8/lSo;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lc8/lSo;->instance:Lc8/lSo;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lc8/lSo;->instance:Lc8/lSo;

    monitor-exit v1

    .line 36
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lc8/lSo;

    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lc8/lSo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/lSo;->instance:Lc8/lSo;

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lc8/lSo;->instance:Lc8/lSo;

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getConfigData()Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-string/jumbo v1, "key_config_data"

    invoke-virtual {p0, v1}, Lc8/lSo;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/lSo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getConfigTime()J
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-string/jumbo v1, "key_config_time"

    invoke-virtual {p0, v1}, Lc8/lSo;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/lSo;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lc8/lSo;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestConfigTime()J
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-string/jumbo v1, "key_request_config_time"

    invoke-virtual {p0, v1}, Lc8/lSo;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/lSo;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/lSo;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/lSo;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 51
    iget-object v0, p0, Lc8/lSo;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    iget-object v0, p0, Lc8/lSo;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    return-void
.end method

.method public removeConfig()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-string/jumbo v1, "key_config_data"

    invoke-virtual {p0, v1}, Lc8/lSo;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/lSo;->remove(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public removeConfigTime()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-string/jumbo v1, "key_config_time"

    invoke-virtual {p0, v1}, Lc8/lSo;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/lSo;->remove(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public removeRequestConfigTime()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-string/jumbo v1, "key_request_config_time"

    invoke-virtual {p0, v1}, Lc8/lSo;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/lSo;->remove(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public saveConfigData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 61
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-string/jumbo v1, "key_config_data"

    invoke-virtual {p0, v1}, Lc8/lSo;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/lSo;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public saveConfigTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 85
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-string/jumbo v1, "key_config_time"

    invoke-virtual {p0, v1}, Lc8/lSo;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lc8/lSo;->putLong(Ljava/lang/String;J)V

    .line 86
    return-void
.end method

.method public saveRequestConfigTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 69
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-string/jumbo v1, "key_request_config_time"

    invoke-virtual {p0, v1}, Lc8/lSo;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lc8/lSo;->putLong(Ljava/lang/String;J)V

    .line 70
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lc8/lSo;->mUserId:Ljava/lang/String;

    .line 41
    return-void
.end method
