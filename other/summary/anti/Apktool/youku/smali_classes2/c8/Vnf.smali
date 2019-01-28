.class public Lc8/Vnf;
.super Ljava/lang/Object;
.source "DeeplinkCompoment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wnf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckConfigAndStartRouteTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lc8/Vnf;->context:Landroid/content/Context;

    .line 241
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v0, p0, Lc8/Vnf;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-static {}, Lc8/Wnf;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lc8/Vnf;->context:Landroid/content/Context;

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v1

    iget-object v1, v1, Lc8/Tnf;->appKey:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Tnf;->getVisa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/aof;->sendDeepLinkOverPoint(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    const-string/jumbo v0, "LinkManagerSDK"

    const-string/jumbo v1, "DeeplinkCompoment:executeDeeplink config fetch is false"

    invoke-static {v0, v1}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v4}, Lc8/Wnf;->access$102(Lc8/Tnf;)Lc8/Tnf;

    goto :goto_0

    .line 260
    :cond_1
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Mnf;->canDeepLink()Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Lc8/Vnf;->context:Landroid/content/Context;

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v1

    iget-object v1, v1, Lc8/Tnf;->appKey:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Tnf;->getVisa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/aof;->sendDeepLinkOverPoint(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    const-string/jumbo v0, "LinkManagerSDK"

    const-string/jumbo v1, "DeeplinkCompoment:executeDeeplink config candeeplink is false"

    invoke-static {v0, v1}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {v4}, Lc8/Wnf;->access$102(Lc8/Tnf;)Lc8/Tnf;

    goto :goto_0

    .line 267
    :cond_2
    const-string/jumbo v0, "LinkManagerSDK"

    const-string/jumbo v1, "\u914d\u7f6e\u5224\u65ad\u53ef\u4ee5\u6267\u884cdeeplink"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lc8/Vnf;->context:Landroid/content/Context;

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v1

    iget-wide v2, v1, Lc8/Tnf;->currentTime:J

    invoke-static {v0, v2, v3}, Lc8/Ynf;->checkExpiredTime(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    iget-object v0, p0, Lc8/Vnf;->context:Landroid/content/Context;

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v1

    iget-object v1, v1, Lc8/Tnf;->appKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Tnf;->getVisa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/aof;->sendDeepLinkOverPoint(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    const-string/jumbo v0, "LinkManagerSDK"

    const-string/jumbo v1, "DeeplinkCompoment:executeDeeplink config candeeplink is false"

    invoke-static {v0, v1}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {v4}, Lc8/Wnf;->access$102(Lc8/Tnf;)Lc8/Tnf;

    goto/16 :goto_0

    .line 277
    :cond_3
    const-string/jumbo v0, "LinkManagerSDK"

    const-string/jumbo v1, "\u65f6\u95f4\u6ca1\u6709\u8fc7\u671f,\u6267\u884cdeeplink\u903b\u8f91"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lc8/Vnf;->context:Landroid/content/Context;

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Ynf;->startRoute(Landroid/content/Context;Lc8/Tnf;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lc8/Vnf;->context:Landroid/content/Context;

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v1

    iget-object v1, v1, Lc8/Tnf;->appKey:Ljava/lang/String;

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v2

    iget-object v2, v2, Lc8/Tnf;->url:Ljava/lang/String;

    invoke-static {}, Lc8/Wnf;->access$100()Lc8/Tnf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Tnf;->getVisa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/aof;->sendDeepLinkActivePoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_4
    invoke-static {v4}, Lc8/Wnf;->access$102(Lc8/Tnf;)Lc8/Tnf;

    goto/16 :goto_0
.end method
