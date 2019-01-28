.class public Lc8/dob;
.super Lc8/eob;
.source "ALPNavOpenClient.java"


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private degradeH5Url:Ljava/lang/String;

.field private nativeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/wnb;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "distributionContext"    # Lc8/wnb;
    .param p2, "nativeUrl"    # Ljava/lang/String;
    .param p3, "degradeH5Url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/wnb;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p4, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lc8/eob;-><init>(Lc8/wnb;)V

    .line 40
    iput-object p2, p0, Lc8/dob;->nativeUrl:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lc8/dob;->actions:Ljava/util/List;

    .line 42
    iput-object p5, p0, Lc8/dob;->categories:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lc8/dob;->degradeH5Url:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private sendUserTracePoint(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 112
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-boolean v2, v2, Lc8/wnb;->isAppExist:Z

    if-eqz v2, :cond_0

    .line 114
    new-instance v1, Lc8/Rnb;

    invoke-direct {v1}, Lc8/Rnb;-><init>()V

    .line 115
    .local v1, "flowLostFlyPoint":Lc8/Rnb;
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v2

    iget-object v2, v2, Lc8/job;->appkey:Ljava/lang/String;

    iput-object v2, v1, Lc8/Rnb;->appKey:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->currentVC:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lc8/wob;->getCurrentVC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lc8/Rnb;->currentVC:Ljava/lang/String;

    .line 117
    iput-object p1, v1, Lc8/Rnb;->targetUrl:Ljava/lang/String;

    .line 118
    invoke-static {v1}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 121
    .end local v1    # "flowLostFlyPoint":Lc8/Rnb;
    :cond_0
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->linkKey:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 158
    :cond_1
    :goto_1
    return-void

    .line 116
    .restart local v1    # "flowLostFlyPoint":Lc8/Rnb;
    :cond_2
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->currentVC:Ljava/lang/String;

    goto :goto_0

    .line 128
    .end local v1    # "flowLostFlyPoint":Lc8/Rnb;
    :cond_3
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-boolean v2, v2, Lc8/wnb;->isDegradeToTB:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-boolean v2, v2, Lc8/wnb;->hasSendFailOpenPoint:Z

    if-nez v2, :cond_1

    .line 131
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-boolean v2, v2, Lc8/wnb;->canDegrade:Z

    if-eqz v2, :cond_6

    .line 134
    invoke-static {}, Lc8/Ymb;->getOpenType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 136
    new-instance v0, Lc8/Pnb;

    invoke-direct {v0}, Lc8/Pnb;-><init>()V

    .line 137
    .local v0, "failOpenAppPoint":Lc8/Pnb;
    const-string/jumbo v2, ""

    iput-object v2, v0, Lc8/Pnb;->failStrategy:Ljava/lang/String;

    .line 138
    iput-boolean v3, v0, Lc8/Pnb;->isSuccess:Z

    .line 139
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v2

    iget-object v2, v2, Lc8/job;->appkey:Ljava/lang/String;

    iput-object v2, v0, Lc8/Pnb;->appkey:Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->apiType:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string/jumbo v2, ""

    :goto_2
    iput-object v2, v0, Lc8/Pnb;->apiType:Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->linkKey:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    :goto_3
    iput-object v2, v0, Lc8/Pnb;->clientType:Ljava/lang/String;

    .line 142
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    goto :goto_1

    .line 140
    :cond_4
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->apiType:Ljava/lang/String;

    goto :goto_2

    .line 141
    :cond_5
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->linkKey:Ljava/lang/String;

    goto :goto_3

    .line 147
    .end local v0    # "failOpenAppPoint":Lc8/Pnb;
    :cond_6
    new-instance v0, Lc8/Pnb;

    invoke-direct {v0}, Lc8/Pnb;-><init>()V

    .line 148
    .restart local v0    # "failOpenAppPoint":Lc8/Pnb;
    const-string/jumbo v2, ""

    iput-object v2, v0, Lc8/Pnb;->failStrategy:Ljava/lang/String;

    .line 149
    iput-boolean v3, v0, Lc8/Pnb;->isSuccess:Z

    .line 150
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v2

    iget-object v2, v2, Lc8/job;->appkey:Ljava/lang/String;

    iput-object v2, v0, Lc8/Pnb;->appkey:Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->apiType:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string/jumbo v2, ""

    :goto_4
    iput-object v2, v0, Lc8/Pnb;->apiType:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->linkKey:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string/jumbo v2, ""

    :goto_5
    iput-object v2, v0, Lc8/Pnb;->clientType:Ljava/lang/String;

    .line 153
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    goto/16 :goto_1

    .line 151
    :cond_7
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->apiType:Ljava/lang/String;

    goto :goto_4

    .line 152
    :cond_8
    iget-object v2, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v2, v2, Lc8/wnb;->linkKey:Ljava/lang/String;

    goto :goto_5
.end method

.method private setCallbackInfo(Lc8/wnb;)V
    .locals 6
    .param p1, "distributionContext"    # Lc8/wnb;

    .prologue
    const/4 v5, 0x0

    .line 162
    if-eqz p1, :cond_0

    iget-boolean v4, p1, Lc8/wnb;->isAppExist:Z

    if-nez v4, :cond_1

    .line 163
    :cond_0
    invoke-static {v5}, Lc8/fnb;->setCallbackInfo(Lc8/enb;)V

    .line 182
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v3, p1, Lc8/wnb;->pluginRule:Ljava/lang/String;

    .line 169
    .local v3, "pulginRule":Ljava/lang/String;
    iget-object v2, p1, Lc8/wnb;->packageName:Ljava/lang/String;

    .line 170
    .local v2, "packageName":Ljava/lang/String;
    iget-object v0, p1, Lc8/wnb;->callback:Lc8/gnb;

    .line 172
    .local v0, "callback":Lc8/gnb;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_3

    .line 173
    :cond_2
    invoke-static {v5}, Lc8/fnb;->setCallbackInfo(Lc8/enb;)V

    goto :goto_0

    .line 177
    :cond_3
    new-instance v1, Lc8/enb;

    invoke-direct {v1}, Lc8/enb;-><init>()V

    .line 178
    .local v1, "callbackInfo":Lc8/enb;
    iput-object v0, v1, Lc8/enb;->callback:Lc8/gnb;

    .line 179
    iput-object v2, v1, Lc8/enb;->packageName:Ljava/lang/String;

    .line 180
    iput-object v3, v1, Lc8/enb;->pluginRule:Ljava/lang/String;

    .line 181
    invoke-static {v1}, Lc8/fnb;->setCallbackInfo(Lc8/enb;)V

    goto :goto_0
.end method

.method private showDegradeH5Url(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "degradeH5Url"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lc8/cob;

    iget-object v1, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lc8/cob;-><init>(Lc8/wnb;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 107
    .local v0, "ALPOpenClient":Lc8/eob;
    invoke-virtual {v0, p1}, Lc8/eob;->execute(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method private startDeepLinkIfNecessary(Lc8/wnb;)V
    .locals 6
    .param p1, "context"    # Lc8/wnb;

    .prologue
    .line 186
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-boolean v1, v1, Lc8/wnb;->failModeToDeeplink:Z

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p1, Lc8/wnb;->deepLinkOpenInfo:Lc8/unb;

    .line 195
    .local v0, "deepLinkOpenInfo":Lc8/unb;
    if-nez v0, :cond_2

    .line 196
    const-string/jumbo v1, "ALPNavOpenClient"

    const-string/jumbo v2, "startDeepLinkIfNecessary"

    const-string/jumbo v3, "deeplinkUrl is null"

    invoke-static {v1, v2, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, v0, Lc8/unb;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lc8/unb;->url:Ljava/lang/String;

    iget-object v3, v0, Lc8/unb;->action:Ljava/lang/String;

    iget-object v4, v0, Lc8/unb;->categories:Ljava/util/List;

    iget-object v5, p1, Lc8/wnb;->visa:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lc8/snb;->startDeepLinkIfNecessary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lc8/dob;->nativeUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 51
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    iget-object v6, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-boolean v6, v6, Lc8/wnb;->isAppExist:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v6, v6, Lc8/wnb;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    iget-object v6, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v6, v6, Lc8/wnb;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_0
    iget-object v6, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v6, v6, Lc8/wnb;->visa:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 59
    const-string/jumbo v6, "visa"

    iget-object v7, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v7, v7, Lc8/wnb;->visa:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :cond_1
    iget-object v6, p0, Lc8/dob;->actions:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lc8/dob;->actions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 63
    iget-object v6, p0, Lc8/dob;->actions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 68
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lc8/dob;->categories:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lc8/dob;->categories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 69
    iget-object v6, p0, Lc8/dob;->categories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, "category":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 75
    .end local v1    # "category":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p0, v3, p1}, Lc8/dob;->processIntent(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 76
    const/16 v6, 0x13a

    .line 99
    :goto_2
    return v6

    .line 80
    :cond_6
    const v6, 0x30008000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    iget-object v6, p0, Lc8/dob;->nativeUrl:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lc8/dob;->sendUserTracePoint(Ljava/lang/String;Landroid/content/Context;)V

    .line 87
    iget-object v6, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    invoke-direct {p0, v6}, Lc8/dob;->startDeepLinkIfNecessary(Lc8/wnb;)V

    .line 88
    iget-object v6, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    invoke-direct {p0, v6}, Lc8/dob;->setCallbackInfo(Lc8/wnb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/16 v6, 0xcd

    goto :goto_2

    .line 90
    :catch_0
    move-exception v4

    .line 93
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lc8/dob;->degradeH5Url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 94
    const-string/jumbo v6, "ALPNavOpenClient"

    const-string/jumbo v7, "execute"

    const-string/jumbo v8, "degrade to h5 open"

    invoke-static {v6, v7, v8}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lc8/dob;->degradeH5Url:Ljava/lang/String;

    invoke-direct {p0, p1, v6}, Lc8/dob;->showDegradeH5Url(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 98
    :cond_7
    const-string/jumbo v6, "ALPNavOpenClient"

    const-string/jumbo v7, "execute"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u8df3\u8f6c\u5931\u8d25,\u9519\u8bef\u4fe1\u606f\u4e3a:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/16 v6, 0x131

    goto :goto_2
.end method

.method public processIntent(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    iget-object v3, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v3, v3, Lc8/wnb;->intentProcessor:Lc8/Zmb;

    if-nez v3, :cond_0

    .line 213
    const/4 v3, 0x1

    .line 233
    :goto_0
    return v3

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 218
    .local v0, "componentName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 222
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_2
    :goto_1
    iget-object v3, p0, Lc8/dob;->distributionContext:Lc8/wnb;

    iget-object v3, v3, Lc8/wnb;->intentProcessor:Lc8/Zmb;

    invoke-interface {v3, p1, v1, v0, p2}, Lc8/Zmb;->process(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 225
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 229
    :cond_4
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1
.end method
