.class public Lc8/KF;
.super Ljava/lang/Object;
.source "WVLocPerformanceMonitor.java"

# interfaces
.implements Lc8/pH;


# static fields
.field public static final APP_STATUS:I = 0x1

.field public static final LOADURL_STATUS:I = 0x3

.field private static TAG:Ljava/lang/String; = null

.field public static final WEBVIEW_STATUS:I = 0x2

.field private static instance:Lc8/KF;

.field private static isOpenLocPerformanceMonitor:Z


# instance fields
.field public cpu_app:F

.field public cpu_loadurl:F

.field public cpu_webview:F

.field private isInit:Z

.field public mem_app:F

.field public mem_loadurl:F

.field public mem_webview:F

.field private monitorData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private time_load:J

.field private time_load_start:J

.field private time_webview:J

.field private time_webview_start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lc8/KF;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/KF;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lc8/KF;->isOpenLocPerformanceMonitor:Z

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lc8/KF;->instance:Lc8/KF;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lc8/KF;->cpu_app:F

    .line 36
    iput v0, p0, Lc8/KF;->mem_app:F

    .line 42
    iput v0, p0, Lc8/KF;->cpu_webview:F

    .line 43
    iput v0, p0, Lc8/KF;->mem_webview:F

    .line 44
    iput-wide v2, p0, Lc8/KF;->time_webview_start:J

    .line 45
    iput-wide v2, p0, Lc8/KF;->time_webview:J

    .line 51
    iput v0, p0, Lc8/KF;->cpu_loadurl:F

    .line 52
    iput v0, p0, Lc8/KF;->mem_loadurl:F

    .line 53
    iput-wide v2, p0, Lc8/KF;->time_load_start:J

    .line 54
    iput-wide v2, p0, Lc8/KF;->time_load:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/KF;->isInit:Z

    return-void
.end method

.method public static getInstance()Lc8/KF;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lc8/KF;->instance:Lc8/KF;

    if-nez v0, :cond_0

    .line 66
    const-class v1, Lc8/SF;

    monitor-enter v1

    .line 67
    :try_start_0
    new-instance v0, Lc8/KF;

    invoke-direct {v0}, Lc8/KF;-><init>()V

    sput-object v0, Lc8/KF;->instance:Lc8/KF;

    .line 68
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    sget-object v0, Lc8/KF;->instance:Lc8/KF;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isOpenLocPerformanceMonitor()Z
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lc8/KF;->isOpenLocPerformanceMonitor:Z

    return v0
.end method

.method public static setOpenLocPerformanceMonitor(Z)V
    .locals 0
    .param p0, "isOpenLocPerformanceMonitor"    # Z

    .prologue
    .line 178
    sput-boolean p0, Lc8/KF;->isOpenLocPerformanceMonitor:Z

    .line 179
    return-void
.end method


# virtual methods
.method public getMonitorData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lc8/KF;->monitorData:Ljava/util/HashMap;

    return-object v0
.end method

.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 4
    .param p1, "id"    # I
    .param p2, "ctx"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 151
    const/16 v0, 0xbc1

    if-ne v0, p1, :cond_1

    .line 152
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lc8/KF;->setCpuAndMemery(Landroid/content/Context;I)V

    .line 169
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_1
    const/16 v0, 0xbc0

    if-ne v0, p1, :cond_2

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/KF;->time_webview_start:J

    goto :goto_0

    .line 155
    :cond_2
    const/16 v0, 0xbc2

    if-ne v0, p1, :cond_3

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/KF;->time_load_start:J

    .line 157
    iget-wide v0, p0, Lc8/KF;->time_load_start:J

    iget-wide v2, p0, Lc8/KF;->time_webview_start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lc8/KF;->time_webview:J

    .line 158
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lc8/KF;->setCpuAndMemery(Landroid/content/Context;I)V

    goto :goto_0

    .line 159
    :cond_3
    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_4

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/KF;->time_load_start:J

    goto :goto_0

    .line 161
    :cond_4
    const/16 v0, 0x3ea

    if-ne v0, p1, :cond_0

    .line 163
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/KF;->time_load_start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lc8/KF;->time_load:J

    .line 164
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lc8/KF;->setCpuAndMemery(Landroid/content/Context;I)V

    .line 165
    sget-object v0, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lc8/KF;->cpu_app:F

    .line 107
    iput v0, p0, Lc8/KF;->mem_app:F

    .line 108
    iput v0, p0, Lc8/KF;->cpu_webview:F

    .line 109
    iput v0, p0, Lc8/KF;->mem_webview:F

    .line 110
    iput-wide v2, p0, Lc8/KF;->time_webview:J

    .line 111
    iput v0, p0, Lc8/KF;->cpu_loadurl:F

    .line 112
    iput v0, p0, Lc8/KF;->mem_loadurl:F

    .line 113
    iput-wide v2, p0, Lc8/KF;->time_load:J

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/KF;->isInit:Z

    .line 115
    return-void
.end method

.method public setCpuAndMemery(Landroid/content/Context;I)V
    .locals 4
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 75
    invoke-static {}, Lc8/KF;->isOpenLocPerformanceMonitor()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    sget-object v2, Lc8/KF;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u975edebug\u72b6\u6001\uff0c\u4e0d\u5f00\u542f\u6027\u80fd\u6570\u636e\u91c7\u96c6\u6a21\u5f0f"

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v1, 0x0

    .line 80
    .local v1, "rate_cpu":F
    const/4 v0, 0x0

    .line 82
    .local v0, "memory":F
    packed-switch p2, :pswitch_data_0

    .line 99
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/KF;->isInit:Z

    goto :goto_0

    .line 84
    :pswitch_0
    iput v1, p0, Lc8/KF;->cpu_app:F

    .line 85
    iput v0, p0, Lc8/KF;->mem_app:F

    goto :goto_1

    .line 88
    :pswitch_1
    iput v1, p0, Lc8/KF;->cpu_webview:F

    .line 89
    iput v0, p0, Lc8/KF;->mem_webview:F

    goto :goto_1

    .line 92
    :pswitch_2
    iput v1, p0, Lc8/KF;->cpu_loadurl:F

    .line 93
    iput v0, p0, Lc8/KF;->mem_loadurl:F

    goto :goto_1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMonitorData(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/KF;->monitorData:Ljava/util/HashMap;

    .line 142
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lc8/KF;->setCpuAndMemery(Landroid/content/Context;I)V

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 118
    iget-boolean v2, p0, Lc8/KF;->isInit:Z

    if-eqz v2, :cond_0

    .line 120
    :try_start_0
    invoke-static {}, Lc8/KF;->getInstance()Lc8/KF;

    move-result-object v2

    invoke-static {v2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "data":Ljava/lang/String;
    sget-object v2, Lc8/KF;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    sget-object v2, Lc8/KF;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6027\u80fd\u6570\u636e\u91c7\u96c6\u5931\u8d25\uff0cjson\u89e3\u6790\u5f02\u5e38 json \u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_0
    sget-object v2, Lc8/KF;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u6027\u80fd\u6570\u636e\u672a\u521d\u59cb\u5316"

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
