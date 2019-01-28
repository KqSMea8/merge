.class public Lc8/WAb;
.super Ljava/lang/Object;
.source "HttpsHostPortMgr.java"

# interfaces
.implements Lc8/xzb;


# static fields
.field public static final TAG_HTTPS_HOST_PORT:Ljava/lang/String; = "utanalytics_https_host"

.field public static instance:Lc8/WAb;


# instance fields
.field private mHttpsUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v3, "https://h-adashx.ut.taobao.com/upload"

    iput-object v3, p0, Lc8/WAb;->mHttpsUrl:Ljava/lang/String;

    .line 31
    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_https_host"

    invoke-static {v3, v4}, Lc8/uBb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "localConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/WAb;->parseConifg(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_https_host"

    invoke-static {v3, v4}, Lc8/ZBb;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "localSPConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v1}, Lc8/WAb;->parseConifg(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_https_host"

    invoke-virtual {v3, v4}, Lc8/zzb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "serverConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v2}, Lc8/WAb;->parseConifg(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_https_host"

    invoke-virtual {v3, v4, p0}, Lc8/zzb;->register(Ljava/lang/String;Lc8/xzb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "localConfigHostPort":Ljava/lang/String;
    .end local v1    # "localSPConfigHostPort":Ljava/lang/String;
    .end local v2    # "serverConfigHostPort":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/WAb;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lc8/WAb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/WAb;->instance:Lc8/WAb;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lc8/WAb;

    invoke-direct {v0}, Lc8/WAb;-><init>()V

    sput-object v0, Lc8/WAb;->instance:Lc8/WAb;

    .line 25
    :cond_0
    sget-object v0, Lc8/WAb;->instance:Lc8/WAb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseConifg(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/WAb;->mHttpsUrl:Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public getHttpsUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    const-string/jumbo v0, ""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mHttpsUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/WAb;->mHttpsUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lc8/WAb;->mHttpsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lc8/WAb;->parseConifg(Ljava/lang/String;)V

    .line 47
    return-void
.end method
