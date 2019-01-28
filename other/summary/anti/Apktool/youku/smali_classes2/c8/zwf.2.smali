.class public Lc8/zwf;
.super Ljava/lang/Object;
.source "StatMonitor4Phenix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ywf;
    }
.end annotation


# static fields
.field private static final sImageDecodingListener:Lc8/ywf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lc8/ywf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/ywf;-><init>(Lc8/xwf;)V

    sput-object v0, Lc8/zwf;->sImageDecodingListener:Lc8/ywf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic access$100()Lc8/ywf;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/zwf;->sImageDecodingListener:Lc8/ywf;

    return-object v0
.end method

.method public static setupFlowMonitor(Landroid/content/Context;Lc8/Pwf;I)V
    .locals 2
    .param p0, "app"    # Landroid/content/Context;
    .param p1, "analyzer"    # Lc8/Pwf;
    .param p2, "statCoverage"    # I

    .prologue
    .line 64
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lc8/zwf;->setupFlowMonitor(Landroid/content/Context;Lc8/Pwf;III)V

    .line 65
    return-void
.end method

.method public static setupFlowMonitor(Landroid/content/Context;Lc8/Pwf;II)V
    .locals 1
    .param p0, "app"    # Landroid/content/Context;
    .param p1, "analyzer"    # Lc8/Pwf;
    .param p2, "statCoverage"    # I
    .param p3, "imageWarningSize"    # I

    .prologue
    .line 68
    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0, p3}, Lc8/zwf;->setupFlowMonitor(Landroid/content/Context;Lc8/Pwf;III)V

    .line 69
    return-void
.end method

.method public static setupFlowMonitor(Landroid/content/Context;Lc8/Pwf;III)V
    .locals 8
    .param p0, "app"    # Landroid/content/Context;
    .param p1, "analyzer"    # Lc8/Pwf;
    .param p2, "statCoverage"    # I
    .param p3, "nonCriticalReportCoverage"    # I
    .param p4, "imageWarningSize"    # I

    .prologue
    .line 72
    new-instance v0, Lc8/Twf;

    invoke-direct {v0, p2, p3, p1}, Lc8/Twf;-><init>(IILc8/Pwf;)V

    .line 75
    .local v0, "flowMonitor":Lc8/Twf;
    invoke-static {}, Lc8/Owf;->getInstance()Lc8/Owf;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc8/Twf;->setNavigationInfoObtainer(Lc8/Nwf;)V

    move-object v3, p0

    .line 76
    check-cast v3, Landroid/app/Application;

    invoke-static {}, Lc8/Owf;->getInstance()Lc8/Owf;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 77
    new-instance v3, Lc8/Uwf;

    invoke-direct {v3, p0}, Lc8/Uwf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lc8/Twf;->setNonCriticalErrorReporter(Lc8/Qwf;)V

    .line 78
    if-lez p4, :cond_0

    .line 79
    invoke-virtual {v0, p4}, Lc8/Twf;->setImageWarningSize(I)V

    .line 81
    :cond_0
    invoke-static {v0}, Lc8/nuf;->setForcedDegradationListener(Lc8/luf;)V

    .line 82
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/ixf;->setImageFlowMonitor(Lc8/Ixf;)V

    .line 86
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/ixf;->schedulerBuilder()Lc8/Avf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Avf;->build()Lc8/Oyf;

    move-result-object v2

    .local v2, "supplier":Lc8/Oyf;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lc8/Oyf;->forNetwork()Lc8/Nyf;

    move-result-object v1

    .local v1, "networkScheduler":Lc8/Nyf;
    instance-of v3, v1, Lc8/Iyf;

    if-eqz v3, :cond_1

    .line 87
    check-cast v1, Lc8/Iyf;

    .end local v1    # "networkScheduler":Lc8/Nyf;
    invoke-virtual {v1, v0}, Lc8/Iyf;->setDegradationListener(Lc8/Hyf;)V

    .line 90
    :cond_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v3

    sget-object v4, Lc8/zwf;->sImageDecodingListener:Lc8/ywf;

    invoke-virtual {v3, v4}, Lc8/ixf;->setImageDecodingListener(Lc8/ewf;)V

    .line 92
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v3

    new-instance v4, Lc8/xwf;

    invoke-direct {v4}, Lc8/xwf;-><init>()V

    invoke-virtual {v3, v4}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 106
    const-string/jumbo v3, "StatMonitor4Phenix"

    const-string/jumbo v4, "init stat monitor with sampling=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method
