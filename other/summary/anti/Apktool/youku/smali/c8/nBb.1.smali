.class public Lc8/nBb;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lc8/PDb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mBb;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_INTERVAL:J = 0x493e0L

.field private static final DEFAULT_INTERVAL:I = 0x7530

.field private static final ONE_SECOND:I = 0x3e8

.field private static final TAG_BACKGROUND_INTERVAL:Ljava/lang/String; = "bu"

.field private static final TAG_FOREGROUND_INTERVAL:Ljava/lang/String; = "fu"

.field static mInstance:Lc8/nBb;


# instance fields
.field private mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field private mBatchThreshold:J

.field private mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

.field private mCurrentUploadInterval:J

.field private mLeftCount:J

.field private mListener:Lc8/NAb;

.field private mUploadCount:J

.field private mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mUploadTaskTask:Lc8/pBb;

.field private mUserSettingInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lc8/nBb;

    invoke-direct {v0}, Lc8/nBb;-><init>()V

    sput-object v0, Lc8/nBb;->mInstance:Lc8/nBb;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lc8/nBb;->mCurrentUploadInterval:J

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 55
    new-instance v0, Lc8/pBb;

    invoke-direct {v0}, Lc8/pBb;-><init>()V

    iput-object v0, p0, Lc8/nBb;->mUploadTaskTask:Lc8/pBb;

    .line 56
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lc8/nBb;->mBatchThreshold:J

    .line 57
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .line 59
    iput-wide v2, p0, Lc8/nBb;->mUploadCount:J

    .line 60
    iput-wide v2, p0, Lc8/nBb;->mLeftCount:J

    .line 63
    invoke-static {p0}, Lc8/QDb;->registerCallback(Lc8/PDb;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lc8/nBb;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    .locals 1
    .param p0, "x0"    # Lc8/nBb;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    return-object v0
.end method

.method static synthetic access$100(Lc8/nBb;)Lcom/alibaba/analytics/core/sync/UploadMode;
    .locals 1
    .param p0, "x0"    # Lc8/nBb;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    return-object v0
.end method

.method static synthetic access$200(Lc8/nBb;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lc8/nBb;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$202(Lc8/nBb;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lc8/nBb;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$300(Lc8/nBb;)Lc8/pBb;
    .locals 1
    .param p0, "x0"    # Lc8/nBb;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/nBb;->mUploadTaskTask:Lc8/pBb;

    return-object v0
.end method

.method static synthetic access$400(Lc8/nBb;)J
    .locals 2
    .param p0, "x0"    # Lc8/nBb;

    .prologue
    .line 41
    iget-wide v0, p0, Lc8/nBb;->mBatchThreshold:J

    return-wide v0
.end method

.method static synthetic access$500(Lc8/nBb;)J
    .locals 2
    .param p0, "x0"    # Lc8/nBb;

    .prologue
    .line 41
    iget-wide v0, p0, Lc8/nBb;->mUploadCount:J

    return-wide v0
.end method

.method static synthetic access$502(Lc8/nBb;J)J
    .locals 1
    .param p0, "x0"    # Lc8/nBb;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lc8/nBb;->mUploadCount:J

    return-wide p1
.end method

.method static synthetic access$600(Lc8/nBb;)J
    .locals 2
    .param p0, "x0"    # Lc8/nBb;

    .prologue
    .line 41
    iget-wide v0, p0, Lc8/nBb;->mLeftCount:J

    return-wide v0
.end method

.method static synthetic access$700(Lc8/nBb;)J
    .locals 2
    .param p0, "x0"    # Lc8/nBb;

    .prologue
    .line 41
    iget-wide v0, p0, Lc8/nBb;->mCurrentUploadInterval:J

    return-wide v0
.end method

.method static synthetic access$702(Lc8/nBb;J)J
    .locals 1
    .param p0, "x0"    # Lc8/nBb;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lc8/nBb;->mCurrentUploadInterval:J

    return-wide p1
.end method

.method static synthetic access$800(Lc8/nBb;)J
    .locals 2
    .param p0, "x0"    # Lc8/nBb;

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/nBb;->calNextInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method private calNextInterval()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x7530

    const-wide/16 v8, 0x0

    .line 279
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/uBb;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 281
    .local v0, "background":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 282
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v1

    const-string/jumbo v4, "bu"

    invoke-virtual {v1, v4}, Lc8/zzb;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 283
    .local v2, "ret":J
    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 284
    const-wide/32 v2, 0x493e0

    .line 293
    :cond_0
    :goto_1
    return-wide v2

    .line 279
    .end local v0    # "background":Z
    .end local v2    # "ret":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    .restart local v0    # "background":Z
    :cond_2
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v1

    const-string/jumbo v6, "fu"

    invoke-virtual {v1, v6}, Lc8/zzb;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 288
    .restart local v2    # "ret":J
    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 290
    iget-wide v6, p0, Lc8/nBb;->mUserSettingInterval:J

    cmp-long v1, v6, v4

    if-gez v1, :cond_3

    move-wide v2, v4

    :goto_2
    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lc8/nBb;->mUserSettingInterval:J

    goto :goto_2
.end method

.method public static getInstance()Lc8/nBb;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lc8/nBb;->mInstance:Lc8/nBb;

    return-object v0
.end method

.method private readLocalConfig()V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "UTANALYTICS_UPLOAD_ALLOWED_NETWORK_STATUS"

    invoke-static {v1, v2}, Lc8/uBb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "allowUploadNetworkStatusConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const-string/jumbo v1, "ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v1, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string/jumbo v1, "2G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v1, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    .line 104
    :cond_2
    const-string/jumbo v1, "3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v1, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    .line 106
    :cond_3
    const-string/jumbo v1, "4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v1, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    .line 108
    :cond_4
    const-string/jumbo v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v1, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0
.end method

.method private declared-synchronized start(Lcom/alibaba/analytics/core/sync/UploadMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/alibaba/analytics/core/sync/UploadMode;

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "startMode"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    sget-object v0, Lc8/mBb;->$SwitchMap$com$alibaba$analytics$core$sync$UploadMode:[I

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/sync/UploadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 185
    invoke-direct {p0}, Lc8/nBb;->startIntervalMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lc8/nBb;->startRealTimeMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 176
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lc8/nBb;->startBatchMode()V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-direct {p0}, Lc8/nBb;->startLunchMode()V

    goto :goto_0

    .line 182
    :pswitch_3
    invoke-direct {p0}, Lc8/nBb;->startDeveloperMode()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startBatchMode()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lc8/nBb;->mListener:Lc8/NAb;

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mListener:Lc8/NAb;

    invoke-virtual {v0, v1}, Lc8/TAb;->unRegisterChangeListener(Lc8/NAb;)V

    .line 216
    :cond_0
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/gBb;->setIUploadExcuted(Lc8/XAb;)V

    .line 217
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0, v1}, Lc8/gBb;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 218
    new-instance v0, Lc8/jBb;

    invoke-direct {v0, p0}, Lc8/jBb;-><init>(Lc8/nBb;)V

    iput-object v0, p0, Lc8/nBb;->mListener:Lc8/NAb;

    .line 235
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mListener:Lc8/NAb;

    invoke-virtual {v0, v1}, Lc8/TAb;->registerLogChangeListener(Lc8/NAb;)V

    .line 236
    return-void
.end method

.method private startDeveloperMode()V
    .locals 6

    .prologue
    .line 259
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/gBb;->setIUploadExcuted(Lc8/XAb;)V

    .line 260
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lc8/nBb;->mUploadTaskTask:Lc8/pBb;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 261
    return-void
.end method

.method private startIntervalMode()V
    .locals 6

    .prologue
    .line 264
    invoke-direct {p0}, Lc8/nBb;->calNextInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/nBb;->mCurrentUploadInterval:J

    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mCurrentUploadInterval"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lc8/nBb;->mCurrentUploadInterval:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v0

    new-instance v1, Lc8/lBb;

    invoke-direct {v1, p0}, Lc8/lBb;-><init>(Lc8/nBb;)V

    invoke-virtual {v0, v1}, Lc8/gBb;->setIUploadExcuted(Lc8/XAb;)V

    .line 275
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lc8/nBb;->mUploadTaskTask:Lc8/pBb;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 276
    return-void
.end method

.method private startLunchMode()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 239
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/TAb;->count()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/nBb;->mLeftCount:J

    .line 240
    iget-wide v0, p0, Lc8/nBb;->mLeftCount:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 241
    iput-wide v2, p0, Lc8/nBb;->mUploadCount:J

    .line 242
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v0

    new-instance v1, Lc8/kBb;

    invoke-direct {v1, p0}, Lc8/kBb;-><init>(Lc8/nBb;)V

    invoke-virtual {v0, v1}, Lc8/gBb;->setIUploadExcuted(Lc8/XAb;)V

    .line 253
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0, v1}, Lc8/gBb;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 254
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lc8/nBb;->mUploadTaskTask:Lc8/pBb;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 256
    :cond_0
    return-void
.end method

.method private startRealTimeMode()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lc8/nBb;->mListener:Lc8/NAb;

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mListener:Lc8/NAb;

    invoke-virtual {v0, v1}, Lc8/TAb;->unRegisterChangeListener(Lc8/NAb;)V

    .line 195
    :cond_0
    new-instance v0, Lc8/iBb;

    invoke-direct {v0, p0}, Lc8/iBb;-><init>(Lc8/nBb;)V

    iput-object v0, p0, Lc8/nBb;->mListener:Lc8/NAb;

    .line 209
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mListener:Lc8/NAb;

    invoke-virtual {v0, v1}, Lc8/TAb;->registerLogChangeListener(Lc8/NAb;)V

    .line 210
    return-void
.end method


# virtual methods
.method public dispatchHits()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    return-void
.end method

.method public getCurrentMode()Lcom/alibaba/analytics/core/sync/UploadMode;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    return-object v0
.end method

.method public getCurrentUploadInterval()J
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lc8/nBb;->mCurrentUploadInterval:J

    return-wide v0
.end method

.method public onBackground()V
    .locals 4

    .prologue
    .line 298
    invoke-static {}, Lc8/NBb;->d()V

    .line 299
    sget-object v2, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v3, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-ne v2, v3, :cond_0

    .line 300
    invoke-direct {p0}, Lc8/nBb;->calNextInterval()J

    move-result-wide v0

    .line 301
    .local v0, "nextInterval":J
    iget-wide v2, p0, Lc8/nBb;->mCurrentUploadInterval:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0}, Lc8/nBb;->start()V

    .line 305
    .end local v0    # "nextInterval":J
    :cond_0
    return-void
.end method

.method public onForeground()V
    .locals 4

    .prologue
    .line 309
    invoke-static {}, Lc8/NBb;->d()V

    .line 310
    sget-object v2, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v3, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-ne v2, v3, :cond_0

    .line 311
    invoke-direct {p0}, Lc8/nBb;->calNextInterval()J

    move-result-wide v0

    .line 312
    .local v0, "nextInterval":J
    iget-wide v2, p0, Lc8/nBb;->mCurrentUploadInterval:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {p0}, Lc8/nBb;->start()V

    .line 316
    .end local v0    # "nextInterval":J
    :cond_0
    return-void
.end method

.method public setAllowedNetoworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V
    .locals 1
    .param p1, "allowedNetoworkStatus"    # Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .prologue
    .line 163
    iget-object v0, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    if-eq v0, p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lc8/nBb;->start()V

    .line 166
    :cond_0
    iput-object p1, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .line 167
    return-void
.end method

.method public setBatchThreshold(J)V
    .locals 3
    .param p1, "batchThreshold"    # J

    .prologue
    .line 156
    iget-object v0, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->BATCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lc8/nBb;->mBatchThreshold:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lc8/nBb;->start()V

    .line 159
    :cond_0
    iput-wide p1, p0, Lc8/nBb;->mBatchThreshold:J

    .line 160
    return-void
.end method

.method public setMode(Lcom/alibaba/analytics/core/sync/UploadMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/alibaba/analytics/core/sync/UploadMode;

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-eq v0, p1, :cond_0

    .line 133
    iput-object p1, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 134
    invoke-virtual {p0}, Lc8/nBb;->start()V

    goto :goto_0
.end method

.method public setUploadInterval(J)V
    .locals 5
    .param p1, "milSec"    # J

    .prologue
    .line 142
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iput-wide p1, p0, Lc8/nBb;->mUserSettingInterval:J

    .line 146
    invoke-direct {p0}, Lc8/nBb;->calNextInterval()J

    move-result-wide v0

    .line 147
    .local v0, "next":J
    iget-wide v2, p0, Lc8/nBb;->mCurrentUploadInterval:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {p0}, Lc8/nBb;->start()V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/NBb;->d()V

    .line 77
    invoke-direct {p0}, Lc8/nBb;->readLocalConfig()V

    .line 79
    invoke-static {}, Lc8/oBb;->getInstance()Lc8/oBb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oBb;->start()V

    .line 80
    invoke-static {}, Lc8/fBb;->getInstance()Lc8/fBb;

    move-result-object v0

    iget-object v1, p0, Lc8/nBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0, v1}, Lc8/fBb;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 81
    invoke-static {}, Lc8/fBb;->getInstance()Lc8/fBb;

    move-result-object v0

    new-instance v1, Lc8/hBb;

    invoke-direct {v1, p0}, Lc8/hBb;-><init>(Lc8/nBb;)V

    invoke-virtual {v0, v1}, Lc8/fBb;->setIUploadExcuted(Lc8/XAb;)V

    .line 88
    iget-object v0, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    iput-object v0, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 91
    :cond_0
    iget-object v0, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 94
    :cond_1
    iget-object v0, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-direct {p0, v0}, Lc8/nBb;->start(Lcom/alibaba/analytics/core/sync/UploadMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/NBb;->d()V

    .line 119
    iget-object v0, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lc8/nBb;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nBb;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
