.class public Lc8/mYm;
.super Ljava/lang/Object;
.source "YoukuAdapter.java"

# interfaces
.implements Lcom/alibaba/poplayer/norm/IFaceAdapter;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "YoukuAdapter"

    sput-object v0, Lc8/mYm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTimeStamp(Landroid/content/Context;)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {}, Lc8/WYm;->getServerTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public navToUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 42
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    :cond_1
    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 46
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {p1, p2}, Lc8/HTh;->shouldStartActivity(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 49
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public registerNavPreprocessor(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popLayer"    # Lcom/alibaba/poplayer/PopLayer;

    .prologue
    .line 25
    new-instance v0, Lc8/BYm;

    invoke-direct {v0}, Lc8/BYm;-><init>()V

    invoke-static {v0}, Lc8/Ybf;->registerHooker(Lc8/Sbf;)V

    .line 26
    return-void
.end method

.method public registerTrackViewTypes(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popLayer"    # Lcom/alibaba/poplayer/PopLayer;

    .prologue
    .line 30
    const-class v0, Lc8/iZm;

    invoke-virtual {p2, v0}, Lcom/alibaba/poplayer/PopLayer;->registerViewType(Ljava/lang/Class;)V

    .line 31
    const-class v0, Lc8/dZm;

    invoke-virtual {p2, v0}, Lcom/alibaba/poplayer/PopLayer;->registerViewType(Ljava/lang/Class;)V

    .line 32
    const-class v0, Lc8/ZYm;

    invoke-virtual {p2, v0}, Lcom/alibaba/poplayer/PopLayer;->registerViewType(Ljava/lang/Class;)V

    .line 33
    return-void
.end method
