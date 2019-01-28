.class public Lc8/zof;
.super Ljava/lang/Object;
.source "AlibcPartnerHelper.java"


# static fields
.field private static final ACTION_LINKPARTNER_ENTRANCE:Ljava/lang/String; = "com.alibaba.intent.action.GETWAY"

.field private static final FORWARD:Ljava/lang/String; = "forward"

.field private static final LINK_INTENT:Ljava/lang/String; = "linkIntent"

.field private static final LINK_PARTNER:Ljava/lang/String; = "linkPartner"

.field private static final PLUGIN_RULES:Ljava/lang/String; = "pluginRules"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final RESULT_CODE:Ljava/lang/String; = "resultCode"

.field private static final SOURCE_PACKAGENAME:Ljava/lang/String; = "sourcePackageName"

.field private static final SOURCE_VC:Ljava/lang/String; = "sourceVC"

.field private static final URL_LINKPARTNER_ENTRANCE:Ljava/lang/String; = "tbopen://linkpartner/entrance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBackUrlIntent(Lcom/taobao/flowcustoms/data/OpenParams;)Landroid/content/Intent;
    .locals 3
    .param p0, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    .line 140
    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "backUrlIntent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    .end local v0    # "backUrlIntent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLinkPartnerIntent(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;
    .param p2, "backUrlIntent"    # Landroid/content/Intent;

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.alibaba.intent.action.GETWAY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "tbopen://linkpartner/entrance"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p1, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_0
    const-string/jumbo v1, "pluginRules"

    const-string/jumbo v2, "forward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v1, "linkIntent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string/jumbo v1, "sourcePackageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string/jumbo v1, "sourceVC"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    return-object v0
.end method

.method private static getLinkPartnerIntent(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;
    .param p2, "routeRules"    # Ljava/lang/String;
    .param p3, "resultCode"    # I
    .param p4, "result"    # Landroid/os/Bundle;

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "tbopen://linkpartner/entrance"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "com.alibaba.intent.action.GETWAY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p1, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :cond_0
    const-string/jumbo v1, "result"

    if-nez p4, :cond_1

    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "result":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string/jumbo v1, "pluginRules"

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    .end local p2    # "routeRules":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string/jumbo v1, "sourcePackageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "sourceVC"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    return-object v0
.end method

.method public static jumpBack(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    .line 46
    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-static {p1}, Lc8/zof;->getBackUrlIntent(Lcom/taobao/flowcustoms/data/OpenParams;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "backIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1, v0}, Lc8/zof;->getLinkPartnerIntent(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 61
    .local v1, "partnerIntent":Landroid/content/Intent;
    :try_start_0
    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    invoke-static {}, Lc8/rpf;->getTipsVisa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v1, v4}, Lc8/unf;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "link_manager_plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "class = AlibcPluginUtils \n method = jumpBack \nerrmsg = startActivityError \n e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setResultAndJumpBack(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;
    .param p2, "routeRule"    # Ljava/lang/String;
    .param p3, "resultCode"    # I
    .param p4, "result"    # Landroid/os/Bundle;

    .prologue
    .line 70
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 72
    invoke-static {p0, p1, p2, p3, p4}, Lc8/zof;->getLinkPartnerIntent(Landroid/content/Context;Lcom/taobao/flowcustoms/data/OpenParams;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "partnerIntent":Landroid/content/Intent;
    :try_start_0
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 76
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "partnerIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 79
    .restart local v0    # "partnerIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "link_manager_plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "class = AlibcPluginUtils \n method = setResultAndJumpBack \nerrmsg = startActivityError \n e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
