.class public Lc8/awb;
.super Lc8/jwb;
.source "ConfiguredWeexPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Yvb;,
        Lc8/Wvb;,
        Lc8/Zvb;
    }
.end annotation


# instance fields
.field private mDynamicurl:Lc8/Wvb;

.field private mPreRender:Lc8/Yvb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/jwb;-><init>()V

    .line 21
    new-instance v0, Lc8/Wvb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/Wvb;-><init>(Lc8/awb;Lc8/Vvb;)V

    iput-object v0, p0, Lc8/awb;->mDynamicurl:Lc8/Wvb;

    .line 228
    return-void
.end method

.method private getPreRender()Lc8/Yvb;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lc8/awb;->mPreRender:Lc8/Yvb;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lc8/Yvb;

    invoke-direct {v0, p0}, Lc8/Yvb;-><init>(Lc8/awb;)V

    iput-object v0, p0, Lc8/awb;->mPreRender:Lc8/Yvb;

    .line 92
    :cond_0
    iget-object v0, p0, Lc8/awb;->mPreRender:Lc8/Yvb;

    return-object v0
.end method


# virtual methods
.method public getOriginalRenderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lc8/awb;->mDynamicurl:Lc8/Wvb;

    invoke-virtual {v0}, Lc8/Wvb;->getOriginalRenderUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/awb;->mDynamicurl:Lc8/Wvb;

    invoke-virtual {v0}, Lc8/Wvb;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lc8/awb;->mDynamicurl:Lc8/Wvb;

    invoke-virtual {v0}, Lc8/Wvb;->getRenderUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/awb;->mDynamicurl:Lc8/Wvb;

    invoke-virtual {v0}, Lc8/Wvb;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWXSDKInstance(Landroid/content/Context;)Lc8/nVf;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iget-object v2, p0, Lc8/awb;->mDynamicurl:Lc8/Wvb;

    invoke-virtual {v2}, Lc8/Wvb;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "realUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-static {}, Lc8/qvb;->getInstance()Lc8/qvb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/qvb;->takeCachedInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v0

    .line 59
    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lc8/awb;->getPreRender()Lc8/Yvb;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/Yvb;->setPreRender(Z)V

    .line 65
    .end local v0    # "instance":Lc8/nVf;
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-direct {p0}, Lc8/awb;->getPreRender()Lc8/Yvb;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/Yvb;->setPreRender(Z)V

    .line 65
    invoke-virtual {p0, p1}, Lc8/awb;->createWXSDKInstance(Landroid/content/Context;)Lc8/nVf;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lc8/jwb;->onDestroy()V

    .line 48
    iget-object v0, p0, Lc8/awb;->mPreRender:Lc8/Yvb;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lc8/awb;->mPreRender:Lc8/Yvb;

    invoke-virtual {v0}, Lc8/Yvb;->destroy()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/awb;->mPreRender:Lc8/Yvb;

    .line 52
    :cond_0
    return-void
.end method

.method public onWXException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lc8/jwb;->onWXException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lc8/awb;->mDynamicurl:Lc8/Wvb;

    invoke-static {v0, p1, p2, p3}, Lc8/Wvb;->access$100(Lc8/Wvb;Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method protected render(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "initData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lc8/awb;->getPreRender()Lc8/Yvb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Yvb;->isPreRender()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lc8/awb;->getPreRender()Lc8/Yvb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Yvb;->renderFromCache()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Lc8/jwb;->render(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected transformUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleUrl"    # Ljava/lang/String;
    .param p2, "renderUrl"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lc8/jwb;->transformUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lc8/awb;->mDynamicurl:Lc8/Wvb;

    invoke-static {v0, p1, p2}, Lc8/Wvb;->access$200(Lc8/Wvb;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
