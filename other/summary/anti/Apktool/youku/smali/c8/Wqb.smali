.class public Lc8/Wqb;
.super Ljava/lang/Object;
.source "WXWindVaneWebView.java"

# interfaces
.implements Landroid/taobao/windvane/webview/IWVWebView;


# static fields
.field private static final TAG:Ljava/lang/String; = "WXWindVaneWebView"


# instance fields
.field private mDataOnActive:Ljava/lang/String;

.field private mWXSDKInstance:Lc8/nVf;


# direct methods
.method public constructor <init>(Lc8/nVf;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Wqb;->mDataOnActive:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lc8/Wqb;->mWXSDKInstance:Lc8/nVf;

    .line 25
    return-void
.end method


# virtual methods
.method public addJsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 90
    return-void
.end method

.method public back()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public clearCache()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Wqb;->mWXSDKInstance:Lc8/nVf;

    .line 114
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 46
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lc8/Wqb;->mWXSDKInstance:Lc8/nVf;

    if-nez v0, :cond_0

    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Wqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataOnActive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/Wqb;->mDataOnActive:Ljava/lang/String;

    return-object v0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Wqb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lc8/Wqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "WXWindVaneWebView"

    goto :goto_0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lc8/Wqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lc8/UUf;->getConfig()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/cag;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/Wqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public setDataOnActive(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lc8/Wqb;->mDataOnActive:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 110
    return-void
.end method

.method public showLoadingView()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
