.class public Lc8/ZAb;
.super Ljava/lang/Object;
.source "TnetHostPortMgr.java"

# interfaces
.implements Lc8/xzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/YAb;
    }
.end annotation


# static fields
.field public static final TAG_TNET_HOST_PORT:Ljava/lang/String; = "utanalytics_tnet_host_port"

.field public static instance:Lc8/ZAb;


# instance fields
.field public entity:Lc8/YAb;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    new-instance v3, Lc8/YAb;

    invoke-direct {v3}, Lc8/YAb;-><init>()V

    iput-object v3, p0, Lc8/ZAb;->entity:Lc8/YAb;

    .line 29
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_tnet_host_port"

    invoke-static {v3, v4}, Lc8/uBb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "localConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/ZAb;->parseConifg(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_tnet_host_port"

    invoke-static {v3, v4}, Lc8/ZBb;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "localSPConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v1}, Lc8/ZAb;->parseConifg(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_tnet_host_port"

    invoke-virtual {v3, v4}, Lc8/zzb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "serverConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v2}, Lc8/ZAb;->parseConifg(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_tnet_host_port"

    invoke-virtual {v3, v4, p0}, Lc8/zzb;->register(Ljava/lang/String;Lc8/xzb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "localConfigHostPort":Ljava/lang/String;
    .end local v1    # "localSPConfigHostPort":Ljava/lang/String;
    .end local v2    # "serverConfigHostPort":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/ZAb;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lc8/ZAb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/ZAb;->instance:Lc8/ZAb;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lc8/ZAb;

    invoke-direct {v0}, Lc8/ZAb;-><init>()V

    sput-object v0, Lc8/ZAb;->instance:Lc8/ZAb;

    .line 22
    :cond_0
    sget-object v0, Lc8/ZAb;->instance:Lc8/ZAb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseConifg(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 54
    const-string/jumbo v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 56
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "localHost":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 58
    .local v2, "localPort":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v2, :cond_0

    .line 59
    iget-object v3, p0, Lc8/ZAb;->entity:Lc8/YAb;

    iput-object v1, v3, Lc8/YAb;->host:Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lc8/ZAb;->entity:Lc8/YAb;

    iput v2, v3, Lc8/YAb;->port:I

    .line 64
    .end local v0    # "index":I
    .end local v1    # "localHost":Ljava/lang/String;
    .end local v2    # "localPort":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getEntity()Lc8/YAb;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc8/ZAb;->entity:Lc8/YAb;

    return-object v0
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lc8/ZAb;->parseConifg(Ljava/lang/String;)V

    .line 49
    return-void
.end method
