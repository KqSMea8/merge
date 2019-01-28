.class public Lc8/Bof;
.super Ljava/lang/Object;
.source "AlibcPluginUtils.java"


# static fields
.field private static final LINK_PARTNER:Ljava/lang/String; = "linkPartner"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBackUrlIntent(Lcom/taobao/flowcustoms/data/OpenParams;)Landroid/content/Intent;
    .locals 5
    .param p0, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    .line 77
    if-nez p0, :cond_1

    const-string/jumbo v0, ""

    .line 78
    .local v0, "backUrl":Ljava/lang/String;
    :goto_0
    if-nez p0, :cond_2

    const-string/jumbo v2, ""

    .line 80
    .local v2, "packageName":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    const/4 v1, 0x0

    .line 94
    :cond_0
    :goto_2
    return-object v1

    .line 77
    .end local v0    # "backUrl":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    goto :goto_0

    .line 78
    .restart local v0    # "backUrl":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 84
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 85
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v1, "backUrlIntent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    const/high16 v4, 0x20000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public static isSupportLinkPartner(Lcom/taobao/flowcustoms/data/OpenParams;)Z
    .locals 2
    .param p0, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->sdkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->sdkName:Ljava/lang/String;

    const-string/jumbo v1, "linkPartner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jumpBack(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    .line 28
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-static {p1}, Lc8/Bof;->isSupportLinkPartner(Lcom/taobao/flowcustoms/data/OpenParams;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    invoke-static {p0, p1}, Lc8/zof;->jumpBack(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lc8/Bof;->getBackUrlIntent(Lcom/taobao/flowcustoms/data/OpenParams;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, "backIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    invoke-static {}, Lc8/rpf;->getTipsVisa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v0, v3}, Lc8/unf;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "link_manager_plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "class = AlibcPluginUtils \n method = jumpBack \nerrmsg = startActivityError \n e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setResultAndJumpBack(Landroid/app/Activity;Lcom/taobao/flowcustoms/data/OpenParams;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;
    .param p2, "routeRule"    # Ljava/lang/String;
    .param p3, "resultCode"    # I
    .param p4, "result"    # Landroid/os/Bundle;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lc8/Bof;->isSupportLinkPartner(Lcom/taobao/flowcustoms/data/OpenParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lc8/zof;->setResultAndJumpBack(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 58
    :cond_0
    return-void
.end method
