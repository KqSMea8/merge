.class public final enum Lcom/youku/android/BootMonitorManager;
.super Ljava/lang/Enum;
.source "BootMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aIg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/android/BootMonitorManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/android/BootMonitorManager;

.field private static DEBUG:Z = false

.field public static final MONITOR_KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final MONITOR_KEY_EXPEND_TIME:Ljava/lang/String; = "expendTime"

.field public static final MONITOR_KEY_METHOD:Ljava/lang/String; = "method"

.field public static final MONITOR_MODEL:Ljava/lang/String; = "device_boot"

.field public static final MONITOR_POINT:Ljava/lang/String; = "boot_monitor"

.field public static final enum getInstance:Lcom/youku/android/BootMonitorManager;


# instance fields
.field private appBootStage:Lc8/aIg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/youku/android/BootMonitorManager;

    const-string/jumbo v1, "getInstance"

    invoke-direct {v0, v1, v2}, Lcom/youku/android/BootMonitorManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/android/BootMonitorManager;->getInstance:Lcom/youku/android/BootMonitorManager;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/youku/android/BootMonitorManager;

    sget-object v1, Lcom/youku/android/BootMonitorManager;->getInstance:Lcom/youku/android/BootMonitorManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/youku/android/BootMonitorManager;->$VALUES:[Lcom/youku/android/BootMonitorManager;

    .line 29
    sput-boolean v2, Lcom/youku/android/BootMonitorManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 19
    sget-boolean v0, Lcom/youku/android/BootMonitorManager;->DEBUG:Z

    return v0
.end method

.method public static createStage()Lc8/aIg;
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/youku/android/BootMonitorManager;->createStage(J)Lc8/aIg;

    move-result-object v0

    return-object v0
.end method

.method public static createStage(J)Lc8/aIg;
    .locals 2
    .param p0, "startTime"    # J

    .prologue
    .line 64
    new-instance v0, Lc8/aIg;

    invoke-direct {v0, p0, p1}, Lc8/aIg;-><init>(J)V

    return-object v0
.end method

.method public static registerBootMonitor()V
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "className"

    .line 127
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "method"

    .line 128
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 130
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    const-string/jumbo v3, "expendTime"

    .line 131
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 133
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v2, "device_boot"

    const-string/jumbo v3, "boot_monitor"

    invoke-static {v2, v3, v1, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 134
    return-void
.end method

.method public static submitState(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Lc8/aIg;

    invoke-direct {v0, p0, p1}, Lc8/aIg;-><init>(J)V

    .line 69
    .local v0, "stage":Lc8/aIg;
    invoke-virtual {v0, p2, p3}, Lc8/aIg;->setEndTime(J)V

    .line 70
    invoke-virtual {v0, p4}, Lc8/aIg;->setClassName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p5}, Lc8/aIg;->setMethod(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lc8/aIg;->bootMonitor()V

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/android/BootMonitorManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/youku/android/BootMonitorManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/android/BootMonitorManager;

    return-object v0
.end method

.method public static values()[Lcom/youku/android/BootMonitorManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/youku/android/BootMonitorManager;->$VALUES:[Lcom/youku/android/BootMonitorManager;

    invoke-virtual {v0}, [Lcom/youku/android/BootMonitorManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/android/BootMonitorManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Lcom/youku/android/BootMonitorManager;->createStage()Lc8/aIg;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/android/BootMonitorManager;->appBootStage:Lc8/aIg;

    .line 37
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 39
    .local v0, "app_info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/youku/android/BootMonitorManager;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-void

    .line 39
    .restart local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 43
    .end local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public recordTimeFromBoot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/android/BootMonitorManager;->appBootStage:Lc8/aIg;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/youku/android/BootMonitorManager;->appBootStage:Lc8/aIg;

    invoke-virtual {v0, p1}, Lc8/aIg;->setClassName(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/youku/android/BootMonitorManager;->appBootStage:Lc8/aIg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-fromBoot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/aIg;->setMethod(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/youku/android/BootMonitorManager;->appBootStage:Lc8/aIg;

    invoke-virtual {v0}, Lc8/aIg;->bootMonitor()V

    goto :goto_0
.end method
