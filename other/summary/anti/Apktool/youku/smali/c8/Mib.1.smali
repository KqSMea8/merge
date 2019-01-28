.class public Lc8/Mib;
.super Lc8/Aib;
.source "RefreshPageAfterOpenTb.java"


# instance fields
.field private view:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lc8/Aib;-><init>(Landroid/app/Activity;)V

    .line 19
    iput-object p2, p0, Lc8/Mib;->view:Landroid/webkit/WebView;

    .line 20
    return-void
.end method


# virtual methods
.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-static {}, Lc8/Shb;->toastSystemException()V

    .line 52
    return-void
.end method

.method protected doWhenResultFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lc8/Shb;->toastSystemException()V

    .line 26
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    check-cast v0, Lc8/xgb;

    invoke-interface {v0, p1, p2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 29
    :cond_0
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    invoke-interface {v0, p1, p2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 32
    :cond_1
    return-void
.end method

.method protected doWhenResultOk()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Mib;->view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lc8/rjb;->getInstance()Lc8/rjb;

    move-result-object v0

    iget-object v1, p0, Lc8/Mib;->view:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lc8/rjb;->safeReload(Landroid/webkit/WebView;)V

    .line 40
    :cond_0
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    check-cast v0, Lc8/xgb;

    sget-object v1, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v1}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 43
    :cond_1
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v0, :cond_2

    .line 44
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    sget-object v1, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v1}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 46
    :cond_2
    return-void
.end method

.method protected login([Ljava/lang/String;)Lc8/Zgb;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lc8/Zgb",
            "<",
            "Lc8/Vgb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lc8/eib;->INSTANCE:Lc8/eib;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lc8/eib;->loginByCode(Ljava/lang/String;)Lc8/Zgb;

    move-result-object v0

    return-object v0
.end method
