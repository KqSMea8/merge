.class public final Lc8/RI;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/QI;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONFIG:Lc8/RI;

.field private static configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/RI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appkey:Ljava/lang/String;

.field private env:Lanet/channel/entity/ENV;

.field private iSecurity:Lc8/gK;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/RI;->configMap:Ljava/util/Map;

    .line 21
    new-instance v0, Lc8/QI;

    invoke-direct {v0}, Lc8/QI;-><init>()V

    const-string/jumbo v1, "[default]"

    invoke-virtual {v0, v1}, Lc8/QI;->setTag(Ljava/lang/String;)Lc8/QI;

    move-result-object v0

    const-string/jumbo v1, "[default]"

    invoke-virtual {v0, v1}, Lc8/QI;->setAppkey(Ljava/lang/String;)Lc8/QI;

    move-result-object v0

    sget-object v1, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    invoke-virtual {v0, v1}, Lc8/QI;->setEnv(Lanet/channel/entity/ENV;)Lc8/QI;

    move-result-object v0

    invoke-virtual {v0}, Lc8/QI;->build()Lc8/RI;

    move-result-object v0

    sput-object v0, Lc8/RI;->DEFAULT_CONFIG:Lc8/RI;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    iput-object v0, p0, Lc8/RI;->env:Lanet/channel/entity/ENV;

    .line 33
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lc8/RI;->configMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lc8/RI;)Lanet/channel/entity/ENV;
    .locals 1
    .param p0, "x0"    # Lc8/RI;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/RI;->env:Lanet/channel/entity/ENV;

    return-object v0
.end method

.method static synthetic access$102(Lc8/RI;Lanet/channel/entity/ENV;)Lanet/channel/entity/ENV;
    .locals 0
    .param p0, "x0"    # Lc8/RI;
    .param p1, "x1"    # Lanet/channel/entity/ENV;

    .prologue
    .line 18
    iput-object p1, p0, Lc8/RI;->env:Lanet/channel/entity/ENV;

    return-object p1
.end method

.method static synthetic access$200(Lc8/RI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RI;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/RI;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lc8/RI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/RI;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lc8/RI;->appkey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lc8/RI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RI;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/RI;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lc8/RI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/RI;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lc8/RI;->tag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lc8/RI;Lc8/gK;)Lc8/gK;
    .locals 0
    .param p0, "x0"    # Lc8/RI;
    .param p1, "x1"    # Lc8/gK;

    .prologue
    .line 18
    iput-object p1, p0, Lc8/RI;->iSecurity:Lc8/gK;

    return-object p1
.end method

.method public static getConfig(Ljava/lang/String;Lanet/channel/entity/ENV;)Lc8/RI;
    .locals 4
    .param p0, "appkey"    # Ljava/lang/String;
    .param p1, "env"    # Lanet/channel/entity/ENV;

    .prologue
    .line 42
    sget-object v3, Lc8/RI;->configMap:Ljava/util/Map;

    monitor-enter v3

    .line 43
    :try_start_0
    sget-object v2, Lc8/RI;->configMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/RI;

    .line 44
    .local v0, "config":Lc8/RI;
    iget-object v2, v0, Lc8/RI;->env:Lanet/channel/entity/ENV;

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lc8/RI;->appkey:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    monitor-exit v3

    .line 49
    .end local v0    # "config":Lc8/RI;
    :goto_0
    return-object v0

    .line 48
    :cond_1
    monitor-exit v3

    .line 49
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getConfigByTag(Ljava/lang/String;)Lc8/RI;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v1, Lc8/RI;->configMap:Ljava/util/Map;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lc8/RI;->configMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/RI;

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lc8/RI;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getEnv()Lanet/channel/entity/ENV;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc8/RI;->env:Lanet/channel/entity/ENV;

    return-object v0
.end method

.method public getSecurity()Lc8/gK;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lc8/RI;->iSecurity:Lc8/gK;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/RI;->tag:Ljava/lang/String;

    return-object v0
.end method
