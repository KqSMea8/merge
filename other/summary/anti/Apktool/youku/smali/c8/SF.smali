.class public Lc8/SF;
.super Ljava/lang/Object;
.source "WVMonitorConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/RF;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lc8/SF;


# instance fields
.field public config:Lc8/OF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lc8/ZF;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/SF;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lc8/SF;->instance:Lc8/SF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lc8/OF;

    invoke-direct {v0}, Lc8/OF;-><init>()V

    iput-object v0, p0, Lc8/SF;->config:Lc8/OF;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lc8/SF;Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/SF;
    .param p1, "x1"    # Lc8/LB;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lc8/SF;->updateMonitorConfig(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lc8/SF;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lc8/SF;
    .locals 3

    .prologue
    .line 44
    sget-object v1, Lc8/SF;->instance:Lc8/SF;

    if-nez v1, :cond_1

    .line 45
    const-class v2, Lc8/SF;

    monitor-enter v2

    .line 46
    :try_start_0
    sget-object v1, Lc8/SF;->instance:Lc8/SF;

    if-nez v1, :cond_0

    .line 47
    new-instance v0, Lc8/SF;

    invoke-direct {v0}, Lc8/SF;-><init>()V

    .line 48
    .local v0, "temp":Lc8/SF;
    sput-object v0, Lc8/SF;->instance:Lc8/SF;

    .line 50
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v1, Lc8/SF;->instance:Lc8/SF;

    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateMonitorConfig(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Lc8/LB;
    .param p2, "defaultUrl"    # Ljava/lang/String;
    .param p3, "snapshortN"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->monitorStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 153
    sget-object v2, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_DISABLED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 197
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v2

    const-string/jumbo v3, "3"

    iget-object v4, p0, Lc8/SF;->config:Lc8/OF;

    iget-object v4, v4, Lc8/OF;->v:Ljava/lang/String;

    invoke-static {}, Lc8/MB;->getTargetValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, p3}, Lc8/KB;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "monitorConfigUrl":Ljava/lang/String;
    :goto_1
    move-object v0, v1

    .line 164
    .local v0, "finalMonitorConfigUrl":Ljava/lang/String;
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v2

    new-instance v3, Lc8/QF;

    invoke-direct {v3, p0, p1, v0}, Lc8/QF;-><init>(Lc8/SF;Lc8/LB;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    goto :goto_0

    .line 160
    .end local v0    # "finalMonitorConfigUrl":Ljava/lang/String;
    .end local v1    # "monitorConfigUrl":Ljava/lang/String;
    :cond_1
    move-object v1, p2

    .restart local v1    # "monitorConfigUrl":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 77
    :try_start_0
    const-string/jumbo v1, "wv_main_config"

    const-string/jumbo v2, "monitorwv-data"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lc8/SF;->parseRule(Ljava/lang/String;)Lc8/OF;

    move-result-object v1

    iput-object v1, p0, Lc8/SF;->config:Lc8/OF;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v1

    const-string/jumbo v2, "monitor"

    new-instance v3, Lc8/PF;

    invoke-direct {v3, p0}, Lc8/PF;-><init>(Lc8/SF;)V

    invoke-virtual {v1, v2, v3}, Lc8/KB;->registerHandler(Ljava/lang/String;Lc8/FB;)V

    .line 91
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    new-instance v2, Lc8/RF;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lc8/RF;-><init>(Lc8/PF;)V

    invoke-virtual {v1, v2}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 92
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected needSaveConfig(Ljava/lang/String;)Z
    .locals 6
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v4

    .line 134
    :cond_1
    const/4 v1, 0x0

    .line 135
    .local v1, "jsonObj":Lorg/json/JSONObject;
    new-instance v3, Lc8/gC;

    invoke-direct {v3}, Lc8/gC;-><init>()V

    .line 136
    .local v3, "response":Lc8/gC;
    invoke-virtual {v3, p1}, Lc8/gC;->parseJsonResult(Ljava/lang/String;)Lc8/gC;

    move-result-object v5

    iget-boolean v5, v5, Lc8/gC;->success:Z

    if-eqz v5, :cond_2

    .line 137
    iget-object v1, v3, Lc8/gC;->data:Lorg/json/JSONObject;

    .line 139
    :cond_2
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/SF;->parseRule(Ljava/lang/String;)Lc8/OF;

    move-result-object v2

    .line 142
    .local v2, "newConfig":Lc8/OF;
    if-eqz v2, :cond_0

    .line 144
    iput-object v2, p0, Lc8/SF;->config:Lc8/OF;

    .line 145
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public parseRule(Ljava/lang/String;)Lc8/OF;
    .locals 10
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    .line 97
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v0, "config":Lorg/json/JSONObject;
    new-instance v4, Lc8/OF;

    invoke-direct {v4}, Lc8/OF;-><init>()V

    .line 103
    .local v4, "res":Lc8/OF;
    const-string/jumbo v6, "v"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lc8/OF;->v:Ljava/lang/String;

    .line 104
    iget-object v6, v4, Lc8/OF;->v:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 128
    .end local v0    # "config":Lorg/json/JSONObject;
    .end local v4    # "res":Lc8/OF;
    :goto_0
    return-object v4

    .line 99
    :catch_0
    move-exception v6

    sget-object v6, Lc8/SF;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseRule error. content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 100
    goto :goto_0

    .line 107
    .restart local v0    # "config":Lorg/json/JSONObject;
    .restart local v4    # "res":Lc8/OF;
    :cond_0
    iget-object v5, v4, Lc8/OF;->stat:Lc8/NF;

    const-string/jumbo v6, "minLoadTime"

    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Lc8/NF;->onLoad:J

    .line 108
    iget-object v5, v4, Lc8/OF;->stat:Lc8/NF;

    const-string/jumbo v6, "minDomLoadTime"

    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Lc8/NF;->onDomLoad:J

    .line 109
    iget-object v5, v4, Lc8/OF;->stat:Lc8/NF;

    const-string/jumbo v6, "minResTime"

    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Lc8/NF;->resTime:J

    .line 110
    iget-object v5, v4, Lc8/OF;->stat:Lc8/NF;

    const-string/jumbo v6, "reportNetStat"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lc8/NF;->netstat:Z

    .line 111
    iget-object v5, v4, Lc8/OF;->stat:Lc8/NF;

    const-string/jumbo v6, "resSample"

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lc8/NF;->resSample:I

    .line 113
    const-string/jumbo v5, "errorType"

    const-string/jumbo v6, "b"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lc8/OF;->isErrorBlacklist:Z

    .line 114
    const-string/jumbo v5, "errorRule"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 115
    .local v2, "errorRules":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    .line 116
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 117
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 118
    .local v1, "errorRule":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 119
    iget-object v5, v4, Lc8/OF;->errorRule:Ljava/util/List;

    const-string/jumbo v6, "url"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "msg"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "code"

    const-string/jumbo v9, ""

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lc8/OF;->newErrorRuleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/MF;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    .end local v1    # "errorRule":Lorg/json/JSONObject;
    .end local v3    # "i":I
    :cond_2
    const-string/jumbo v5, "perfCheckSampleRate"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v4, Lc8/OF;->perfCheckSampleRate:D

    .line 127
    const-string/jumbo v5, "perfCheckURL"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lc8/OF;->perfCheckURL:Ljava/lang/String;

    goto/16 :goto_0
.end method
