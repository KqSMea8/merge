.class public Lc8/Rco;
.super Ljava/lang/Object;
.source "JsBridgeBrowser.java"

# interfaces
.implements Lc8/Hco;


# annotations
.annotation runtime Lc8/Gco;
    value = "DSBrowserBridge"
.end annotation


# instance fields
.field private webViewBrowser:Lc8/Oco;


# direct methods
.method public constructor <init>(Lc8/Oco;)V
    .locals 0
    .param p1, "webViewBrowser"    # Lc8/Oco;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lc8/Rco;->webViewBrowser:Lc8/Oco;

    .line 20
    return-void
.end method


# virtual methods
.method browser()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/Rco;->webViewBrowser:Lc8/Oco;

    invoke-interface {v0}, Lc8/Oco;->browser()V

    .line 72
    return-void
.end method

.method copyLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Rco;->webViewBrowser:Lc8/Oco;

    invoke-interface {v0}, Lc8/Oco;->copyLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hideMore()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/Rco;->webViewBrowser:Lc8/Oco;

    invoke-interface {v0}, Lc8/Oco;->hideMore()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method refresh()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lc8/Rco;->webViewBrowser:Lc8/Oco;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lc8/Oco;->toggleRefresh(Z)V

    .line 65
    return-void
.end method

.method setBrowserTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/Rco;->webViewBrowser:Lc8/Oco;

    invoke-interface {v0, p1}, Lc8/Oco;->setBrowserTitle(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method showMore()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/Rco;->webViewBrowser:Lc8/Oco;

    invoke-interface {v0}, Lc8/Oco;->showMore()V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
