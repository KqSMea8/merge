.class public Lc8/jCb;
.super Ljava/lang/Object;
.source "UTBuildInfo.java"

# interfaces
.implements Lc8/iCb;


# static fields
.field private static s_instance:Lc8/jCb;

.field private static sdk_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lc8/jCb;->s_instance:Lc8/jCb;

    .line 9
    const-string/jumbo v0, "6.5.1.11"

    sput-object v0, Lc8/jCb;->sdk_version:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/jCb;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lc8/jCb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/jCb;->s_instance:Lc8/jCb;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lc8/jCb;

    invoke-direct {v0}, Lc8/jCb;-><init>()V

    sput-object v0, Lc8/jCb;->s_instance:Lc8/jCb;

    .line 18
    :cond_0
    sget-object v0, Lc8/jCb;->s_instance:Lc8/jCb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBuildID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getFullSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lc8/jCb;->sdk_version:Ljava/lang/String;

    return-object v0
.end method

.method public getGitCommitID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getShortSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lc8/jCb;->sdk_version:Ljava/lang/String;

    return-object v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
