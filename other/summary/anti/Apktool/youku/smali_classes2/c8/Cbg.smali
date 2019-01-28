.class public Lc8/Cbg;
.super Lc8/zbg;
.source "WXEmbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dbg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailToH5Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lc8/zbg;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lc8/dbg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "comp"    # Lc8/dbg;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 65
    if-eqz p2, :cond_0

    instance-of v3, p1, Lc8/Dbg;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "1|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-interface {p1}, Lc8/dbg;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 67
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v2, "webView":Landroid/webkit/WebView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    const-string/jumbo v3, "searchBoxJavaBridge_"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v3, "accessibilityTraversal"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 78
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    check-cast p1, Lc8/Dbg;

    .end local p1    # "comp":Lc8/dbg;
    invoke-static {p1}, Lc8/Dbg;->access$000(Lc8/Dbg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "webView":Landroid/webkit/WebView;
    :goto_0
    return-void

    .line 82
    .restart local p1    # "comp":Lc8/dbg;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lc8/zbg;->onException(Lc8/dbg;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
