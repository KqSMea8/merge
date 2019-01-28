.class public Lc8/Ynb;
.super Ljava/lang/Object;
.source "ALPJumpOpenInfoBuilder.java"


# instance fields
.field private jumpFailParam:Lc8/hob;

.field private jumpParam:Lc8/iob;

.field private linkKey:Ljava/lang/String;

.field private openType:I

.field private urlHandler:Lc8/Znb;


# direct methods
.method public constructor <init>(Lc8/iob;Lc8/hob;ILjava/lang/String;)V
    .locals 1
    .param p1, "jumpParam"    # Lc8/iob;
    .param p2, "jumpFailParam"    # Lc8/hob;
    .param p3, "openType"    # I
    .param p4, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/Ynb;->jumpParam:Lc8/iob;

    .line 32
    iput-object p2, p0, Lc8/Ynb;->jumpFailParam:Lc8/hob;

    .line 33
    iput p3, p0, Lc8/Ynb;->openType:I

    .line 34
    iput-object p4, p0, Lc8/Ynb;->linkKey:Ljava/lang/String;

    .line 35
    new-instance v0, Lc8/Znb;

    invoke-direct {v0, p1}, Lc8/Znb;-><init>(Lc8/iob;)V

    iput-object v0, p0, Lc8/Ynb;->urlHandler:Lc8/Znb;

    .line 36
    return-void
.end method

.method private createOpenInfo(Lc8/wnb;Lc8/iob;ILjava/lang/String;)Lc8/aob;
    .locals 9
    .param p1, "distributionContext"    # Lc8/wnb;
    .param p2, "jumpParam"    # Lc8/iob;
    .param p3, "openType"    # I
    .param p4, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v3, Lc8/aob;

    invoke-direct {v3}, Lc8/aob;-><init>()V

    .line 49
    .local v3, "openInfo":Lc8/aob;
    packed-switch p3, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-object v3

    .line 53
    :pswitch_0
    iget-object v6, p0, Lc8/Ynb;->urlHandler:Lc8/Znb;

    invoke-virtual {v6, p4}, Lc8/Znb;->getDownLoadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "downLoadUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 56
    iput-object v1, v3, Lc8/aob;->url:Ljava/lang/String;

    .line 57
    iget-object v6, v3, Lc8/aob;->actions:Ljava/util/List;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v6, 0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 60
    iget-object v6, p0, Lc8/Ynb;->urlHandler:Lc8/Znb;

    invoke-virtual {v6, p4}, Lc8/Znb;->getNativeUrlAndAction(Ljava/lang/String;)Lc8/bob;

    move-result-object v5

    .line 62
    .local v5, "urlInfo":Lc8/bob;
    new-instance v6, Lc8/unb;

    invoke-direct {v6}, Lc8/unb;-><init>()V

    iput-object v6, v3, Lc8/aob;->deepLinkOpenInfo:Lc8/unb;

    .line 63
    iget-object v7, v3, Lc8/aob;->deepLinkOpenInfo:Lc8/unb;

    iget-object v6, v5, Lc8/bob;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, ""

    :goto_1
    iput-object v6, v7, Lc8/unb;->url:Ljava/lang/String;

    .line 65
    sget-object v6, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v6}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v6

    iget-object v6, v6, Lc8/Fnb;->appScheme:Ljava/util/Map;

    invoke-interface {v6, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Enb;

    .line 66
    .local v4, "schemeInfo":Lc8/Enb;
    if-eqz v4, :cond_1

    .line 67
    iget-object v6, v3, Lc8/aob;->deepLinkOpenInfo:Lc8/unb;

    iget-object v7, v4, Lc8/Enb;->packageName:Ljava/lang/String;

    iput-object v7, v6, Lc8/unb;->packageName:Ljava/lang/String;

    .line 68
    iget-object v6, v3, Lc8/aob;->deepLinkOpenInfo:Lc8/unb;

    invoke-virtual {v4}, Lc8/Enb;->getAction()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/unb;->action:Ljava/lang/String;

    .line 69
    iget-object v6, v3, Lc8/aob;->deepLinkOpenInfo:Lc8/unb;

    iget-object v7, v4, Lc8/Enb;->category:Ljava/util/List;

    iput-object v7, v6, Lc8/unb;->categories:Ljava/util/List;

    .line 72
    :cond_1
    if-eqz p1, :cond_0

    .line 73
    const/4 v6, 0x1

    iput-boolean v6, p1, Lc8/wnb;->failModeToDeeplink:Z

    goto :goto_0

    .line 63
    .end local v4    # "schemeInfo":Lc8/Enb;
    :cond_2
    iget-object v6, v5, Lc8/bob;->url:Ljava/lang/String;

    goto :goto_1

    .line 77
    .end local v5    # "urlInfo":Lc8/bob;
    :cond_3
    const-string/jumbo v6, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v7, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v8, "downloadurl is null"

    invoke-static {v6, v7, v8}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v6, -0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 79
    const/16 v6, 0x132

    iput v6, v3, Lc8/aob;->errCode:I

    goto :goto_0

    .line 86
    .end local v1    # "downLoadUrl":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lc8/Ynb;->jumpFailParam:Lc8/hob;

    iget-object v6, v6, Lc8/hob;->degradeH5Url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lc8/Ynb;->jumpFailParam:Lc8/hob;

    iget-object v2, v6, Lc8/hob;->degradeH5Url:Ljava/lang/String;

    .line 87
    .local v2, "h5Url":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 88
    iput-object v2, v3, Lc8/aob;->url:Ljava/lang/String;

    .line 89
    const/4 v6, 0x0

    iput v6, v3, Lc8/aob;->openType:I

    goto/16 :goto_0

    .line 86
    .end local v2    # "h5Url":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lc8/Ynb;->urlHandler:Lc8/Znb;

    invoke-virtual {v6}, Lc8/Znb;->getH5Url()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 91
    .restart local v2    # "h5Url":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v7, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v8, "h5Url is null"

    invoke-static {v6, v7, v8}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v6, -0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 93
    const/16 v6, 0x133

    iput v6, v3, Lc8/aob;->errCode:I

    goto/16 :goto_0

    .line 100
    .end local v2    # "h5Url":Ljava/lang/String;
    :pswitch_2
    iget-object v6, p0, Lc8/Ynb;->urlHandler:Lc8/Znb;

    invoke-virtual {v6, p4}, Lc8/Znb;->getNativeUrlAndAction(Ljava/lang/String;)Lc8/bob;

    move-result-object v5

    .line 102
    .restart local v5    # "urlInfo":Lc8/bob;
    iget-object v6, v5, Lc8/bob;->url:Ljava/lang/String;

    iput-object v6, v3, Lc8/aob;->url:Ljava/lang/String;

    .line 104
    iget-object v6, v5, Lc8/bob;->actions:Ljava/util/List;

    iput-object v6, v3, Lc8/aob;->actions:Ljava/util/List;

    .line 105
    iget-object v6, v5, Lc8/bob;->categroies:Ljava/util/List;

    iput-object v6, v3, Lc8/aob;->categories:Ljava/util/List;

    .line 106
    const/4 v6, 0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 107
    iget-object v6, v5, Lc8/bob;->packageName:Ljava/lang/String;

    iput-object v6, v3, Lc8/aob;->packageName:Ljava/lang/String;

    .line 110
    invoke-virtual {p2}, Lc8/iob;->canDegrade()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 111
    iget-object v6, p0, Lc8/Ynb;->urlHandler:Lc8/Znb;

    invoke-virtual {v6}, Lc8/Znb;->getH5Url()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lc8/aob;->degradeH5Url:Ljava/lang/String;

    .line 114
    :cond_6
    iget-object v6, v3, Lc8/aob;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    const-string/jumbo v6, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v7, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v8, "native Url is null"

    invoke-static {v6, v7, v8}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v6, -0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 117
    const/16 v6, 0x134

    iput v6, v3, Lc8/aob;->errCode:I

    goto/16 :goto_0

    .line 125
    .end local v5    # "urlInfo":Lc8/bob;
    :pswitch_3
    iget-object v6, p0, Lc8/Ynb;->urlHandler:Lc8/Znb;

    invoke-virtual {v6, p4}, Lc8/Znb;->getNativeUrlAndAction(Ljava/lang/String;)Lc8/bob;

    move-result-object v5

    .line 127
    .restart local v5    # "urlInfo":Lc8/bob;
    iget-object v6, v5, Lc8/bob;->url:Ljava/lang/String;

    iput-object v6, v3, Lc8/aob;->url:Ljava/lang/String;

    .line 129
    iget-object v6, v5, Lc8/bob;->actions:Ljava/util/List;

    iput-object v6, v3, Lc8/aob;->actions:Ljava/util/List;

    .line 130
    iget-object v6, v5, Lc8/bob;->categroies:Ljava/util/List;

    iput-object v6, v3, Lc8/aob;->categories:Ljava/util/List;

    .line 131
    const/4 v6, 0x3

    iput v6, v3, Lc8/aob;->openType:I

    .line 133
    iget-object v6, v3, Lc8/aob;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    const-string/jumbo v6, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v7, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v8, "native Url is null"

    invoke-static {v6, v7, v8}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v6, -0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 136
    const/16 v6, 0x134

    iput v6, v3, Lc8/aob;->errCode:I

    goto/16 :goto_0

    .line 143
    .end local v5    # "urlInfo":Lc8/bob;
    :pswitch_4
    iget-object v6, p0, Lc8/Ynb;->jumpFailParam:Lc8/hob;

    iget-object v6, v6, Lc8/hob;->degradeH5Url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lc8/Ynb;->jumpFailParam:Lc8/hob;

    iget-object v6, v6, Lc8/hob;->degradeH5Url:Ljava/lang/String;

    :goto_3
    iput-object v6, v3, Lc8/aob;->url:Ljava/lang/String;

    .line 144
    iget-object v6, v3, Lc8/aob;->actions:Ljava/util/List;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const/4 v6, 0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 147
    iget-object v6, v3, Lc8/aob;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    const-string/jumbo v6, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v7, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v8, "H5 Url is null"

    invoke-static {v6, v7, v8}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v6, -0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 150
    const/16 v6, 0x133

    iput v6, v3, Lc8/aob;->errCode:I

    goto/16 :goto_0

    .line 143
    :cond_7
    iget-object v6, p0, Lc8/Ynb;->urlHandler:Lc8/Znb;

    invoke-virtual {v6}, Lc8/Znb;->getH5Url()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 157
    :pswitch_5
    sget-object v6, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v6}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v6

    iget-object v6, v6, Lc8/Fnb;->h5Scheme:Ljava/util/Map;

    const-string/jumbo v7, "activity"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, "activity":Ljava/lang/String;
    iput-object v0, v3, Lc8/aob;->url:Ljava/lang/String;

    .line 159
    iget-object v6, v3, Lc8/aob;->actions:Ljava/util/List;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v6, 0x0

    iput v6, v3, Lc8/aob;->openType:I

    .line 162
    iget-object v6, v3, Lc8/aob;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    const-string/jumbo v6, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v7, "ALPJumpOpenInfoBuilder"

    const-string/jumbo v8, "H5 Url is null"

    invoke-static {v6, v7, v8}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v6, -0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 165
    const/16 v6, 0x135

    iput v6, v3, Lc8/aob;->errCode:I

    goto/16 :goto_0

    .line 171
    .end local v0    # "activity":Ljava/lang/String;
    :pswitch_6
    const/4 v6, -0x1

    iput v6, v3, Lc8/aob;->openType:I

    .line 172
    const/16 v6, 0x136

    iput v6, v3, Lc8/aob;->errCode:I

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getOpenInfo(Lc8/wnb;)Lc8/aob;
    .locals 3
    .param p1, "distributionContext"    # Lc8/wnb;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Ynb;->jumpParam:Lc8/iob;

    iget v1, p0, Lc8/Ynb;->openType:I

    iget-object v2, p0, Lc8/Ynb;->linkKey:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lc8/Ynb;->createOpenInfo(Lc8/wnb;Lc8/iob;ILjava/lang/String;)Lc8/aob;

    move-result-object v0

    return-object v0
.end method
