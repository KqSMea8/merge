.class public Lc8/Acg;
.super Lc8/tbg;
.source "WXWeb.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation


# static fields
.field public static final GO_BACK:Ljava/lang/String; = "goBack"

.field public static final GO_FORWARD:Ljava/lang/String; = "goForward"

.field public static final RELOAD:Ljava/lang/String; = "reload"


# instance fields
.field protected mWebView:Lc8/geg;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p5}, Lc8/Acg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 54
    invoke-virtual {p0}, Lc8/Acg;->createWebView()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lc8/Acg;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/Acg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lc8/Acg;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 153
    invoke-virtual {p0}, Lc8/Acg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v1, "errorMsg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v1, "error"

    invoke-virtual {p0, v1, v0}, Lc8/Acg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private getWebView()Lc8/geg;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lc8/Acg;->mWebView:Lc8/geg;

    return-object v0
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lc8/Acg;->getWebView()Lc8/geg;

    move-result-object v0

    invoke-interface {v0}, Lc8/geg;->goBack()V

    .line 175
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lc8/Acg;->getWebView()Lc8/geg;

    move-result-object v0

    invoke-interface {v0}, Lc8/geg;->goForward()V

    .line 171
    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0}, Lc8/Acg;->getWebView()Lc8/geg;

    move-result-object v0

    invoke-interface {v0, p1}, Lc8/geg;->loadUrl(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private reload()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lc8/Acg;->getWebView()Lc8/geg;

    move-result-object v0

    invoke-interface {v0}, Lc8/geg;->reload()V

    .line 167
    return-void
.end method


# virtual methods
.method protected createWebView()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lc8/Geg;

    invoke-virtual {p0}, Lc8/Acg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Geg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Acg;->mWebView:Lc8/geg;

    .line 59
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lc8/tbg;->destroy()V

    .line 105
    invoke-direct {p0}, Lc8/Acg;->getWebView()Lc8/geg;

    move-result-object v0

    invoke-interface {v0}, Lc8/geg;->destroy()V

    .line 106
    return-void
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Acg;->mWebView:Lc8/geg;

    new-instance v1, Lc8/ycg;

    invoke-direct {v1, p0}, Lc8/ycg;-><init>(Lc8/Acg;)V

    invoke-interface {v0, v1}, Lc8/geg;->setOnErrorListener(Lc8/eeg;)V

    .line 69
    iget-object v0, p0, Lc8/Acg;->mWebView:Lc8/geg;

    new-instance v1, Lc8/zcg;

    invoke-direct {v1, p0}, Lc8/zcg;-><init>(Lc8/Acg;)V

    invoke-interface {v0, v1}, Lc8/geg;->setOnPageListener(Lc8/feg;)V

    .line 99
    iget-object v0, p0, Lc8/Acg;->mWebView:Lc8/geg;

    invoke-interface {v0}, Lc8/geg;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const-string/jumbo v0, "goBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0}, Lc8/Acg;->goBack()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string/jumbo v0, "goForward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-direct {p0}, Lc8/Acg;->goForward()V

    goto :goto_0

    .line 146
    :cond_2
    const-string/jumbo v0, "reload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lc8/Acg;->reload()V

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 110
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 122
    invoke-super {p0, p1, p2}, Lc8/tbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 110
    :sswitch_0
    const-string/jumbo v4, "show-loading"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "src"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-static {p2, v5}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 113
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lc8/Acg;->setShowLoading(Z)V

    goto :goto_1

    .line 117
    .end local v0    # "result":Ljava/lang/Boolean;
    :pswitch_1
    invoke-static {p2, v5}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "src":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0, v1}, Lc8/Acg;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x1bde4 -> :sswitch_1
        0x2003526c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowLoading(Z)V
    .locals 1
    .param p1, "showLoading"    # Z
    .annotation runtime Lc8/vbg;
        name = "show-loading"
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lc8/Acg;->getWebView()Lc8/geg;

    move-result-object v0

    invoke-interface {v0, p1}, Lc8/geg;->setShowLoading(Z)V

    .line 128
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "src"
    .end annotation

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Acg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lc8/Acg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "web"

    invoke-virtual {v0, v1, v2}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Acg;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
