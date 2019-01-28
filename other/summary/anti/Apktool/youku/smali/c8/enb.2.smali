.class public Lc8/enb;
.super Ljava/lang/Object;
.source "ALPCallbackInfo.java"


# instance fields
.field public callback:Lc8/gnb;

.field public packageName:Ljava/lang/String;

.field public pluginRule:Ljava/lang/String;

.field public timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "routeRule"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    iget-object v1, p0, Lc8/enb;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lc8/enb;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/enb;->pluginRule:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lc8/enb;->callback:Lc8/gnb;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lc8/enb;->callback:Lc8/gnb;

    invoke-interface {v0, p1}, Lc8/gnb;->onError(I)V

    .line 59
    :cond_0
    return-void
.end method

.method public onSuccess(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 50
    iget-object v0, p0, Lc8/enb;->callback:Lc8/gnb;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lc8/enb;->callback:Lc8/gnb;

    invoke-interface {v0, p1, p2}, Lc8/gnb;->onSuccess(ILandroid/os/Bundle;)V

    .line 53
    :cond_0
    return-void
.end method
