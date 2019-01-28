.class public Lc8/Hof;
.super Lc8/yof;
.source "TipsPlugin.java"

# interfaces
.implements Lc8/Gof;


# instance fields
.field protected final ARG1_FLOW_BACK:Ljava/lang/String;

.field protected final BACK_APPKEY:Ljava/lang/String;

.field protected final CURRENT_APPKEY:Ljava/lang/String;

.field protected final CURRENT_VC:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field protected final TARGET_URL:Ljava/lang/String;

.field private alc:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public volatile isShow:Z

.field public openParams:Lcom/taobao/flowcustoms/data/OpenParams;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "*"

    aput-object v1, v0, v2

    const-string/jumbo v1, "tips"

    invoke-direct {p0, v0, v1}, Lc8/yof;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-boolean v2, p0, Lc8/Hof;->isShow:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Hof;->alc:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 36
    const-string/jumbo v0, "currentVC"

    iput-object v0, p0, Lc8/Hof;->CURRENT_VC:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "currentAppkey"

    iput-object v0, p0, Lc8/Hof;->CURRENT_APPKEY:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "backAppkey"

    iput-object v0, p0, Lc8/Hof;->BACK_APPKEY:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "targetUrl"

    iput-object v0, p0, Lc8/Hof;->TARGET_URL:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "mgr_flow_back"

    iput-object v0, p0, Lc8/Hof;->ARG1_FLOW_BACK:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "tipsPlugin"

    iput-object v0, p0, Lc8/Hof;->LOG_TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private registerCallback()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lc8/Hof;->alc:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lc8/Fof;

    invoke-direct {v0, p0}, Lc8/Fof;-><init>(Lc8/Hof;)V

    iput-object v0, p0, Lc8/Hof;->alc:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 94
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    iget-object v1, p0, Lc8/Hof;->alc:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 96
    :cond_0
    return-void
.end method

.method private sendFlowBackHit()V
    .locals 8

    .prologue
    .line 121
    const-string/jumbo v0, ""

    .line 122
    .local v0, "backAppKey":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 123
    .local v6, "targetUrl":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 127
    .local v5, "sourceSDKV":Ljava/lang/String;
    sget-object v7, Lc8/unf;->instance:Lc8/unf;

    iget-object v1, v7, Lc8/unf;->appKey:Ljava/lang/String;

    .line 128
    .local v1, "currentAppkey":Ljava/lang/String;
    const-string/jumbo v3, "1.3.0"

    .line 130
    .local v3, "lmSDKV":Ljava/lang/String;
    iget-object v7, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    if-eqz v7, :cond_0

    .line 131
    iget-object v7, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v5, v7, Lcom/taobao/flowcustoms/data/OpenParams;->sdkVersion:Ljava/lang/String;

    .line 132
    iget-object v7, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v0, v7, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    .line 133
    iget-object v7, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v6, v7, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    .line 136
    :cond_0
    invoke-static {}, Lc8/bpf;->getInstance()Lc8/bpf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/bpf;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "currentVC":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "currentVC"

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v7, "currentAppkey"

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v7, "backAppkey"

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v7, "targetUrl"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v7, "lmSDKV"

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v7, "sourceSDKV"

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v7, "mgr_flow_back"

    invoke-static {v7, v4}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method private showPop(Landroid/app/Activity;Lcom/taobao/flowcustoms/data/OpenParams;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    .line 70
    iget-object v0, p2, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    const-string/jumbo v1, "sku"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p2, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0, p1}, Lc8/Hof;->showPop(Landroid/app/Activity;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hof;->isShow:Z

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hof;->isShow:Z

    .line 78
    invoke-virtual {p0}, Lc8/Hof;->unRegisterCallback()V

    .line 79
    invoke-virtual {p0}, Lc8/Hof;->hildTips()V

    .line 80
    invoke-virtual {p0}, Lc8/Hof;->destoryTips()V

    goto :goto_0
.end method

.method private startThirdApp()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    iget-object v1, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    invoke-static {v0, v1}, Lc8/Bof;->jumpBack(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;)V

    .line 113
    return-void
.end method


# virtual methods
.method public destoryTips()V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lc8/Nof;->getInstance()Lc8/Nof;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Nof;->destroy()V

    .line 164
    return-void
.end method

.method public execute(Landroid/app/Activity;Lcom/taobao/flowcustoms/data/OpenParams;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    .line 59
    iput-object p2, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    .line 61
    invoke-direct {p0, p1, p2}, Lc8/Hof;->showPop(Landroid/app/Activity;Lcom/taobao/flowcustoms/data/OpenParams;)V

    .line 62
    iget-boolean v0, p0, Lc8/Hof;->isShow:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lc8/Hof;->registerCallback()V

    .line 66
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lc8/Hof;->sendFlowBackHit()V

    .line 104
    invoke-direct {p0}, Lc8/Hof;->startThirdApp()V

    .line 105
    invoke-virtual {p0}, Lc8/Hof;->unRegisterCallback()V

    .line 106
    invoke-virtual {p0}, Lc8/Hof;->destoryTips()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hof;->isShow:Z

    .line 108
    return-void
.end method

.method public hildTips()V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lc8/Nof;->getInstance()Lc8/Nof;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Nof;->hideView()V

    .line 160
    return-void
.end method

.method public isShowInActivity(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lc8/Hof;->goBack()V

    .line 193
    return-void
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onTimeOver()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hof;->isShow:Z

    .line 204
    invoke-virtual {p0}, Lc8/Hof;->unRegisterCallback()V

    .line 205
    return-void
.end method

.method public resumeTips(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 153
    iget-object v1, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v0, v1, Lcom/taobao/flowcustoms/data/OpenParams;->appName:Ljava/lang/String;

    .line 154
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->open_oauth_back:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    invoke-static {}, Lc8/Nof;->getInstance()Lc8/Nof;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Nof;->setText(Ljava/lang/String;)Lc8/Nof;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/Nof;->showView(Landroid/app/Activity;)V

    .line 156
    return-void
.end method

.method public setBackGroundColor(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-static {}, Lc8/Nof;->getInstance()Lc8/Nof;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Nof;->setColor(Landroid/content/Context;I)V

    .line 188
    :cond_0
    return-void
.end method

.method public showPop(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    iget-object v5, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v4, v5, Lcom/taobao/flowcustoms/data/OpenParams;->appName:Ljava/lang/String;

    .line 169
    .local v4, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 170
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/youku/phone/R$string;->open_oauth_back:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    .local v0, "serverTime":J
    iget-object v5, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-wide v6, v5, Lcom/taobao/flowcustoms/data/OpenParams;->expireTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    iget-object v5, p0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-wide v6, v5, Lcom/taobao/flowcustoms/data/OpenParams;->expireTime:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    :goto_0
    add-long v2, v0, v6

    .line 178
    .local v2, "time":J
    invoke-static {}, Lc8/Nof;->getInstance()Lc8/Nof;

    move-result-object v5

    invoke-virtual {v5, v4}, Lc8/Nof;->setText(Ljava/lang/String;)Lc8/Nof;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/Nof;->setAliveTime(Ljava/math/BigDecimal;)Lc8/Nof;

    move-result-object v5

    sget-object v6, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->SHOW_ONCE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    invoke-virtual {v5, v6}, Lc8/Nof;->setFloatingType(Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;)Lc8/Nof;

    move-result-object v5

    invoke-virtual {v5, p0}, Lc8/Nof;->setListener(Lc8/Gof;)Lc8/Nof;

    move-result-object v5

    invoke-virtual {v5, p1}, Lc8/Nof;->show(Landroid/app/Activity;)V

    .line 182
    return-void

    .line 176
    .end local v2    # "time":J
    :cond_1
    const-wide/16 v6, 0xa

    goto :goto_0
.end method

.method public unRegisterCallback()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lc8/Hof;->alc:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    iget-object v1, p0, Lc8/Hof;->alc:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Hof;->alc:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 89
    :cond_0
    return-void
.end method
