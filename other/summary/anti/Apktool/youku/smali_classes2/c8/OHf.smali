.class public Lc8/OHf;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/KHf;,
        Lc8/LHf;,
        Lc8/MHf;,
        Lc8/NHf;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHasTraceStatus:Z

.field private mTaskStatus:Z

.field private mTraceStatusInfo:Lc8/qIf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lc8/OHf;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/OHf;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lc8/OHf;->mTaskStatus:Z

    .line 30
    iput-boolean v0, p0, Lc8/OHf;->mHasTraceStatus:Z

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lc8/JHf;)V
    .locals 0
    .param p1, "x0"    # Lc8/JHf;

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/OHf;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lc8/OHf;)Lc8/qIf;
    .locals 1
    .param p0, "x0"    # Lc8/OHf;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/OHf;->mTraceStatusInfo:Lc8/qIf;

    return-object v0
.end method

.method static synthetic access$202(Lc8/OHf;Lc8/qIf;)Lc8/qIf;
    .locals 0
    .param p0, "x0"    # Lc8/OHf;
    .param p1, "x1"    # Lc8/qIf;

    .prologue
    .line 23
    iput-object p1, p0, Lc8/OHf;->mTraceStatusInfo:Lc8/qIf;

    return-object p1
.end method

.method static synthetic access$300(Lc8/OHf;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/OHf;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lc8/OHf;->queryTaskInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lc8/OHf;Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "x0"    # Lc8/OHf;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lc8/OHf;->getTraceStatusData(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lc8/OHf;Ljava/lang/String;)Lc8/qIf;
    .locals 1
    .param p0, "x0"    # Lc8/OHf;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lc8/OHf;->dealTraceStatus(Ljava/lang/String;)Lc8/qIf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lc8/OHf;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lc8/OHf;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 23
    iput-object p1, p0, Lc8/OHf;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$700(Lc8/OHf;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/OHf;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lc8/OHf;->pollGetTask(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lc8/OHf;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dealTraceStatus(Lcom/alibaba/fastjson/JSONObject;)Lc8/qIf;
    .locals 4
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 153
    if-nez p1, :cond_1

    move-object v0, v1

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    :try_start_0
    invoke-static {p1}, Lc8/qIf;->makeInfo(Lcom/alibaba/fastjson/JSONObject;)Lc8/qIf;

    move-result-object v0

    .line 158
    .local v0, "taskStatusInfo":Lc8/qIf;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_2
    iget-object v2, p0, Lc8/OHf;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lc8/OHf;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v0    # "taskStatusInfo":Lc8/qIf;
    :catch_0
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method private dealTraceStatus(Ljava/lang/String;)Lc8/qIf;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 146
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    if-nez v0, :cond_0

    .line 147
    const/4 v1, 0x0

    .line 149
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lc8/OHf;->dealTraceStatus(Lcom/alibaba/fastjson/JSONObject;)Lc8/qIf;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lc8/OHf;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lc8/NHf;->access$100()Lc8/OHf;

    move-result-object v0

    return-object v0
.end method

.method private getTraceStatusData(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 296
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "appKey"

    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v11, "appVersion"

    invoke-static {}, Lc8/EHf;->getAppVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 300
    .local v10, "userInfo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "value"

    invoke-static {}, Lc8/EHf;->getUserNick()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string/jumbo v11, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v11, "userInfo"

    invoke-virtual {v2, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 306
    .local v3, "deviceId":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "value"

    invoke-static {}, Lc8/EHf;->getUTDID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v11, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v11, "deviceId"

    invoke-virtual {v2, v11, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 312
    .local v4, "model":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "value"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v11, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v11, "model"

    invoke-virtual {v2, v11, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 318
    .local v0, "brand":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "value"

    sget-object v12, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v11, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v11, "brand"

    invoke-virtual {v2, v11, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 324
    .local v9, "rom":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "value"

    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v11, "rom"

    invoke-virtual {v2, v11, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 329
    .local v6, "osVersion":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "osVersion"

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v11, "extension"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v11, "osVersion"

    invoke-virtual {v2, v11, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 335
    .local v5, "network":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "value"

    invoke-static {p1}, Lc8/IHf;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v11, "network"

    invoke-virtual {v2, v11, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 340
    .local v1, "carrier":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "value"

    invoke-static {p1}, Lc8/IHf;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v11, "carrier"

    invoke-virtual {v2, v11, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 345
    .local v8, "proxy":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "http.proxyHost"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, "proHost":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 347
    const-string/jumbo v11, "value"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :goto_0
    return-object v2

    .line 349
    :cond_0
    const-string/jumbo v11, "value"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private pollGetTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lc8/OHf;->mTraceStatusInfo:Lc8/qIf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/OHf;->mTraceStatusInfo:Lc8/qIf;

    invoke-virtual {v0}, Lc8/qIf;->getTraceMode()Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->REALTIME:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lc8/OHf;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lc8/OHf;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/JHf;

    invoke-direct {v1, p0, p1, p2}, Lc8/JHf;-><init>(Lc8/OHf;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lc8/OHf;->mTraceStatusInfo:Lc8/qIf;

    invoke-virtual {v2}, Lc8/qIf;->getStrategy()Lc8/pIf;

    move-result-object v2

    iget v2, v2, Lc8/pIf;->queryFrequency:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private queryTaskInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lc8/LHf;

    invoke-direct {v0, p0, p1}, Lc8/LHf;-><init>(Lc8/OHf;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lc8/LHf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method


# virtual methods
.method public cleanTraceStatusFlag()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/OHf;->mHasTraceStatus:Z

    .line 83
    return-void
.end method

.method public queryTraceStatus(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    iget-boolean v0, p0, Lc8/OHf;->mTaskStatus:Z

    if-eqz v0, :cond_0

    .line 70
    iget-boolean v0, p0, Lc8/OHf;->mHasTraceStatus:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/OHf;->mHasTraceStatus:Z

    .line 73
    new-instance v0, Lc8/MHf;

    invoke-direct {v0, p0, p1}, Lc8/MHf;-><init>(Lc8/OHf;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lc8/MHf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    :cond_0
    return-void
.end method

.method public removeTraceStatus()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/OHf;->mTraceStatusInfo:Lc8/qIf;

    .line 173
    return-void
.end method

.method public sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "response"    # Lcom/alibaba/fastjson/JSONObject;
    .param p5, "taskId"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p3, :cond_0

    const-string/jumbo v1, "mtop"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {}, Lc8/EHf;->getTTID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lc8/lIf;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/lIf;

    move-result-object v0

    .line 108
    .local v0, "business":Lc8/lIf;
    invoke-static {}, Lc8/EHf;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lc8/KHf;

    invoke-direct {v4, p0}, Lc8/KHf;-><init>(Lc8/OHf;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/lIf;->responseTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/JNp;)V

    .line 116
    .end local v0    # "business":Lc8/lIf;
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p1, p2, p3, v1, p5}, Lcom/taobao/accs/ACCSManager;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public setTaskStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 46
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "tlog_pull"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const-string/jumbo v2, "tlog_pull"

    const-string/jumbo v3, "false"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "tlogPull":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iput-boolean v5, p0, Lc8/OHf;->mTaskStatus:Z

    .line 62
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "tlogPull":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v1    # "tlogPull":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iput-boolean v4, p0, Lc8/OHf;->mTaskStatus:Z

    goto :goto_0

    .line 55
    .end local v1    # "tlogPull":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    iput-boolean v5, p0, Lc8/OHf;->mTaskStatus:Z

    goto :goto_0

    .line 57
    :cond_3
    const-string/jumbo v2, "false"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iput-boolean v4, p0, Lc8/OHf;->mTaskStatus:Z

    goto :goto_0
.end method
