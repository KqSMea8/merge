.class public Lc8/fff;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eff;
    }
.end annotation


# direct methods
.method private static a(Lc8/yff;)Lc8/Ref;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lc8/yff;->mTBAPIType:Lcom/taobao/applink/a/a;

    sget-object v2, Lcom/taobao/applink/a/a;->a:Lcom/taobao/applink/a/a;

    if-ne v1, v2, :cond_2

    new-instance v0, Lc8/Pef;

    iget-object v1, p0, Lc8/yff;->mListener:Lc8/Tef;

    iget-object v2, p0, Lc8/yff;->linkKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lc8/Pef;-><init>(Lc8/Tef;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lc8/yff;->mTBAPIType:Lcom/taobao/applink/a/a;

    sget-object v2, Lcom/taobao/applink/a/a;->b:Lcom/taobao/applink/a/a;

    if-ne v1, v2, :cond_0

    new-instance v0, Lc8/Sef;

    invoke-direct {v0}, Lc8/Sef;-><init>()V

    goto :goto_0
.end method

.method private static a(ILjava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lc8/tff;->a(ILjava/util/Map;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.tmall.wireless.intent.action.APPLINK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "tmall://page.tm/appLink?"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    const-string/jumbo v3, "com.tmall.wireless"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Lc8/Ref;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lc8/fff;->b(Landroid/content/Context;Landroid/content/Intent;Lc8/Ref;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Lc8/yff;Lc8/Ref;Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lc8/eff;->a:[I

    invoke-virtual {p3}, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-static {p0, v1, p2}, Lc8/fff;->b(Landroid/content/Context;Landroid/content/Intent;Lc8/Ref;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :pswitch_0
    const-string/jumbo v0, "http://huodong.m.taobao.com/go/2085.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lc8/qff;->a()Lc8/uff;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc8/qff;->a()Lc8/uff;

    move-result-object v0

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Lc8/uff;->b(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lc8/bff;->a()Lc8/bff;

    move-result-object v0

    invoke-static {}, Lc8/Eff;->getNoneClientUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jumpfailedmode=download"

    invoke-virtual {v0, v2, v4, v3}, Lc8/bff;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lc8/qff;->a()Lc8/uff;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lc8/qff;->a()Lc8/uff;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Lc8/uff;->b(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lc8/yff;->getH5URL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/Jff;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lc8/yff;->getH5URL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lc8/yff;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/fff;->a(ILjava/util/Map;)V

    invoke-static {}, Lc8/bff;->a()Lc8/bff;

    move-result-object v0

    invoke-static {}, Lc8/Eff;->getNoneClientUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jumpfailedmode=open_h5"

    invoke-virtual {v0, v2, v4, v3}, Lc8/bff;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lc8/qff;->a()Lc8/uff;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lc8/qff;->a()Lc8/uff;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Lc8/uff;->b(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {}, Lc8/bff;->a()Lc8/bff;

    move-result-object v1

    invoke-static {}, Lc8/Eff;->getNoneClientUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jumpfailedmode=none"

    invoke-virtual {v1, v2, v4, v3}, Lc8/bff;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lc8/yff;Lc8/iff;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    const/4 v6, 0x0

    const v5, 0x30008000

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lc8/fff;->a(Lc8/yff;)Lc8/Ref;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p2}, Lc8/Ref;->b(Landroid/content/Context;Lc8/iff;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lc8/Oef;->getInstance()Lc8/Oef;

    move-result-object v2

    iget-object v2, v2, Lc8/Oef;->mJumpFailedMode:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    invoke-static {}, Lc8/bff;->a()Lc8/bff;

    move-result-object v3

    invoke-virtual {v3}, Lc8/bff;->b()Lc8/Zef;

    move-result-object v3

    iget-object v3, v3, Lc8/Zef;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Lc8/fff;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "tmall_scheme"

    iget-object v4, p1, Lc8/yff;->linkKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, p0}, Lc8/yff;->getJumpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tbopen://m.taobao.com/tbopen/index.html?"

    const-string/jumbo v4, "tmall://page.tm/appLink?"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "com.tmall.wireless.intent.action.APPLINK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lc8/bff;->a()Lc8/bff;

    move-result-object v2

    invoke-static {}, Lc8/Eff;->getClientUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc8/yff;->getExtraAplus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Lc8/bff;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lc8/fff;->a(Landroid/content/Context;Landroid/content/Intent;Lc8/Ref;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lc8/yff;->getJumpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v3, "com.taobao.open.intent.action.GETWAY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p1, Lc8/yff;->linkKey:Ljava/lang/String;

    invoke-static {p0, v3}, Lc8/Eff;->isSupportAppLinkSDK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    invoke-virtual {p1}, Lc8/yff;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/fff;->a(ILjava/util/Map;)V

    invoke-static {}, Lc8/bff;->a()Lc8/bff;

    move-result-object v2

    invoke-static {}, Lc8/Eff;->getClientUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc8/yff;->getExtraAplus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Lc8/bff;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lc8/fff;->a(Landroid/content/Context;Landroid/content/Intent;Lc8/Ref;)Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    invoke-static {p0, p1, v1, v2}, Lc8/fff;->a(Landroid/content/Context;Lc8/yff;Lc8/Ref;Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;Lc8/Ref;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_2

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p2}, Lc8/Ref;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p2, v1}, Lc8/Ref;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
