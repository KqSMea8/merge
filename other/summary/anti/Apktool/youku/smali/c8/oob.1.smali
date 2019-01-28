.class public Lc8/oob;
.super Ljava/lang/Object;
.source "ALPDegradeHandler.java"


# instance fields
.field protected distributionContext:Lc8/wnb;


# direct methods
.method public constructor <init>(Lc8/wnb;)V
    .locals 0
    .param p1, "distributionContext"    # Lc8/wnb;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    .line 26
    return-void
.end method

.method private failModeSelect(ILc8/pob;)V
    .locals 3
    .param p1, "jumpFailMode"    # I
    .param p2, "strategyInfo"    # Lc8/pob;

    .prologue
    const/4 v1, 0x0

    .line 164
    packed-switch p1, :pswitch_data_0

    .line 187
    iput v1, p2, Lc8/pob;->openType:I

    .line 188
    const-string/jumbo v0, "h5"

    .line 193
    .local v0, "failStrategy":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    iget-boolean v1, v1, Lc8/wnb;->hasSendFailOpenPoint:Z

    if-nez v1, :cond_0

    .line 195
    invoke-direct {p0, v0}, Lc8/oob;->sendOpenAppFailPoint(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lc8/wnb;->hasSendFailOpenPoint:Z

    .line 198
    :cond_0
    return-void

    .line 167
    .end local v0    # "failStrategy":Ljava/lang/String;
    :pswitch_0
    iput v1, p2, Lc8/pob;->openType:I

    .line 168
    const-string/jumbo v0, "h5"

    .line 169
    .restart local v0    # "failStrategy":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0    # "failStrategy":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p2, Lc8/pob;->openType:I

    .line 173
    const-string/jumbo v0, "downloadPage"

    .line 174
    .restart local v0    # "failStrategy":Ljava/lang/String;
    goto :goto_0

    .line 177
    .end local v0    # "failStrategy":Ljava/lang/String;
    :pswitch_2
    const/4 v1, -0x1

    iput v1, p2, Lc8/pob;->openType:I

    .line 178
    const-string/jumbo v0, "none"

    .line 179
    .restart local v0    # "failStrategy":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v0    # "failStrategy":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x4

    iput v1, p2, Lc8/pob;->openType:I

    .line 183
    const-string/jumbo v0, "broswer"

    .line 184
    .restart local v0    # "failStrategy":Ljava/lang/String;
    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getNativeStrategyInfo(Lc8/iob;Ljava/lang/String;IIZLc8/pob;)Lc8/pob;
    .locals 3
    .param p1, "jumpParam"    # Lc8/iob;
    .param p2, "linkKey"    # Ljava/lang/String;
    .param p3, "degrateType"    # I
    .param p4, "jumpFailMode"    # I
    .param p5, "isTBJump"    # Z
    .param p6, "strategyInfo"    # Lc8/pob;

    .prologue
    const/4 v2, 0x1

    .line 62
    packed-switch p3, :pswitch_data_0

    .line 78
    iput v2, p6, Lc8/pob;->openType:I

    .line 79
    iput-object p2, p6, Lc8/pob;->linkKey:Ljava/lang/String;

    .line 86
    :goto_0
    iget v0, p6, Lc8/pob;->openType:I

    if-eq v0, v2, :cond_0

    iget v0, p6, Lc8/pob;->openType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lc8/Ymb;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p1, Lc8/iob;->packageName:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lc8/wob;->isSupportAppLinkSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    iget-object v0, v0, Lc8/wnb;->linkKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/oob;->sendUninstallAppPoint(Ljava/lang/String;)V

    .line 95
    if-eqz p5, :cond_4

    sget-boolean v0, Lc8/anb;->isSupportJumpFailedOpenTaobao:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "taobao"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    const-string/jumbo v0, "taobao"

    invoke-direct {p0, v0}, Lc8/oob;->sendOpenAppFailPoint(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    iput-boolean v2, v0, Lc8/wnb;->isDegradeToTB:Z

    .line 104
    iget-object v0, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    iput-boolean v2, v0, Lc8/wnb;->hasSendFailOpenPoint:Z

    .line 107
    :cond_1
    invoke-static {}, Lc8/Ymb;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "taobao"

    invoke-static {v0, v1}, Lc8/wob;->isSupportAppLinkSDK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iput v2, p6, Lc8/pob;->openType:I

    .line 113
    const-string/jumbo v0, "taobao"

    iput-object v0, p6, Lc8/pob;->linkKey:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    const-string/jumbo v1, "taobao"

    iput-object v1, v0, Lc8/wnb;->linkKey:Ljava/lang/String;

    .line 126
    :cond_2
    :goto_1
    return-object p6

    .line 65
    :pswitch_0
    iput v2, p6, Lc8/pob;->openType:I

    .line 66
    iput-object p2, p6, Lc8/pob;->linkKey:Ljava/lang/String;

    goto :goto_0

    .line 70
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p6, Lc8/pob;->openType:I

    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x5

    iput v0, p6, Lc8/pob;->openType:I

    goto :goto_0

    .line 118
    :cond_3
    const-string/jumbo v0, "taobao"

    invoke-direct {p0, v0}, Lc8/oob;->sendUninstallAppPoint(Ljava/lang/String;)V

    .line 123
    :cond_4
    invoke-direct {p0, p4, p6}, Lc8/oob;->failModeSelect(ILc8/pob;)V

    goto :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOpenAppFailPoint(Ljava/lang/String;)V
    .locals 2
    .param p1, "failStrategy"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Lc8/Pnb;

    invoke-direct {v0}, Lc8/Pnb;-><init>()V

    .line 135
    .local v0, "failOpenAppPoint":Lc8/Pnb;
    iget-object v1, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    iget-object v1, v1, Lc8/wnb;->apiType:Ljava/lang/String;

    iput-object v1, v0, Lc8/Pnb;->apiType:Ljava/lang/String;

    .line 136
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v1

    iget-object v1, v1, Lc8/job;->appkey:Ljava/lang/String;

    iput-object v1, v0, Lc8/Pnb;->appkey:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lc8/oob;->distributionContext:Lc8/wnb;

    iget-object v1, v1, Lc8/wnb;->linkKey:Ljava/lang/String;

    iput-object v1, v0, Lc8/Pnb;->clientType:Ljava/lang/String;

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Pnb;->isSuccess:Z

    .line 139
    iput-object p1, v0, Lc8/Pnb;->failStrategy:Ljava/lang/String;

    .line 141
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 143
    return-void
.end method

.method private sendUninstallAppPoint(Ljava/lang/String;)V
    .locals 1
    .param p1, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Lc8/Unb;

    invoke-direct {v0, p1}, Lc8/Unb;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "unInstallAppPoint":Lc8/Unb;
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 155
    .end local v0    # "unInstallAppPoint":Lc8/Unb;
    :cond_0
    return-void
.end method


# virtual methods
.method public getStrategyHandlerInfo(Lc8/iob;IIZ)Lc8/pob;
    .locals 7
    .param p1, "jumpParam"    # Lc8/iob;
    .param p2, "degrateType"    # I
    .param p3, "jumpFailMode"    # I
    .param p4, "isTBJump"    # Z

    .prologue
    .line 30
    new-instance v6, Lc8/pob;

    invoke-direct {v6}, Lc8/pob;-><init>()V

    .line 33
    .local v6, "strategyInfo":Lc8/pob;
    iget-object v0, p1, Lc8/iob;->linkKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lc8/iob;->linkKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v2, "taobao"

    .line 35
    .local v2, "linkKey":Ljava/lang/String;
    :goto_0
    iput-object v2, v6, Lc8/pob;->linkKey:Ljava/lang/String;

    .line 39
    invoke-static {}, Lc8/Ymb;->getOpenType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 49
    invoke-direct/range {v0 .. v6}, Lc8/oob;->getNativeStrategyInfo(Lc8/iob;Ljava/lang/String;IIZLc8/pob;)Lc8/pob;

    move-result-object v6

    .end local v6    # "strategyInfo":Lc8/pob;
    :goto_1
    return-object v6

    .line 33
    .end local v2    # "linkKey":Ljava/lang/String;
    .restart local v6    # "strategyInfo":Lc8/pob;
    :cond_1
    iget-object v0, p1, Lc8/iob;->linkKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 41
    .restart local v2    # "linkKey":Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x4

    iput v0, v6, Lc8/pob;->openType:I

    goto :goto_1

    .line 45
    :pswitch_2
    const/4 v0, 0x0

    iput v0, v6, Lc8/pob;->openType:I

    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
