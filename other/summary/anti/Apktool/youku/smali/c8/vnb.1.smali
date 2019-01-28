.class public Lc8/vnb;
.super Ljava/lang/Object;
.source "ALPDistribution.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStrategy(Lc8/wnb;Lc8/iob;IZZ)Lc8/pob;
    .locals 3
    .param p0, "context"    # Lc8/wnb;
    .param p1, "jumpParam"    # Lc8/iob;
    .param p2, "jumpFailedMode"    # I
    .param p3, "isTBJump"    # Z
    .param p4, "isCallback"    # Z

    .prologue
    .line 164
    new-instance v0, Lc8/oob;

    invoke-direct {v0, p0}, Lc8/oob;-><init>(Lc8/wnb;)V

    .line 165
    .local v0, "degradeHandler":Lc8/oob;
    sget-object v2, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v2}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v2

    iget v2, v2, Lc8/Fnb;->degradeType:I

    invoke-virtual {v0, p1, v2, p2, p3}, Lc8/oob;->getStrategyHandlerInfo(Lc8/iob;IIZ)Lc8/pob;

    move-result-object v1

    .line 167
    .local v1, "strategyInfo":Lc8/pob;
    return-object v1
.end method

.method public static invoke(Landroid/content/Context;Lc8/iob;Lc8/hob;Lc8/gnb;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jumpParam"    # Lc8/iob;
    .param p2, "jumpFailParam"    # Lc8/hob;
    .param p3, "jumpCallback"    # Lc8/gnb;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lc8/vnb;->invoke(Landroid/content/Context;Lc8/iob;Lc8/hob;ZLc8/gnb;)I

    move-result v0

    return v0
.end method

.method public static invoke(Landroid/content/Context;Lc8/iob;Lc8/hob;ZLc8/gnb;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jumpParam"    # Lc8/iob;
    .param p2, "jumpFailParam"    # Lc8/hob;
    .param p3, "isTBJump"    # Z
    .param p4, "callback"    # Lc8/gnb;

    .prologue
    const/4 v9, 0x1

    .line 36
    invoke-static {}, Lc8/anb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const/16 v0, 0x12c

    .line 98
    :goto_0
    return v0

    .line 41
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 42
    :cond_1
    const-string/jumbo v0, "ALPDistribution"

    const-string/jumbo v1, "invoke"

    const-string/jumbo v3, "activity / jumpParam is null"

    invoke-static {v0, v1, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/16 v0, 0x138

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1}, Lc8/iob;->checkParam()Z

    move-result v0

    if-nez v0, :cond_3

    .line 48
    const-string/jumbo v0, "ALPDistribution"

    const-string/jumbo v1, "invoke"

    const-string/jumbo v3, "jumpParam.checkParam fail"

    invoke-static {v0, v1, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/16 v0, 0x12e

    goto :goto_0

    .line 53
    :cond_3
    if-nez p2, :cond_4

    .line 54
    new-instance p2, Lc8/hob;

    .end local p2    # "jumpFailParam":Lc8/hob;
    invoke-direct {p2}, Lc8/hob;-><init>()V

    .line 63
    .restart local p2    # "jumpFailParam":Lc8/hob;
    :cond_4
    new-instance v2, Lc8/wnb;

    invoke-static {}, Lc8/Ymb;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v2, v0}, Lc8/wnb;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, "distributionContext":Lc8/wnb;
    iget-object v4, p1, Lc8/iob;->pluginRules:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lc8/vnb;->setParam(Landroid/content/Context;Lc8/iob;Lc8/wnb;Lc8/hob;Ljava/lang/String;Lc8/gnb;)V

    .line 73
    iget v0, p2, Lc8/hob;->mode:I

    invoke-virtual {p1}, Lc8/iob;->isCallbackMode()Z

    move-result v1

    invoke-static {v2, p1, v0, p3, v1}, Lc8/vnb;->getStrategy(Lc8/wnb;Lc8/iob;IZZ)Lc8/pob;

    move-result-object v8

    .line 76
    .local v8, "strategyInfo":Lc8/pob;
    if-eqz v8, :cond_6

    iget v0, v8, Lc8/pob;->openType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, v8, Lc8/pob;->openType:I

    if-ne v0, v9, :cond_6

    .line 78
    :cond_5
    iput-boolean v9, v2, Lc8/wnb;->isAppExist:Z

    .line 86
    :cond_6
    new-instance v6, Lc8/Ynb;

    iget v0, v8, Lc8/pob;->openType:I

    iget-object v1, v8, Lc8/pob;->linkKey:Ljava/lang/String;

    invoke-direct {v6, p1, p2, v0, v1}, Lc8/Ynb;-><init>(Lc8/iob;Lc8/hob;ILjava/lang/String;)V

    .line 87
    .local v6, "jumpOpenAPI":Lc8/Ynb;
    invoke-virtual {v6, v2}, Lc8/Ynb;->getOpenInfo(Lc8/wnb;)Lc8/aob;

    move-result-object v7

    .line 88
    .local v7, "openInfo":Lc8/aob;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lc8/aob;->isOpenErrror()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    :cond_7
    const-string/jumbo v0, "ALPDistribution"

    const-string/jumbo v1, "invoke"

    const-string/jumbo v3, "openInfo is null / open error"

    invoke-static {v0, v1, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-nez v7, :cond_8

    const/16 v0, 0x137

    goto/16 :goto_0

    :cond_8
    iget v0, v7, Lc8/aob;->errCode:I

    goto/16 :goto_0

    .line 95
    :cond_9
    invoke-static {v2, v7}, Lc8/vnb;->setOpenInfo(Lc8/wnb;Lc8/aob;)V

    .line 98
    invoke-static {p0, v2}, Lc8/vnb;->startDistribution(Landroid/content/Context;Lc8/wnb;)I

    move-result v0

    goto/16 :goto_0
.end method

.method private static setOpenInfo(Lc8/wnb;Lc8/aob;)V
    .locals 1
    .param p0, "distributionContext"    # Lc8/wnb;
    .param p1, "openInfo"    # Lc8/aob;

    .prologue
    .line 110
    iget-object v0, p1, Lc8/aob;->url:Ljava/lang/String;

    iput-object v0, p0, Lc8/wnb;->url:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lc8/aob;->actions:Ljava/util/List;

    iput-object v0, p0, Lc8/wnb;->actions:Ljava/util/List;

    .line 112
    iget v0, p1, Lc8/aob;->openType:I

    iput v0, p0, Lc8/wnb;->openType:I

    .line 113
    iget-object v0, p1, Lc8/aob;->categories:Ljava/util/List;

    iput-object v0, p0, Lc8/wnb;->categories:Ljava/util/List;

    .line 114
    iget-object v0, p1, Lc8/aob;->degradeH5Url:Ljava/lang/String;

    iput-object v0, p0, Lc8/wnb;->degradeH5Url:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lc8/aob;->deepLinkOpenInfo:Lc8/unb;

    iput-object v0, p0, Lc8/wnb;->deepLinkOpenInfo:Lc8/unb;

    .line 116
    iget-object v0, p0, Lc8/wnb;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p1, Lc8/aob;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lc8/wnb;->packageName:Ljava/lang/String;

    .line 119
    :cond_0
    return-void
.end method

.method private static setParam(Landroid/content/Context;Lc8/iob;Lc8/wnb;Lc8/hob;Ljava/lang/String;Lc8/gnb;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jumpParam"    # Lc8/iob;
    .param p2, "distributionContext"    # Lc8/wnb;
    .param p3, "jumpFailParam"    # Lc8/hob;
    .param p4, "pluginRules"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/gnb;

    .prologue
    .line 127
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v2, p3, Lc8/hob;->webView:Landroid/webkit/WebView;

    iput-object v2, p2, Lc8/wnb;->degradeWebview:Landroid/webkit/WebView;

    .line 131
    iget-object v2, p3, Lc8/hob;->failureListener:Lc8/gob;

    iput-object v2, p2, Lc8/wnb;->failureListener:Lc8/gob;

    .line 134
    invoke-virtual {p1}, Lc8/iob;->getModule()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    :goto_1
    iput-object v2, p2, Lc8/wnb;->module:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lc8/iob;->getAPIType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string/jumbo v2, ""

    :goto_2
    iput-object v2, p2, Lc8/wnb;->apiType:Ljava/lang/String;

    .line 136
    iget-object v2, p1, Lc8/iob;->linkKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lc8/iob;->linkKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    const-string/jumbo v2, "taobao"

    :goto_3
    iput-object v2, p2, Lc8/wnb;->linkKey:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lc8/iob;->canDegrade()Z

    move-result v2

    iput-boolean v2, p2, Lc8/wnb;->canDegrade:Z

    .line 138
    iget-object v2, p1, Lc8/iob;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 139
    iget-object v2, p1, Lc8/iob;->packageName:Ljava/lang/String;

    iput-object v2, p2, Lc8/wnb;->packageName:Ljava/lang/String;

    .line 142
    :cond_3
    iget-object v2, p1, Lc8/iob;->visa:Ljava/lang/String;

    iput-object v2, p2, Lc8/wnb;->visa:Ljava/lang/String;

    .line 143
    iget-object v2, p1, Lc8/iob;->intentProcessor:Lc8/Zmb;

    iput-object v2, p2, Lc8/wnb;->intentProcessor:Lc8/Zmb;

    .line 146
    iput-object p4, p2, Lc8/wnb;->pluginRule:Ljava/lang/String;

    .line 147
    iput-object p5, p2, Lc8/wnb;->callback:Lc8/gnb;

    .line 150
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lc8/mob;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 151
    check-cast v1, Lc8/mob;

    .line 152
    .local v1, "tbJumpParam":Lc8/mob;
    invoke-virtual {v1}, Lc8/mob;->getExtraParams()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "sourceVC"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 153
    invoke-static {p0}, Lc8/wob;->getCurrentVC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "sourceVC":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {v1}, Lc8/mob;->getExtraParams()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "sourceVC"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v0    # "sourceVC":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lc8/mob;->getExtraParams()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "sourceVC"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p2, Lc8/wnb;->currentVC:Ljava/lang/String;

    goto/16 :goto_0

    .line 134
    .end local v1    # "tbJumpParam":Lc8/mob;
    :cond_5
    invoke-virtual {p1}, Lc8/iob;->getModule()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 135
    :cond_6
    invoke-virtual {p1}, Lc8/iob;->getAPIType()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 136
    :cond_7
    iget-object v2, p1, Lc8/iob;->linkKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method private static startDistribution(Landroid/content/Context;Lc8/wnb;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "distributionContext"    # Lc8/wnb;

    .prologue
    .line 122
    invoke-static {p0, p1}, Lc8/fob;->openUrl(Landroid/content/Context;Lc8/wnb;)I

    move-result v0

    return v0
.end method
