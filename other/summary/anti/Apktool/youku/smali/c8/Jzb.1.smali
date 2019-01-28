.class public Lc8/Jzb;
.super Lc8/Azb;
.source "UTOrangeConfMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Izb;
    }
.end annotation


# static fields
.field private static final ORANGE_CONFIGS:[Ljava/lang/String;

.field public static final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ut_sample"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ut_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ut_bussiness"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "utap_system"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ap_alarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ap_counter"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ap_stat"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ut_realtime"

    aput-object v2, v0, v1

    sput-object v0, Lc8/Jzb;->ORANGE_CONFIGS:[Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lc8/Jzb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/Azb;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$001(Lc8/Jzb;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/Jzb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lc8/Azb;->updateAndDispatch(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lc8/Jzb;->ORANGE_CONFIGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$201(Lc8/Jzb;)V
    .locals 0
    .param p0, "x0"    # Lc8/Jzb;

    .prologue
    .line 15
    invoke-super {p0}, Lc8/Azb;->init()V

    return-void
.end method

.method static synthetic access$301(Lc8/Jzb;)V
    .locals 0
    .param p0, "x0"    # Lc8/Jzb;

    .prologue
    .line 15
    invoke-super {p0}, Lc8/Azb;->dispatchLocalCacheConfigs()V

    return-void
.end method

.method static synthetic access$401(Lc8/Jzb;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Jzb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lc8/Azb;->deleteDBConfigEntity(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public requestOnlineConfig()V
    .locals 4

    .prologue
    .line 23
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/ctf;->init(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v1

    new-instance v2, Lc8/Izb;

    invoke-direct {v2, p0}, Lc8/Izb;-><init>(Lc8/Jzb;)V

    invoke-virtual {v1, v2}, Lc8/eCb;->submit(Ljava/lang/Runnable;)V

    .line 26
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    sget-object v2, Lc8/Jzb;->ORANGE_CONFIGS:[Ljava/lang/String;

    new-instance v3, Lc8/Hzb;

    invoke-direct {v3, p0}, Lc8/Hzb;-><init>(Lc8/Jzb;)V

    invoke-virtual {v1, v2, v3}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
