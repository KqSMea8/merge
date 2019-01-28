.class public Lc8/AOp;
.super Ljava/lang/Object;
.source "Mtop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xOp;,
        Lc8/zOp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.Mtop"

.field protected static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/AOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final initLock:[B

.field private final initTask:Lc8/pOp;

.field private volatile instanceId:Ljava/lang/String;

.field private volatile isInit:Z

.field private volatile isInited:Z

.field private final mtopConfig:Lc8/kOp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/AOp;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lc8/kOp;)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "mtopConfig"    # Lc8/kOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lc8/AOp;->isInit:Z

    .line 87
    iput-boolean v1, p0, Lc8/AOp;->isInited:Z

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lc8/AOp;->initLock:[B

    .line 96
    iput-object p1, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    .line 98
    invoke-static {p1}, Lc8/rOp;->getMtopInitTask(Ljava/lang/String;)Lc8/pOp;

    move-result-object v0

    iput-object v0, p0, Lc8/AOp;->initTask:Lc8/pOp;

    .line 99
    iget-object v0, p0, Lc8/AOp;->initTask:Lc8/pOp;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMtopInitTask is null,instanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lc8/AOp;)[B
    .locals 1
    .param p0, "x0"    # Lc8/AOp;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/AOp;->initLock:[B

    return-object v0
.end method

.method static synthetic access$100(Lc8/AOp;)V
    .locals 0
    .param p0, "x0"    # Lc8/AOp;

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/AOp;->updateAppKeyIndex()V

    return-void
.end method

.method static synthetic access$200(Lc8/AOp;)Lc8/kOp;
    .locals 1
    .param p0, "x0"    # Lc8/AOp;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    return-object v0
.end method

.method static synthetic access$300(Lc8/AOp;)Lc8/pOp;
    .locals 1
    .param p0, "x0"    # Lc8/AOp;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/AOp;->initTask:Lc8/pOp;

    return-object v0
.end method

.method static synthetic access$400(Lc8/AOp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/AOp;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lc8/AOp;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/AOp;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lc8/AOp;->isInited:Z

    return p1
.end method

.method private declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/AOp;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    if-nez p1, :cond_1

    .line 203
    :try_start_1
    const-string/jumbo v0, "mtopsdk.Mtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [init] The Parameter context can not be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :cond_1
    :try_start_2
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    const-string/jumbo v0, "mtopsdk.Mtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [init] context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ttid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_2
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lc8/kOp;->context:Landroid/content/Context;

    .line 212
    invoke-static {p2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iput-object p2, v0, Lc8/kOp;->ttid:Ljava/lang/String;

    .line 217
    :cond_3
    new-instance v0, Lc8/vOp;

    invoke-direct {v0, p0}, Lc8/vOp;-><init>(Lc8/AOp;)V

    invoke-static {v0}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/AOp;->isInit:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lc8/AOp;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {v0, p0, v0}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;
    .locals 7
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 146
    if-eqz p0, :cond_4

    move-object v1, p0

    .line 147
    .local v1, "id":Ljava/lang/String;
    :goto_0
    sget-object v5, Lc8/AOp;->instanceMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/AOp;

    .line 149
    .local v2, "instance":Lc8/AOp;
    if-nez v2, :cond_2

    .line 150
    const-class v6, Lc8/AOp;

    monitor-enter v6

    .line 151
    :try_start_0
    sget-object v5, Lc8/AOp;->instanceMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lc8/AOp;

    move-object v2, v0

    .line 152
    if-nez v2, :cond_1

    .line 153
    sget-object v5, Lc8/IOp;->mtopConfigMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/kOp;

    .line 154
    .local v4, "mtopConfig":Lc8/kOp;
    if-nez v4, :cond_0

    .line 155
    new-instance v4, Lc8/kOp;

    .end local v4    # "mtopConfig":Lc8/kOp;
    invoke-direct {v4, v1}, Lc8/kOp;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v4    # "mtopConfig":Lc8/kOp;
    :cond_0
    new-instance v3, Lc8/AOp;

    invoke-direct {v3, v1, v4}, Lc8/AOp;-><init>(Ljava/lang/String;Lc8/kOp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v2    # "instance":Lc8/AOp;
    .local v3, "instance":Lc8/AOp;
    :try_start_1
    iput-object v3, v4, Lc8/kOp;->mtopInstance:Lc8/AOp;

    .line 159
    sget-object v5, Lc8/AOp;->instanceMap:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 161
    .end local v3    # "instance":Lc8/AOp;
    .end local v4    # "mtopConfig":Lc8/kOp;
    .restart local v2    # "instance":Lc8/AOp;
    :cond_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :cond_2
    iget-boolean v5, v2, Lc8/AOp;->isInit:Z

    if-nez v5, :cond_3

    .line 165
    invoke-direct {v2, p1, p2}, Lc8/AOp;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    :cond_3
    return-object v2

    .line 146
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "instance":Lc8/AOp;
    :cond_4
    const-string/jumbo v1, "INNER"

    goto :goto_0

    .line 161
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "instance":Lc8/AOp;
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .end local v2    # "instance":Lc8/AOp;
    .restart local v3    # "instance":Lc8/AOp;
    .restart local v4    # "mtopConfig":Lc8/kOp;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "instance":Lc8/AOp;
    .restart local v2    # "instance":Lc8/AOp;
    goto :goto_1
.end method

.method public static setAppKeyIndex(II)V
    .locals 0
    .param p0, "onlineIndex"    # I
    .param p1, "dailyIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    invoke-static {p0, p1}, Lc8/IOp;->setAppKeyIndex(II)V

    .line 401
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "appVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 411
    invoke-static {p0}, Lc8/IOp;->setAppVersion(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public static setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "onlineDomain"    # Ljava/lang/String;
    .param p1, "preDomain"    # Ljava/lang/String;
    .param p2, "dailyDomain"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    invoke-static {p0, p1, p2}, Lc8/IOp;->setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public static setSecurityAppKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "securityAppKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 422
    invoke-static {p0}, Lc8/IOp;->setSecurityAppKey(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private updateAppKeyIndex()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v0, v1, Lc8/kOp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 269
    .local v0, "envMode":Lmtopsdk/mtop/domain/EnvModeEnum;
    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 272
    :cond_0
    sget-object v1, Lc8/xOp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v2, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget v2, v2, Lc8/kOp;->onlineAppKeyIndex:I

    iput v2, v1, Lc8/kOp;->appKeyIndex:I

    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v2, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget v2, v2, Lc8/kOp;->dailyAppkeyIndex:I

    iput v2, v1, Lc8/kOp;->appKeyIndex:I

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "mtopData"    # Lc8/dOp;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 633
    new-instance v0, Lc8/COp;

    invoke-direct {v0, p0, p1, p2}, Lc8/COp;-><init>(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)V

    return-object v0
.end method

.method public build(Ljava/lang/Object;Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "inputDo"    # Ljava/lang/Object;
    .param p2, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 657
    new-instance v0, Lc8/COp;

    invoke-direct {v0, p0, p1, p2}, Lc8/COp;-><init>(Lc8/AOp;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 643
    new-instance v0, Lc8/COp;

    invoke-direct {v0, p0, p1, p2}, Lc8/COp;-><init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public checkMtopSDKInit()Z
    .locals 6

    .prologue
    .line 349
    iget-boolean v1, p0, Lc8/AOp;->isInited:Z

    if-eqz v1, :cond_0

    .line 350
    iget-boolean v1, p0, Lc8/AOp;->isInited:Z

    .line 364
    :goto_0
    return v1

    .line 352
    :cond_0
    iget-object v2, p0, Lc8/AOp;->initLock:[B

    monitor-enter v2

    .line 354
    :try_start_0
    iget-boolean v1, p0, Lc8/AOp;->isInited:Z

    if-nez v1, :cond_1

    .line 355
    iget-object v1, p0, Lc8/AOp;->initLock:[B

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 356
    iget-boolean v1, p0, Lc8/AOp;->isInited:Z

    if-nez v1, :cond_1

    .line 357
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [checkMtopSDKInit]Didn\'t call Mtop.instance(...),please execute global init."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    iget-boolean v1, p0, Lc8/AOp;->isInited:Z

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [checkMtopSDKInit] wait Mtop initLock failed---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "deviceId"

    invoke-static {v0, v1}, Lc8/rQp;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopConfig()Lc8/kOp;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "sid"

    invoke-static {v0, v1}, Lc8/rQp;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "ttid"

    invoke-static {v0, v1}, Lc8/rQp;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "uid"

    invoke-static {v0, v1}, Lc8/rQp;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    const-string/jumbo v0, "utdid"

    invoke-static {v0}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lc8/AOp;->isInited:Z

    return v0
.end method

.method public logSwitch(Z)Lc8/AOp;
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 621
    invoke-static {p1}, Lc8/BMp;->setPrintLog(Z)V

    .line 622
    return-object p0
.end method

.method public logout()Lc8/AOp;
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "sid"

    invoke-static {v0, v1}, Lc8/rQp;->removeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "uid"

    invoke-static {v0, v1}, Lc8/rQp;->removeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    const-string/jumbo v0, "mtopsdk.Mtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [logout] remove sessionInfo succeed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v0, v0, Lc8/kOp;->unitService:Lc8/cPp;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v0, v0, Lc8/kOp;->unitService:Lc8/cPp;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc8/cPp;->setUserId(Ljava/lang/String;)V

    .line 556
    :cond_0
    return-object p0
.end method

.method public registerDeviceId(Ljava/lang/String;)Lc8/AOp;
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .line 504
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iput-object p1, v0, Lc8/kOp;->deviceId:Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "deviceId"

    invoke-static {v0, v1, p1}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    return-object p0
.end method

.method public registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;
    .locals 3
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v1, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v2, "sid"

    invoke-static {v1, v2, p1}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v2, "uid"

    invoke-static {v1, v2, p2}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 453
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string/jumbo v1, " [registerSessionInfo]register sessionInfo succeed: sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string/jumbo v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string/jumbo v1, "mtopsdk.Mtop"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v1, v1, Lc8/kOp;->unitService:Lc8/cPp;

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v1, v1, Lc8/kOp;->unitService:Lc8/cPp;

    invoke-interface {v1, p2}, Lc8/cPp;->setUserId(Ljava/lang/String;)V

    .line 462
    :cond_1
    return-object p0
.end method

.method public registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "ecode"    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p3, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0, p1, p3}, Lc8/AOp;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;

    move-result-object v0

    return-object v0
.end method

.method public registerTtid(Ljava/lang/String;)Lc8/AOp;
    .locals 2
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iput-object p1, v0, Lc8/kOp;->ttid:Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "ttid"

    invoke-static {v0, v1, p1}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v0, v0, Lc8/kOp;->unitService:Lc8/cPp;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v0, v0, Lc8/kOp;->unitService:Lc8/cPp;

    invoke-interface {v0, p1}, Lc8/cPp;->setTtid(Ljava/lang/String;)V

    .line 480
    :cond_0
    return-object p0
.end method

.method public registerUtdid(Ljava/lang/String;)Lc8/AOp;
    .locals 1
    .param p1, "utdid"    # Ljava/lang/String;

    .prologue
    .line 489
    if-eqz p1, :cond_0

    .line 490
    iget-object v0, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iput-object p1, v0, Lc8/kOp;->utdid:Ljava/lang/String;

    .line 491
    const-string/jumbo v0, "utdid"

    invoke-static {v0, p1}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    return-object p0
.end method

.method public removeCacheBlock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "blockName"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v0, v1, Lc8/kOp;->cacheImpl:Lc8/jO;

    .line 580
    .local v0, "cache":Lc8/jO;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc8/jO;->remove(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeCacheItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "blockName"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 604
    invoke-static {p2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    const-string/jumbo v2, "mtopsdk.Mtop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[removeCacheItem] remove CacheItem failed,invalid cacheKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    :goto_0
    return v1

    .line 609
    :cond_1
    iget-object v2, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v0, v2, Lc8/kOp;->cacheImpl:Lc8/jO;

    .line 610
    .local v0, "cache":Lc8/jO;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lc8/jO;->remove(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setCoordinates(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;
    .locals 1
    .param p1, "longitude"    # Ljava/lang/String;
    .param p2, "latitude"    # Ljava/lang/String;

    .prologue
    .line 567
    const-string/jumbo v0, "lng"

    invoke-static {v0, p1}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string/jumbo v0, "lat"

    invoke-static {v0, p2}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-object p0
.end method

.method public switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;
    .locals 4
    .param p1, "envMode"    # Lmtopsdk/mtop/domain/EnvModeEnum;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v1, v1, Lc8/kOp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-ne v1, p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object p0

    .line 299
    :cond_1
    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v1, v1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/uMp;->isApkDebug(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v1, v1, Lc8/kOp;->isAllowSwitchEnv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [switchEnvMode]release package can switch environment only once!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [switchEnvMode]MtopSDK switchEnvMode called.envMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_3
    new-instance v0, Lc8/wOp;

    invoke-direct {v0, p0, p1}, Lc8/wOp;-><init>(Lc8/AOp;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 339
    .local v0, "switchEnvTask":Ljava/lang/Runnable;
    invoke-static {v0}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public unInit()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lc8/AOp;->isInited:Z

    .line 257
    iput-boolean v0, p0, Lc8/AOp;->isInit:Z

    .line 258
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string/jumbo v0, "mtopsdk.Mtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/AOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[unInit] MTOPSDK unInit called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method public unintallCacheBlock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "blockName"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v1, p0, Lc8/AOp;->mtopConfig:Lc8/kOp;

    iget-object v0, v1, Lc8/kOp;->cacheImpl:Lc8/jO;

    .line 592
    .local v0, "cache":Lc8/jO;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc8/jO;->uninstall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
