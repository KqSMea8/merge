.class public final Lc8/Dko;
.super Lc8/Fko;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$aWebView:Lcom/uc/webview/export/WebView;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/WebView;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lc8/Dko;->val$aWebView:Lcom/uc/webview/export/WebView;

    invoke-direct {p0}, Lc8/Fko;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "aCode"    # I
    .param p2, "aResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lc8/Dko;->val$aWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 677
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lc8/Dko;->val$aWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->reload()V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lc8/Dko;->val$aWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p2}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
