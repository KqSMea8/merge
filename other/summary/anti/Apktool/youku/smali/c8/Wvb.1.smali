.class public Lc8/Wvb;
.super Ljava/lang/Object;
.source "ConfiguredWeexPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/awb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicUrl"
.end annotation


# instance fields
.field private final mUrlInfo:Lc8/Zvb;

.field final synthetic this$0:Lc8/awb;


# direct methods
.method private constructor <init>(Lc8/awb;)V
    .locals 3

    .prologue
    .line 143
    iput-object p1, p0, Lc8/Wvb;->this$0:Lc8/awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lc8/Zvb;

    iget-object v1, p0, Lc8/Wvb;->this$0:Lc8/awb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/Zvb;-><init>(Lc8/awb;Lc8/Vvb;)V

    iput-object v0, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    return-void
.end method

.method synthetic constructor <init>(Lc8/awb;Lc8/Vvb;)V
    .locals 0
    .param p1, "x0"    # Lc8/awb;
    .param p2, "x1"    # Lc8/Vvb;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lc8/Wvb;-><init>(Lc8/awb;)V

    return-void
.end method

.method static synthetic access$100(Lc8/Wvb;Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Wvb;
    .param p1, "x1"    # Lc8/nVf;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lc8/Wvb;->onWXException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lc8/Wvb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Wvb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lc8/Wvb;->dynamicUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dynamicUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleUrl"    # Ljava/lang/String;
    .param p2, "renderUrl"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0, p1, p2}, Lc8/Wvb;->setUrls(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method private onWXException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    iget-object v0, v0, Lc8/Zvb;->mNewRenderUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "404"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    invoke-static {}, Lcom/alibaba/dynamic/DynamicSdk;->getInstance()Lcom/alibaba/dynamic/DynamicSdk;

    move-result-object v0

    iget-object v1, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    iget-object v1, v1, Lc8/Zvb;->mPureRenderUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dynamic/DynamicSdk;->redirectUrlFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUrls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "bundleUrl"    # Ljava/lang/String;
    .param p2, "originalUrl"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v5, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    invoke-virtual {v5}, Lc8/Zvb;->clear()V

    .line 170
    iget-object v5, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    iput-object p1, v5, Lc8/Zvb;->mOldBundleUrl:Ljava/lang/String;

    .line 171
    iget-object v5, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    iput-object p2, v5, Lc8/Zvb;->mOldRenderUrl:Ljava/lang/String;

    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/dynamic/DynamicSdk;->getInstance()Lcom/alibaba/dynamic/DynamicSdk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dynamic/DynamicSdk;->isSdkWork()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    .local v0, "bundleUri":Landroid/net/Uri;
    const-string/jumbo v5, "_wx_tpl"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "jsBundleUrl":Ljava/lang/String;
    const-string/jumbo v5, "wh_weex"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "wh_weex":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "urlWithoutParams":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    iget-object v5, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    const/4 v6, 0x0

    iput-object v6, v5, Lc8/Zvb;->mPureRenderUrl:Ljava/lang/String;

    .line 199
    iget-object v5, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    iput-object v3, v5, Lc8/Zvb;->mPureRenderUrl:Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/alibaba/dynamic/DynamicSdk;->getInstance()Lcom/alibaba/dynamic/DynamicSdk;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/dynamic/DynamicSdk;->redirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "realUrl":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 204
    iget-object v5, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/Zvb;->mNewBundleUrl:Ljava/lang/String;

    .line 205
    iget-object v5, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/Zvb;->mNewRenderUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v0    # "bundleUri":Landroid/net/Uri;
    .end local v1    # "jsBundleUrl":Ljava/lang/String;
    .end local v2    # "realUrl":Ljava/lang/String;
    .end local v3    # "urlWithoutParams":Ljava/lang/String;
    .end local v4    # "wh_weex":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public getOriginalRenderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    iget-object v0, v0, Lc8/Zvb;->mOldRenderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    iget-object v0, v0, Lc8/Zvb;->mOldBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    invoke-virtual {v0}, Lc8/Zvb;->getRenderUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lc8/Wvb;->mUrlInfo:Lc8/Zvb;

    invoke-virtual {v0}, Lc8/Zvb;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
