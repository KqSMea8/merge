.class public Lc8/YF;
.super Ljava/lang/Object;
.source "WVMonitorService.java"


# static fields
.field private static configMonitorInterface:Lc8/GF;

.field private static errorMonitor:Lc8/HF;

.field private static jsBridgeMonitor:Lc8/IF;

.field private static packageMonitorInterface:Lc8/aG;

.field private static performanceMonitor:Lc8/cG;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigMonitor()Lc8/GF;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lc8/YF;->configMonitorInterface:Lc8/GF;

    return-object v0
.end method

.method public static getErrorMonitor()Lc8/HF;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lc8/YF;->errorMonitor:Lc8/HF;

    return-object v0
.end method

.method public static getJsBridgeMonitor()Lc8/IF;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lc8/YF;->jsBridgeMonitor:Lc8/IF;

    return-object v0
.end method

.method public static getPackageMonitorInterface()Lc8/aG;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lc8/YF;->packageMonitorInterface:Lc8/aG;

    return-object v0
.end method

.method public static getPerformanceMonitor()Lc8/cG;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lc8/YF;->performanceMonitor:Lc8/cG;

    return-object v0
.end method

.method public static registerConfigMonitor(Lc8/GF;)V
    .locals 0
    .param p0, "configMonitorInterface"    # Lc8/GF;

    .prologue
    .line 25
    sput-object p0, Lc8/YF;->configMonitorInterface:Lc8/GF;

    .line 26
    return-void
.end method

.method public static registerErrorMonitor(Lc8/HF;)V
    .locals 0
    .param p0, "errorMonitor"    # Lc8/HF;

    .prologue
    .line 41
    sput-object p0, Lc8/YF;->errorMonitor:Lc8/HF;

    .line 42
    return-void
.end method

.method public static registerJsBridgeMonitor(Lc8/IF;)V
    .locals 0
    .param p0, "jsBridgeMonitor"    # Lc8/IF;

    .prologue
    .line 49
    sput-object p0, Lc8/YF;->jsBridgeMonitor:Lc8/IF;

    .line 50
    return-void
.end method

.method public static registerPackageMonitorInterface(Lc8/aG;)V
    .locals 0
    .param p0, "packageMonitorInterface"    # Lc8/aG;

    .prologue
    .line 57
    sput-object p0, Lc8/YF;->packageMonitorInterface:Lc8/aG;

    .line 58
    return-void
.end method

.method public static registerPerformanceMonitor(Lc8/cG;)V
    .locals 0
    .param p0, "performanceMonitor"    # Lc8/cG;

    .prologue
    .line 33
    sput-object p0, Lc8/YF;->performanceMonitor:Lc8/cG;

    .line 34
    return-void
.end method
