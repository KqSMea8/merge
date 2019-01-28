.class public Lc8/cob;
.super Lc8/eob;
.source "ALPH5OpenClient.java"


# instance fields
.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lc8/wnb;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "context"    # Lc8/wnb;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lc8/eob;-><init>(Lc8/wnb;)V

    .line 23
    iput-object p2, p0, Lc8/cob;->url:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lc8/cob;->webView:Landroid/webkit/WebView;

    .line 25
    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x130

    .line 32
    iget-object v1, p0, Lc8/cob;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 33
    const-string/jumbo v1, "ALPH5OpenClient"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "url is null"

    invoke-static {v1, v2, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    iget-object v1, p0, Lc8/cob;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_2

    .line 38
    iget-object v1, p0, Lc8/cob;->distributionContext:Lc8/wnb;

    iget-object v1, v1, Lc8/wnb;->failureListener:Lc8/gob;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lc8/cob;->distributionContext:Lc8/wnb;

    iget-object v1, v1, Lc8/wnb;->failureListener:Lc8/gob;

    const/4 v2, 0x4

    iget-object v3, p0, Lc8/cob;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lc8/gob;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lc8/cob;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lc8/cob;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    const/16 v0, 0xce

    goto :goto_0
.end method
