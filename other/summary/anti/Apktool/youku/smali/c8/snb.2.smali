.class public Lc8/snb;
.super Ljava/lang/Object;
.source "ALPDeepLinkCompoment.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "DLI228724"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendDeeplinkUserTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "targetUrl"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "visa"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lc8/Vnb;

    invoke-direct {v0}, Lc8/Vnb;-><init>()V

    .line 44
    .local v0, "deepLinkPoint":Lc8/Vnb;
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v1

    iget-object v1, v1, Lc8/job;->utdid:Ljava/lang/String;

    iput-object v1, v0, Lc8/Vnb;->utdid:Ljava/lang/String;

    .line 45
    iput-object p0, v0, Lc8/Vnb;->targetUrl:Ljava/lang/String;

    .line 46
    iput-object p1, v0, Lc8/Vnb;->targetAppInfo:Ljava/lang/String;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/Vnb;->time:Ljava/lang/String;

    .line 48
    iput-object p2, v0, Lc8/Vnb;->visa:Ljava/lang/String;

    .line 50
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 51
    return-void
.end method

.method public static startDeepLinkIfNecessary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "visa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {}, Lc8/Ymb;->isShouldDeepLink()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v0, Lc8/tnb;

    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v1

    iget-object v1, v1, Lc8/job;->appkey:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/tnb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 36
    .local v0, "deepLinkInfo":Lc8/tnb;
    invoke-static {}, Lc8/Ymb;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lc8/zob;->getClipboardUtils(Landroid/app/Application;)Lc8/zob;

    move-result-object v1

    const-string/jumbo v2, "DLI228724"

    invoke-virtual {v0}, Lc8/tnb;->getJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/zob;->setData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    iget-object v1, v0, Lc8/tnb;->url:Ljava/lang/String;

    iget-object v2, v0, Lc8/tnb;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, p4}, Lc8/snb;->sendDeeplinkUserTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
