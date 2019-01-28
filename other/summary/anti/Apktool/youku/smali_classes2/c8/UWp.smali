.class public Lc8/UWp;
.super Ljava/lang/Object;
.source "NotifManager.java"


# static fields
.field private static final ACK_MESSAGE:Ljava/lang/String; = "accs.ackMessage"

.field private static final EVENT_ID:I = 0x101d1

.field private static final TAG:Ljava/lang/String; = "NotifManager"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lc8/UWp;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lc8/UWp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lc8/UWp;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lc8/UWp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lc8/UWp;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lc8/UWp;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/UWp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lc8/UWp;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertMsgToBytes(Lc8/DWp;)[B
    .locals 6
    .param p1, "msg"    # Lc8/DWp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v1, "reportDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "api"

    const-string/jumbo v4, "agooReport"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v3, "id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lc8/DWp;->msgIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lc8/DWp;->messageSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v3, "ext"

    iget-object v4, p1, Lc8/DWp;->extData:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v3, "status"

    iget-object v4, p1, Lc8/DWp;->msgStatus:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v3, p1, Lc8/DWp;->errorCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    const-string/jumbo v3, "ec"

    iget-object v4, p1, Lc8/DWp;->errorCode:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    iget-object v3, p1, Lc8/DWp;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    const-string/jumbo v3, "type"

    iget-object v4, p1, Lc8/DWp;->type:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1
    iget-object v3, p1, Lc8/DWp;->fromPkg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    const-string/jumbo v3, "fromPkg"

    iget-object v4, p1, Lc8/DWp;->fromPkg:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_2
    iget-object v3, p1, Lc8/DWp;->fromAppkey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 178
    const-string/jumbo v3, "fromAppkey"

    iget-object v4, p1, Lc8/DWp;->fromAppkey:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_3
    iget-object v3, p1, Lc8/DWp;->notifyEnable:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 181
    const-string/jumbo v3, "notifyEnable"

    iget-object v4, p1, Lc8/DWp;->notifyEnable:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_4
    iget-object v3, p1, Lc8/DWp;->extData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 184
    const-string/jumbo v3, "ext"

    iget-object v4, p1, Lc8/DWp;->extData:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_5
    const-string/jumbo v3, "isStartProc"

    iget-boolean v4, p1, Lc8/DWp;->isStartProc:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v3, "appkey"

    sget-object v4, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v3, "utdid"

    sget-object v4, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 192
    .local v2, "reportJson":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    .local v0, "data":[B
    return-object v0
.end method

.method private getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 370
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    const-string/jumbo v2, "null"

    .line 379
    :goto_0
    return-object v2

    .line 373
    :cond_0
    sget-object v3, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 374
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 375
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 376
    .local v2, "version":Ljava/lang/String;
    const-string/jumbo v3, "NotifManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVersion###\u7248\u672c\u53f7\u4e3a : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    const-string/jumbo v2, "null"

    goto :goto_0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 352
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v1

    .line 355
    :cond_1
    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 360
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v0, :cond_0

    .line 363
    const-string/jumbo v2, "NotifManager"

    const-string/jumbo v3, "isAppInstalled true.."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    const/4 v1, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    const/4 v0, 0x0

    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_1
.end method

.method private reportMethod(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 10
    .param p1, "msg"    # Lc8/DWp;
    .param p2, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 198
    if-nez p1, :cond_1

    .line 199
    :try_start_0
    const-string/jumbo v1, "NotifManager"

    const-string/jumbo v2, "reportMethod msg null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lc8/UWp;->convertMsgToBytes(Lc8/DWp;)[B

    move-result-object v3

    .line 203
    .local v3, "data":[B
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v1, 0x0

    const-string/jumbo v2, "agooAck"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 205
    .local v0, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    iget-object v1, p1, Lc8/DWp;->msgIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 206
    sget-object v1, Lc8/UWp;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/BWp;->getAccsConfigTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v1

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p2}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "dataIdString":Ljava/lang/String;
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string/jumbo v1, "NotifManager"

    const-string/jumbo v2, "report"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "dataId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p1, Lc8/DWp;->msgStatus:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "errorcode"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p1, Lc8/DWp;->errorCode:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v3    # "data":[B
    .end local v8    # "dataIdString":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 211
    .local v9, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "error"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v1, v2, v4, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method


# virtual methods
.method public doUninstall(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "uninstallPack"    # Ljava/lang/String;
    .param p2, "replacing"    # Z

    .prologue
    .line 275
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v9, "reportDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pack"

    invoke-interface {v9, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v1, "appkey"

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v1, "utdid"

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 281
    .local v10, "reportJson":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 284
    .local v3, "data":[B
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v1, 0x0

    const-string/jumbo v2, "agooKick"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 287
    .local v0, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    sget-object v1, Lc8/UWp;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/BWp;->getAccsConfigTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v1

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {v4}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    invoke-interface {v1, v2, v0, v4}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v3    # "data":[B
    .end local v9    # "reportDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "reportJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v8

    .line 290
    .local v8, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "NotifManager"

    const-string/jumbo v2, "[doUninstall] is error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v8, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public handlerACKMessage(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 13
    .param p1, "msg"    # Lc8/DWp;
    .param p2, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p1, Lc8/DWp;->msgIds:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lc8/DWp;->removePacks:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lc8/DWp;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.ackMessage"

    sget-object v3, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "handlerACKMessageRetuen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "msgids="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lc8/DWp;->msgIds:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",removePacks="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lc8/DWp;->removePacks:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",errorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lc8/DWp;->errorCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_1
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v8, "ackDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "api"

    const-string/jumbo v2, "agooAck"

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lc8/DWp;->msgIds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/DWp;->messageSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p1, Lc8/DWp;->removePacks:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    const-string/jumbo v1, "del_pack"

    iget-object v2, p1, Lc8/DWp;->removePacks:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    iget-object v1, p1, Lc8/DWp;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    const-string/jumbo v1, "ec"

    iget-object v2, p1, Lc8/DWp;->errorCode:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    iget-object v1, p1, Lc8/DWp;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 77
    const-string/jumbo v1, "type"

    iget-object v2, p1, Lc8/DWp;->type:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_4
    iget-object v1, p1, Lc8/DWp;->extData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 80
    const-string/jumbo v1, "ext"

    iget-object v2, p1, Lc8/DWp;->extData:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_5
    const-string/jumbo v1, "appkey"

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "utdid"

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 87
    .local v9, "ackJson":Lorg/json/JSONObject;
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 89
    .local v10, "data":[B
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.ackMessage"

    sget-object v3, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "handlerACKMessageSendData"

    iget-object v5, p1, Lc8/DWp;->msgIds:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "agoo_ack"

    const-string/jumbo v3, "handlerACKMessage"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 92
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v1, 0x0

    const-string/jumbo v2, "agooAck"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 94
    .local v0, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    if-eqz p1, :cond_6

    .line 95
    iget-object v1, p1, Lc8/DWp;->msgIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 99
    :cond_6
    sget-object v1, Lc8/UWp;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/BWp;->getAccsConfigTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v1

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p2}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "dataIdString":Ljava/lang/String;
    const-string/jumbo v1, "NotifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlerACKMessage,endRequest,dataId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 103
    .end local v0    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v8    # "ackDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "ackJson":Lorg/json/JSONObject;
    .end local v10    # "data":[B
    .end local v11    # "dataIdString":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 104
    .local v12, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 105
    const-string/jumbo v1, "NotifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlerACKMessage Throwable,msgIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/DWp;->msgIds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/DWp;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_7
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d2

    const-string/jumbo v3, "accs.ackMessage"

    sget-object v4, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "handlerACKMessageExceptionFailed"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sput-object p1, Lc8/UWp;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lc8/HWp;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lc8/UWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 50
    return-void
.end method

.method public pingApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pack"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;
    .param p4, "percent"    # I

    .prologue
    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    const-string/jumbo v0, "NotifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pingApp [print param],percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",pack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_2
    iget-object v6, p0, Lc8/UWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lc8/TWp;

    move-object v1, p0

    move v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/TWp;-><init>(Lc8/UWp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public report(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 8
    .param p1, "msg"    # Lc8/DWp;
    .param p2, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 117
    iget-object v2, p1, Lc8/DWp;->reportStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    :try_start_0
    iget-object v2, p1, Lc8/DWp;->reportStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "report":I
    const/4 v2, -0x1

    if-lt v1, v2, :cond_0

    .line 122
    invoke-direct {p0, p1, p2}, Lc8/UWp;->reportMethod(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 123
    iget-boolean v2, p1, Lc8/DWp;->isFromCache:Z

    if-nez v2, :cond_0

    .line 124
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "agoo_ack"

    iget-object v4, p1, Lc8/DWp;->msgStatus:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "report":I
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "NotifManager"

    const-string/jumbo v3, "[report] is error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reportNotifyMessage(Lc8/DWp;)V
    .locals 14
    .param p1, "msg"    # Lc8/DWp;

    .prologue
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 141
    if-eqz p1, :cond_1

    .line 142
    :try_start_0
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "agoo_report_id"

    iget-object v4, p1, Lc8/DWp;->msgIds:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v1, v2, v4, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 143
    invoke-direct {p0, p1}, Lc8/UWp;->convertMsgToBytes(Lc8/DWp;)[B

    move-result-object v3

    .line 144
    .local v3, "data":[B
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v1, 0x0

    const-string/jumbo v2, "agooAck"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 146
    .local v0, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    sget-object v1, Lc8/UWp;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/BWp;->getAccsConfigTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v8

    .line 147
    .local v8, "accsManager":Lcom/taobao/accs/IACCSManager;
    sget-object v1, Lc8/UWp;->mContext:Landroid/content/Context;

    invoke-interface {v8, v1, v0}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "dataIdString":Ljava/lang/String;
    sget-object v1, Lc8/UWp;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v8, v1, v0, v2}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    .line 149
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string/jumbo v1, "NotifManager"

    const-string/jumbo v2, "reportNotifyMessage"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "dataId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p1, Lc8/DWp;->msgStatus:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_0
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "agoo_click"

    iget-object v4, p1, Lc8/DWp;->msgStatus:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v1, v2, v4, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 153
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "agoo_ack"

    iget-object v4, p1, Lc8/DWp;->msgStatus:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v1, v2, v4, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v3    # "data":[B
    .end local v8    # "accsManager":Lcom/taobao/accs/IACCSManager;
    .end local v9    # "dataIdString":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v10

    .line 156
    .local v10, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "NotifManager"

    const-string/jumbo v2, "[reportNotifyMessage] is error"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v1, v2, v10, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 157
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "error"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc8/UWp;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    return-void
.end method

.method public reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "forceSendData"    # Z

    .prologue
    .line 223
    new-instance v0, Lc8/SWp;

    invoke-direct {v0, p0, p2, p1, p3}, Lc8/SWp;-><init>(Lc8/UWp;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 261
    return-void
.end method
