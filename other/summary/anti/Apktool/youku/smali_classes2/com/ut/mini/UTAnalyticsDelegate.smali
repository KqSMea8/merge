.class public final Lcom/ut/mini/UTAnalyticsDelegate;
.super Ljava/lang/Object;
.source "UTAnalyticsDelegate.java"


# static fields
.field private static s_instance:Lcom/ut/mini/UTAnalyticsDelegate;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mDefaultTracker:Lcom/ut/mini/UTTracker;

.field private mTrackerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalyticsDelegate;->mTrackerMap:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/UTAnalyticsDelegate;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/ut/mini/UTAnalyticsDelegate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/mini/UTAnalyticsDelegate;->s_instance:Lcom/ut/mini/UTAnalyticsDelegate;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/ut/mini/UTAnalyticsDelegate;

    invoke-direct {v0}, Lcom/ut/mini/UTAnalyticsDelegate;-><init>()V

    sput-object v0, Lcom/ut/mini/UTAnalyticsDelegate;->s_instance:Lcom/ut/mini/UTAnalyticsDelegate;

    .line 32
    :cond_0
    sget-object v0, Lcom/ut/mini/UTAnalyticsDelegate;->s_instance:Lcom/ut/mini/UTAnalyticsDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public initUT(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ut/mini/UTAnalyticsDelegate;->mApplication:Landroid/app/Application;

    .line 40
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTTeamWork;->initialized()V

    .line 41
    return-void
.end method

.method public saveCacheDataToLocal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/TAb;->store()V

    .line 110
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "aAppVersion"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/uzb;->setAppVersion(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 4
    .param p1, "aChannel"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "channel"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/uzb;->setChannel(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setSessionProperties(Ljava/util/Map;)V
    .locals 1
    .param p1, "aMap"    # Ljava/util/Map;

    .prologue
    .line 113
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/uzb;->setSessionProperties(Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method public transferLog(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/core/UTLogTransferMain;->getInstance()Lcom/ut/mini/core/UTLogTransferMain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/core/UTLogTransferMain;->transferLog(Ljava/util/Map;)V

    .line 98
    return-void
.end method

.method public turnOffRealTimeDebug()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->turnOffRealTimeDebug()V

    .line 106
    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->turnOnDebug()V

    .line 67
    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 1
    .param p1, "aMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/uzb;->turnOnRealTimeDebug(Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public updateSessionProperties(Ljava/util/Map;)V
    .locals 3
    .param p1, "aMap"    # Ljava/util/Map;

    .prologue
    .line 85
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uzb;->getSessionProperties()Ljava/util/Map;

    move-result-object v1

    .line 86
    .local v1, "lOldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "lNewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 93
    :cond_1
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/uzb;->setSessionProperties(Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aUsernick"    # Ljava/lang/String;
    .param p2, "aUserid"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/uzb;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
