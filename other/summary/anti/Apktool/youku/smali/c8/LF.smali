.class public Lc8/LF;
.super Ljava/lang/Object;
.source "WVMonitor.java"


# static fields
.field public static final OPTION_ERROR:I = 0x2

.field public static final OPTION_JSBRIDGE:I = 0x4

.field public static final OPTION_PACKAGEAPP:I = 0x8

.field public static final OPTION_PERFORMANCE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0xf

    invoke-static {v0}, Lc8/LF;->init(I)V

    .line 21
    invoke-static {}, Lc8/SF;->getInstance()Lc8/SF;

    move-result-object v0

    invoke-virtual {v0}, Lc8/SF;->init()V

    .line 22
    return-void
.end method

.method public static init(I)V
    .locals 4
    .param p0, "option"    # I

    .prologue
    .line 25
    new-instance v0, Lc8/XF;

    invoke-direct {v0}, Lc8/XF;-><init>()V

    .line 26
    .local v0, "wvMonitor":Lc8/XF;
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    .line 27
    invoke-static {v0}, Lc8/YF;->registerPerformanceMonitor(Lc8/cG;)V

    .line 29
    invoke-static {v0}, Lc8/YF;->registerConfigMonitor(Lc8/GF;)V

    .line 31
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_1

    .line 32
    invoke-static {v0}, Lc8/YF;->registerErrorMonitor(Lc8/HF;)V

    .line 34
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_2

    .line 35
    new-instance v1, Lc8/JF;

    invoke-direct {v1}, Lc8/JF;-><init>()V

    invoke-static {v1}, Lc8/YF;->registerJsBridgeMonitor(Lc8/IF;)V

    .line 37
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_3

    .line 38
    new-instance v1, Lc8/ZF;

    invoke-direct {v1}, Lc8/ZF;-><init>()V

    invoke-static {v1}, Lc8/YF;->registerPackageMonitorInterface(Lc8/aG;)V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lc8/aG;->uploadStartAppTime(J)V

    .line 43
    :cond_3
    invoke-static {}, Lc8/EF;->init()V

    .line 44
    return-void
.end method
