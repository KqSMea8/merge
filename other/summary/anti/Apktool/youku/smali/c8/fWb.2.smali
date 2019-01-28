.class public Lc8/fWb;
.super Ljava/lang/Object;
.source "Godeye.java"

# interfaces
.implements Lc8/nWb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eWb;
    }
.end annotation


# static fields
.field private static final ACCS_SERVICE_ID:Ljava/lang/String; = "motu-remote"

.field private static final GODEYE_RES_TYPE:I = 0x2537

.field public static final GODEYE_TAG:Ljava/lang/String; = "Godeye"

.field private static volatile instance:Lc8/fWb;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mBuildId:Ljava/lang/String;

.field private mClientEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/WWb;",
            ">;"
        }
    .end annotation
.end field

.field private mGodeyeCommandManager:Lc8/XVb;

.field private mGodeyeJointPointCenter:Lc8/mWb;

.field private mGodeyeOnDemandCallback:Lc8/oWb;

.field private mGodeyeRemoteCommandCenter:Lc8/YVb;

.field private mInitialized:Z

.field private mIsDebugMode:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/fWb;->mClientEventQueue:Ljava/util/List;

    .line 61
    iput-boolean v1, p0, Lc8/fWb;->mInitialized:Z

    .line 66
    iput-boolean v1, p0, Lc8/fWb;->mIsDebugMode:Z

    .line 77
    return-void
.end method

.method public static sharedInstance()Lc8/fWb;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lc8/fWb;->instance:Lc8/fWb;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lc8/fWb;

    invoke-direct {v0}, Lc8/fWb;-><init>()V

    sput-object v0, Lc8/fWb;->instance:Lc8/fWb;

    .line 85
    :cond_0
    sget-object v0, Lc8/fWb;->instance:Lc8/fWb;

    return-object v0
.end method


# virtual methods
.method public addClientEvent(Lc8/WWb;)V
    .locals 1
    .param p1, "event"    # Lc8/WWb;

    .prologue
    .line 287
    iget-object v0, p0, Lc8/fWb;->mClientEventQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public defaultCommandManager()Lc8/ZVb;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lc8/fWb;->mGodeyeCommandManager:Lc8/XVb;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lc8/XVb;

    iget-object v1, p0, Lc8/fWb;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lc8/XVb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/fWb;->mGodeyeCommandManager:Lc8/XVb;

    .line 223
    :cond_0
    iget-object v0, p0, Lc8/fWb;->mGodeyeCommandManager:Lc8/XVb;

    return-object v0
.end method

.method public defaultGodeyeJointPointCenter()Lc8/mWb;
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lc8/fWb;->mGodeyeJointPointCenter:Lc8/mWb;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lc8/mWb;

    iget-object v1, p0, Lc8/fWb;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lc8/mWb;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lc8/fWb;->mGodeyeJointPointCenter:Lc8/mWb;

    .line 232
    :cond_0
    iget-object v0, p0, Lc8/fWb;->mGodeyeJointPointCenter:Lc8/mWb;

    return-object v0
.end method

.method public bridge synthetic defaultGodeyeJointPointCenter()Lc8/pWb;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lc8/fWb;->defaultGodeyeJointPointCenter()Lc8/mWb;

    move-result-object v0

    return-object v0
.end method

.method public defaultGodeyeRemoteCommandCenter()Lc8/YVb;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lc8/fWb;->mGodeyeRemoteCommandCenter:Lc8/YVb;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lc8/YVb;

    invoke-direct {v0}, Lc8/YVb;-><init>()V

    iput-object v0, p0, Lc8/fWb;->mGodeyeRemoteCommandCenter:Lc8/YVb;

    .line 239
    :cond_0
    iget-object v0, p0, Lc8/fWb;->mGodeyeRemoteCommandCenter:Lc8/YVb;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lc8/fWb;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lc8/fWb;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getRuntimeStatData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v1, "onlineStatData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lc8/msf;->getOnLineStat()Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-result-object v0

    .line 250
    .local v0, "onlineStat":Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    if-eqz v0, :cond_0

    .line 251
    const-string/jumbo v2, "DEVICE_INFO"

    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v2, "PERFORMANCE_INFO"

    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v2, "IO_STAT"

    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->iOStat:Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v2, "CPU_STAT"

    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v2, "TRAFFIC_STAT_INFO"

    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v2, "BATTERY_INFO"

    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    return-object v1
.end method

.method public handleRemoteCommand(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 7
    .param p1, "customCommand"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v5, 0x1

    .line 133
    :try_start_0
    const-string/jumbo v6, "commandSet"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 134
    .local v1, "commandSet":I
    const-string/jumbo v6, "command"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, "command":I
    const-string/jumbo v6, "sequence"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "sequence":Ljava/lang/String;
    new-instance v3, Lc8/OWb;

    const-string/jumbo v6, "data"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-direct {v3, v6}, Lc8/OWb;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 139
    .local v3, "packet":Lc8/OWb;
    const-string/jumbo v6, "sequence"

    invoke-virtual {v3, v6, v4}, Lc8/OWb;->write(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/fWb;->mIsDebugMode:Z

    .line 143
    invoke-virtual {p0}, Lc8/fWb;->defaultGodeyeRemoteCommandCenter()Lc8/YVb;

    move-result-object v6

    invoke-virtual {v6, v1, v0, v3}, Lc8/YVb;->dispatchCommand(IILc8/RWb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "command":I
    .end local v1    # "commandSet":I
    .end local v3    # "packet":Lc8/OWb;
    .end local v4    # "sequence":Ljava/lang/String;
    :goto_0
    return v5

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lc8/fWb;->mApplication:Landroid/app/Application;

    .line 97
    iput-object p2, p0, Lc8/fWb;->mAppId:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lc8/fWb;->mAppVersion:Ljava/lang/String;

    .line 100
    :try_start_0
    invoke-static {p1}, Lc8/DWb;->loadPlugin(Landroid/app/Application;)V

    .line 102
    new-instance v5, Lc8/mWb;

    iget-object v6, p0, Lc8/fWb;->mApplication:Landroid/app/Application;

    invoke-direct {v5, v6}, Lc8/mWb;-><init>(Landroid/app/Application;)V

    iput-object v5, p0, Lc8/fWb;->mGodeyeJointPointCenter:Lc8/mWb;

    .line 103
    invoke-virtual {p0}, Lc8/fWb;->defaultGodeyeRemoteCommandCenter()Lc8/YVb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/YVb;->getCommandControllers()Ljava/util/Set;

    move-result-object v1

    .line 104
    .local v1, "commandControllers":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/mtl/godeye/control/Define$Entry<Lcom/alibaba/mtl/godeye/client/control/AbsCommandController;>;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 105
    const/4 v5, 0x1

    iput-boolean v5, p0, Lc8/fWb;->mIsDebugMode:Z

    .line 106
    iget-object v5, p0, Lc8/fWb;->mGodeyeOnDemandCallback:Lc8/oWb;

    if-eqz v5, :cond_0

    .line 107
    iget-object v5, p0, Lc8/fWb;->mGodeyeOnDemandCallback:Lc8/oWb;

    invoke-virtual {v5}, Lc8/oWb;->doCallback()V

    .line 109
    :cond_0
    new-instance v5, Lc8/eWb;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lc8/eWb;-><init>(Lc8/dWb;)V

    invoke-static {v5}, Lc8/msf;->registerOnAccurateBootListener(Lc8/bsf;)Z

    .line 111
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HWb;

    .line 112
    .local v0, "commandControllerEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<Lcom/alibaba/mtl/godeye/client/control/AbsCommandController;>;"
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/fWb;->defaultCommandManager()Lc8/ZVb;

    move-result-object v6

    invoke-virtual {v0}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/cWb;

    invoke-interface {v6, v5}, Lc8/ZVb;->getRawCommandString(Lc8/cWb;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "rawCommand":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p0}, Lc8/fWb;->defaultGodeyeRemoteCommandCenter()Lc8/YVb;

    move-result-object v6

    invoke-virtual {v0}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/cWb;

    new-instance v7, Lc8/OWb;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lc8/OWb;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v7, v8}, Lc8/YVb;->dispatchCommandInternal(Lc8/cWb;Lc8/RWb;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v0    # "commandControllerEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<Lcom/alibaba/mtl/godeye/client/control/AbsCommandController;>;"
    .end local v1    # "commandControllers":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/mtl/godeye/control/Define$Entry<Lcom/alibaba/mtl/godeye/client/control/AbsCommandController;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "rawCommand":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 118
    .restart local v1    # "commandControllers":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/mtl/godeye/control/Define$Entry<Lcom/alibaba/mtl/godeye/client/control/AbsCommandController;>;>;"
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lc8/fWb;->mInitialized:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lc8/fWb;->mIsDebugMode:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lc8/fWb;->mInitialized:Z

    return v0
.end method

.method public registerCommandController(Lc8/cWb;)V
    .locals 3
    .param p1, "commandController"    # Lc8/cWb;

    .prologue
    .line 126
    invoke-virtual {p0}, Lc8/fWb;->defaultGodeyeRemoteCommandCenter()Lc8/YVb;

    move-result-object v0

    invoke-virtual {p1}, Lc8/cWb;->getCommandSet()I

    move-result v1

    invoke-virtual {p1}, Lc8/cWb;->getCommand()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lc8/YVb;->registerCommandController(IILc8/cWb;)V

    .line 128
    return-void
.end method

.method public response(Lc8/cWb;Lc8/bWb;)V
    .locals 8
    .param p1, "controller"    # Lc8/cWb;
    .param p2, "responseData"    # Lc8/bWb;

    .prologue
    .line 154
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "serialNumber"

    const-string/jumbo v1, "0"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, "taskId"

    const-string/jumbo v1, "0"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v0, "serviceId"

    const-string/jumbo v1, "motu-remote"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    if-nez p2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    .line 166
    :cond_1
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "appId"

    iget-object v2, p0, Lc8/fWb;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "appKey"

    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "appVersion"

    iget-object v2, p0, Lc8/fWb;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "utdid"

    invoke-static {}, Lc8/EHf;->getUTDID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "appBuild"

    iget-object v2, p0, Lc8/fWb;->mBuildId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "commandSet"

    invoke-virtual {p1}, Lc8/cWb;->getCommandSet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "command"

    invoke-virtual {p1}, Lc8/cWb;->getCommand()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "sequence"

    invoke-virtual {p1}, Lc8/cWb;->getCurrentSequence()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "responseCode"

    iget v2, p2, Lc8/bWb;->responseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "responseMessage"

    iget-object v2, p2, Lc8/bWb;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget v0, p2, Lc8/bWb;->responseCode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 185
    invoke-virtual {p0}, Lc8/fWb;->getRuntimeStatData()Ljava/util/Map;

    move-result-object v7

    .line 186
    .local v7, "statData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "statData"

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "clientEventQueue"

    iget-object v2, p0, Lc8/fWb;->mClientEventQueue:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lc8/fWb;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lc8/DWb;->removeAllPlugins(Landroid/app/Application;)V

    .line 192
    .end local v7    # "statData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const/16 v0, 0x2537

    :try_start_0
    iget-object v1, p2, Lc8/bWb;->reason:Ljava/lang/String;

    iget v2, p2, Lc8/bWb;->responseCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p2, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    invoke-static/range {v0 .. v5}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v6

    .line 195
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Godeye"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setBuildId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBuildId"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lc8/fWb;->mBuildId:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setGodeyeOnDemandCallback(Lc8/oWb;)V
    .locals 0
    .param p1, "godeyeOnDemandCallback"    # Lc8/oWb;

    .prologue
    .line 294
    iput-object p1, p0, Lc8/fWb;->mGodeyeOnDemandCallback:Lc8/oWb;

    .line 295
    return-void
.end method

.method public upload(Lc8/cWb;Ljava/lang/String;Lc8/qWb;)V
    .locals 2
    .param p1, "controller"    # Lc8/cWb;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileUploadListener"    # Lc8/qWb;

    .prologue
    .line 203
    invoke-static {}, Lc8/XHf;->getInstance()Lc8/XHf;

    move-result-object v0

    new-instance v1, Lc8/dWb;

    invoke-direct {v1, p0, p3}, Lc8/dWb;-><init>(Lc8/fWb;Lc8/qWb;)V

    invoke-virtual {v0, p2, v1}, Lc8/XHf;->startUpload(Ljava/lang/String;Lc8/PHf;)V

    .line 215
    return-void
.end method
