.class public Lc8/pC;
.super Ljava/lang/Object;
.source "TBConfigManager.java"


# static fields
.field public static final ANDROID_WINDVANE_CONFIG:Ljava/lang/String; = "android_windvane_config"

.field public static final WINDVANE_COMMMON_CONFIG:Ljava/lang/String; = "WindVane"

.field private static volatile instance:Lc8/pC;


# instance fields
.field private mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lc8/pC;->instance:Lc8/pC;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/pC;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    return-void
.end method

.method public static getInstance()Lc8/pC;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lc8/pC;->instance:Lc8/pC;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lc8/pC;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lc8/pC;->instance:Lc8/pC;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lc8/pC;

    invoke-direct {v0}, Lc8/pC;-><init>()V

    sput-object v0, Lc8/pC;->instance:Lc8/pC;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lc8/pC;->instance:Lc8/pC;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    iget-object v1, p0, Lc8/pC;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    if-nez v1, :cond_0

    .line 34
    const/4 v1, 0x1

    :try_start_0
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android_windvane_config"

    aput-object v2, v0, v1

    .line 35
    .local v0, "mGroupNames":[Ljava/lang/String;
    new-instance v1, Lc8/oC;

    invoke-direct {v1}, Lc8/oC;-><init>()V

    iput-object v1, p0, Lc8/pC;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    .line 36
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    iget-object v2, p0, Lc8/pC;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-virtual {v1, v0, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "mGroupNames":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    iput-object v1, p0, Lc8/pC;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    goto :goto_0
.end method
