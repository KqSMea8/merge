.class public Lc8/Tof;
.super Ljava/lang/Object;
.source "AlibcDeviceProbeCompoment.java"

# interfaces
.implements Lc8/Oof;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Rof;,
        Lc8/Sof;
    }
.end annotation


# static fields
.field private static INSTANCE:Lc8/Tof; = null

.field public static final TAG:Ljava/lang/String; = "DeviceProbe"

.field private static appStatusRegister:Lc8/Sof;


# instance fields
.field private deviceInfoStorage:Lc8/Zof;

.field private deviceProbeData:Lc8/Vof;

.field private volatile isInit:Z

.field private volatile isOnFontExecute:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lc8/Tof;->isOnFontExecute:Z

    .line 50
    iput-boolean v0, p0, Lc8/Tof;->isInit:Z

    .line 55
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lc8/Tof;->timer:Ljava/util/Timer;

    .line 63
    invoke-virtual {p0}, Lc8/Tof;->init()V

    .line 64
    return-void
.end method

.method static synthetic access$100(Lc8/Tof;)V
    .locals 0
    .param p0, "x0"    # Lc8/Tof;

    .prologue
    .line 20
    invoke-direct {p0}, Lc8/Tof;->updateDataAndHit()V

    return-void
.end method

.method static synthetic access$202(Lc8/Tof;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Tof;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lc8/Tof;->isOnFontExecute:Z

    return p1
.end method

.method private declared-synchronized checkAndSetData()V
    .locals 4

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/Tof;->deviceInfoStorage:Lc8/Zof;

    invoke-virtual {v1}, Lc8/Zof;->isDataExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const-string/jumbo v1, "DeviceProbe"

    const-string/jumbo v2, "\u526a\u5207\u7248\u6570\u636e\u4e0d\u5b58\u5728,\u8fdb\u884c\u8865\u6570\u636e"

    invoke-static {v1, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lc8/Tof;->deviceProbeData:Lc8/Vof;

    invoke-virtual {v1}, Lc8/Vof;->getDeviceInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 228
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    const-string/jumbo v1, "DeviceProbe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u5e94\u7528\u7684\u6570\u636e\u4e3a:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lc8/Tof;->deviceInfoStorage:Lc8/Zof;

    invoke-virtual {v1, v0}, Lc8/Zof;->setData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lc8/Tof;
    .locals 2

    .prologue
    .line 67
    const-class v1, Lc8/Tof;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Tof;->INSTANCE:Lc8/Tof;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lc8/Tof;

    invoke-direct {v0}, Lc8/Tof;-><init>()V

    sput-object v0, Lc8/Tof;->INSTANCE:Lc8/Tof;

    .line 70
    :cond_0
    sget-object v0, Lc8/Tof;->INSTANCE:Lc8/Tof;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lc8/Vof;

    invoke-direct {v0}, Lc8/Vof;-><init>()V

    iput-object v0, p0, Lc8/Tof;->deviceProbeData:Lc8/Vof;

    .line 116
    new-instance v0, Lc8/Zof;

    invoke-direct {v0}, Lc8/Zof;-><init>()V

    iput-object v0, p0, Lc8/Tof;->deviceInfoStorage:Lc8/Zof;

    .line 118
    iget-object v0, p0, Lc8/Tof;->deviceProbeData:Lc8/Vof;

    new-instance v1, Lc8/Uof;

    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    iget-object v2, v2, Lc8/unf;->appKey:Ljava/lang/String;

    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v3, v3, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v3}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/Uof;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/Vof;->putData(Lc8/Uof;)V

    .line 119
    return-void
.end method

.method private sendUMID()V
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lc8/gpf;->instance:Lc8/gpf;

    new-instance v1, Lc8/Qof;

    invoke-direct {v1, p0}, Lc8/Qof;-><init>(Lc8/Tof;)V

    invoke-virtual {v0, v1}, Lc8/gpf;->postNonUIThread(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public static setAppStatusRegister(Lc8/Sof;)V
    .locals 0
    .param p0, "appStatusRegister"    # Lc8/Sof;

    .prologue
    .line 184
    sput-object p0, Lc8/Tof;->appStatusRegister:Lc8/Sof;

    .line 185
    return-void
.end method

.method private declared-synchronized updateDataAndHit()V
    .locals 7

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lc8/Tof;->deviceInfoStorage:Lc8/Zof;

    invoke-virtual {v4}, Lc8/Zof;->getData()Ljava/util/Map;

    move-result-object v0

    .line 201
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    const-string/jumbo v4, "DeviceProbe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u83b7\u53d6\u5185\u5b58\u4e2d\u7684\u526a\u5207\u677f\u8bbe\u5907\u63a2\u9488\u6570\u636e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v4, p0, Lc8/Tof;->deviceProbeData:Lc8/Vof;

    invoke-virtual {v4, v0}, Lc8/Vof;->updateAndGetDifferData(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, "diffData":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    const-string/jumbo v4, "DeviceProbe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4e0e\u5f53\u524d\u5185\u5b58\u4e2d\u7684\u6570\u636e\u8fdb\u884cdiff:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-eqz v2, :cond_0

    .line 211
    new-instance v1, Lc8/Wof;

    invoke-direct {v1, v2}, Lc8/Wof;-><init>(Ljava/util/List;)V

    .line 212
    .local v1, "deviceProbePoint":Lc8/Wof;
    invoke-virtual {v1}, Lc8/Wof;->send()V

    .line 215
    .end local v1    # "deviceProbePoint":Lc8/Wof;
    :cond_0
    iget-object v4, p0, Lc8/Tof;->deviceProbeData:Lc8/Vof;

    invoke-virtual {v4}, Lc8/Vof;->getDeviceInfoMap()Ljava/util/Map;

    move-result-object v3

    .line 217
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    const-string/jumbo v4, "DeviceProbe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5f53\u524d\u5185\u5b58\u4e2d\u7684\u6570\u636e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lc8/Tof;->deviceInfoStorage:Lc8/Zof;

    invoke-virtual {v4, v3}, Lc8/Zof;->setData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 199
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    .end local v2    # "diffData":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    iget-boolean v0, p0, Lc8/Tof;->isInit:Z

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u8bbe\u5907\u63a2\u9488\u6a21\u5757\u5df2\u7ecf\u521d\u59cb\u5316\u8fc7\u4e86"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u8bbe\u5907\u63a2\u9488\u6a21\u5757\u5f00\u59cb\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lc8/Tof;->initData()V

    .line 88
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Mnf;->enableProbeMatch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0}, Lc8/Tof;->updateDataAndHit()V

    .line 96
    :goto_1
    invoke-virtual {p0}, Lc8/Tof;->registerAppListner()V

    .line 98
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Mnf;->enableProbeUMID()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0}, Lc8/Tof;->sendUMID()V

    .line 105
    :goto_2
    iput-boolean v2, p0, Lc8/Tof;->isInit:Z

    .line 107
    iput-boolean v2, p0, Lc8/Tof;->isOnFontExecute:Z

    .line 109
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u8bbe\u5907\u63a2\u9488\u6a21\u5757\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u914d\u7f6e\u4e3afalse,\u4e0d\u8fdb\u884c\u6570\u636e\u57cb\u70b9\u548c\u526a\u5207\u677f\u64cd\u4f5c"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_2
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u914d\u7f6e\u4e3afalse,\u5173\u95edUMID\u57cb\u70b9"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u524d\u53f0\u5207\u5230\u540e\u53f0"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-boolean v0, p0, Lc8/Tof;->isInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/Tof;->isOnFontExecute:Z

    if-nez v0, :cond_1

    .line 171
    :cond_0
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u6ca1\u6709\u521d\u59cb\u5316\u6216\u8005\u5207\u524d\u53f0\u4e8b\u4ef6\u6ca1\u6709\u5904\u7406\u5b8c,\u76f4\u63a5return"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Mnf;->enableProbeMatch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u914d\u7f6e\u4e3afalse,\u4e0d\u8fdb\u884c\u6570\u636e\u57cb\u70b9\u548c\u526a\u5207\u677f\u64cd\u4f5c"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0}, Lc8/Tof;->checkAndSetData()V

    goto :goto_0
.end method

.method public onFront()V
    .locals 4

    .prologue
    .line 140
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u540e\u53f0\u5207\u5230\u524d\u53f0"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lc8/Tof;->isInit:Z

    if-nez v0, :cond_0

    .line 143
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u8fd8\u6ca1\u6709\u8fdb\u884c\u521d\u59cb\u5316,\u76f4\u63a5\u8fd4\u56de"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Tof;->isOnFontExecute:Z

    .line 151
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Mnf;->enableProbeUMID()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v0}, Lc8/Xof;->hasGetUMIDSuccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u5207\u524d\u53f0,umid\u5f00\u5173\u5df2\u5f00\u542f"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lc8/Tof;->sendUMID()V

    .line 156
    :cond_1
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Mnf;->enableProbeMatch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u914d\u7f6e\u4e3afalse,\u4e0d\u8fdb\u884c\u6570\u636e\u57cb\u70b9\u548c\u526a\u5207\u677f\u64cd\u4f5c"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lc8/Tof;->timer:Ljava/util/Timer;

    new-instance v1, Lc8/Rof;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/Rof;-><init>(Lc8/Tof;Lc8/Qof;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public registerAppListner()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lc8/Tof;->appStatusRegister:Lc8/Sof;

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u4f20\u5165\u4e86register\u5bf9\u8c61,\u8fdb\u884c\u6ce8\u518c"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lc8/Tof;->appStatusRegister:Lc8/Sof;

    invoke-interface {v0, p0}, Lc8/Sof;->register(Lc8/Oof;)V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string/jumbo v0, "DeviceProbe"

    const-string/jumbo v1, "\u91c7\u7528sdk\u7684\u76d1\u542c\u5668\u6ce8\u518c"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lc8/Pof;

    invoke-direct {v0, p0}, Lc8/Pof;-><init>(Lc8/Oof;)V

    sget-object v1, Lc8/unf;->instance:Lc8/unf;

    iget-object v1, v1, Lc8/unf;->application:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lc8/Pof;->init(Landroid/content/Context;)V

    goto :goto_0
.end method
