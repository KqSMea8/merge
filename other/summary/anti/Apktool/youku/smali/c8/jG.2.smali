.class public Lc8/jG;
.super Ljava/lang/Object;
.source "WVPackageAppConfig.java"

# interfaces
.implements Lc8/kG;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile config:Lc8/WG;


# instance fields
.field private lastUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lc8/jG;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/jG;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lc8/jG;->config:Lc8/WG;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/jG;->lastUpdateTime:J

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lc8/jG;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getGlobalConfig()Lc8/WG;
    .locals 6

    .prologue
    .line 42
    sget-object v3, Lc8/jG;->TAG:Ljava/lang/String;

    monitor-enter v3

    .line 43
    :try_start_0
    sget-object v2, Lc8/jG;->config:Lc8/WG;

    if-nez v2, :cond_1

    .line 44
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lc8/AG;->readGlobalConfig(Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 46
    .local v0, "data":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Lc8/aH;->parseGlobalConfig(Ljava/lang/String;)Lc8/WG;

    move-result-object v2

    sput-object v2, Lc8/jG;->config:Lc8/WG;

    .line 47
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    sget-object v2, Lc8/jG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageAppforDebug \u9996\u6b21\u603b\u63a7\u89e3\u6790\u6210\u529f data:\u3010"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lc8/jG;->config:Lc8/WG;

    if-nez v2, :cond_1

    .line 55
    new-instance v2, Lc8/WG;

    invoke-direct {v2}, Lc8/WG;-><init>()V

    sput-object v2, Lc8/jG;->config:Lc8/WG;

    .line 58
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    sget-object v2, Lc8/jG;->config:Lc8/WG;

    monitor-exit v3

    return-object v2

    .line 50
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lc8/jG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageAppforDebug \u603b\u63a7\u89e3\u6790\u672c\u5730\u603b\u63a7\u6587\u4ef6\u5931\u8d25 :\u3010 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public saveLocalConfig(Lc8/WG;)Z
    .locals 6
    .param p1, "localConfig"    # Lc8/WG;

    .prologue
    const/4 v2, 0x0

    .line 191
    sput-object p1, Lc8/jG;->config:Lc8/WG;

    .line 192
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 194
    :try_start_0
    invoke-static {p1}, Lc8/fH;->parseGlobalConfig2String(Lc8/WG;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "configString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v3

    sget-object v4, Lc8/dH;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lc8/AG;->saveGlobalConfig([BZ)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 202
    .end local v0    # "configString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lc8/jG;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "PackageAppforDebug fail to save global config to disk"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateGlobalConfig(ZLandroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "forceUpdate"    # Z
    .param p4, "snapshortN"    # Ljava/lang/String;
    .param p5, "defaultUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lc8/WG;",
            ">;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/taobao/windvane/WindvaneException;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "success":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;>;"
    .local p3, "error":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/taobao/windvane/WindvaneException;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v0, v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->packageAppStatus:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 78
    .local v6, "now":J
    if-nez p1, :cond_2

    iget-wide v0, p0, Lc8/jG;->lastUpdateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lc8/jG;->lastUpdateTime:J

    sub-long v0, v6, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 79
    sget-object v0, Lc8/jG;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PackageAppforDebug \u603b\u63a7\u66f4\u65b0\u65f6\u673a\u672a\u5230(\u975e\u5f3a\u5236\u66f4\u65b0\u6216\u95f4\u9694\u4e0d\u8d85\u8fc75\u5206\u949f)"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    iput-wide v6, p0, Lc8/jG;->lastUpdateTime:J

    .line 84
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v8

    new-instance v0, Lc8/iG;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/iG;-><init>(Lc8/jG;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v8, v0}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
