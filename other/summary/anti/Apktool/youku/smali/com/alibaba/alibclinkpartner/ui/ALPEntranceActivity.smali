.class public Lcom/alibaba/alibclinkpartner/ui/ALPEntranceActivity;
.super Landroid/app/Activity;
.source "ALPEntranceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkParam(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendUserTracePoint(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    new-instance v0, Lc8/Qnb;

    invoke-direct {v0}, Lc8/Qnb;-><init>()V

    .line 76
    .local v0, "flowGetPassPoint":Lc8/Qnb;
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v2

    iget-object v2, v2, Lc8/job;->appkey:Ljava/lang/String;

    iput-object v2, v0, Lc8/Qnb;->currentAppkey:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/ui/ALPEntranceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/Qnb;->currentPN:Ljava/lang/String;

    .line 78
    const-string/jumbo v2, "sourceVC"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/Qnb;->sourceVC:Ljava/lang/String;

    .line 79
    const-string/jumbo v2, "linkIntent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 80
    .local v1, "sourceIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/Qnb;->targetUrl:Ljava/lang/String;

    .line 83
    :cond_0
    const-string/jumbo v2, "sourcePackageName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/Qnb;->sourcePN:Ljava/lang/String;

    .line 84
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 85
    return-void
.end method

.method private startNewActivity(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/alibclinkpartner/ui/ALPEntranceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ALPEntranceActivity"

    const-string/jumbo v2, "startNewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivityError t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/ui/ALPEntranceActivity;->finish()V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/ui/ALPEntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/ui/ALPEntranceActivity;->checkParam(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    const-string/jumbo v4, "ALPEntranceActivity"

    const-string/jumbo v5, "onCreate"

    const-string/jumbo v6, " check intent fail,param miss"

    invoke-static {v4, v5, v6}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/ui/ALPEntranceActivity;->sendUserTracePoint(Landroid/content/Intent;)V

    .line 40
    const-string/jumbo v4, "pluginRules"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "routeRule":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v4, "forward"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    const-string/jumbo v4, "linkIntent"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/alibaba/alibclinkpartner/ui/ALPEntranceActivity;->startNewActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :cond_1
    if-eqz v3, :cond_2

    .line 48
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "resultCode"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, "resultCode":I
    const-string/jumbo v4, "sourcePackageName"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "packagaeName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lc8/fnb;->executeCallback(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 52
    .end local v1    # "packagaeName":Ljava/lang/String;
    .end local v2    # "resultCode":I
    :cond_2
    const-string/jumbo v4, "ALPEntranceActivity"

    const-string/jumbo v5, "onCreate"

    const-string/jumbo v6, " module is null"

    invoke-static {v4, v5, v6}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
