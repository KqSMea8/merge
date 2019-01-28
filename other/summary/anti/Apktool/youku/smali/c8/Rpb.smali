.class public Lc8/Rpb;
.super Lc8/Acg;
.source "WXWVWeb.java"


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Acg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 12
    return-void
.end method


# virtual methods
.method protected createViewImpl()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lc8/Acg;->createViewImpl()V

    .line 18
    return-void
.end method

.method protected createWebView()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lc8/Upb;

    invoke-virtual {p0}, Lc8/Rpb;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Upb;-><init>(Lc8/nVf;)V

    iput-object v0, p0, Lc8/Rpb;->mWebView:Lc8/geg;

    .line 23
    return-void
.end method
