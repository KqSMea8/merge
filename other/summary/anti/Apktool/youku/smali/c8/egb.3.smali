.class public Lc8/egb;
.super Ljava/lang/Object;
.source "AuthPresenter.java"


# instance fields
.field private mAuthView:Lc8/fgb;


# direct methods
.method public constructor <init>(Lc8/fgb;)V
    .locals 0
    .param p1, "authView"    # Lc8/fgb;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/egb;->mAuthView:Lc8/fgb;

    .line 17
    return-void
.end method

.method private cancelResult()V
    .locals 4

    .prologue
    const/16 v3, 0x2776

    .line 36
    iget-object v1, p0, Lc8/egb;->mAuthView:Lc8/fgb;

    if-eqz v1, :cond_2

    .line 37
    iget-object v1, p0, Lc8/egb;->mAuthView:Lc8/fgb;

    invoke-interface {v1}, Lc8/fgb;->getContainer()Landroid/app/Activity;

    move-result-object v0

    .line 38
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 39
    sget-object v1, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    check-cast v1, Lc8/xgb;

    const-string/jumbo v2, "\u53d6\u6d88\u7ed1\u5b9a"

    invoke-interface {v1, v3, v2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 42
    :cond_0
    sget-object v1, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v1, :cond_1

    .line 43
    sget-object v1, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    const-string/jumbo v2, "\u53d6\u6d88\u7ed1\u5b9a"

    invoke-interface {v1, v3, v2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 45
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 48
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    return-void
.end method


# virtual methods
.method public auth()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    check-cast v0, Lc8/xgb;

    sget-object v1, Lc8/Zfb;->loginService:Lc8/hib;

    invoke-interface {v1}, Lc8/hib;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 24
    :cond_0
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v0, :cond_1

    .line 25
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    sget-object v1, Lc8/Zfb;->loginService:Lc8/hib;

    invoke-interface {v1}, Lc8/hib;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 27
    :cond_1
    iget-object v0, p0, Lc8/egb;->mAuthView:Lc8/fgb;

    invoke-interface {v0}, Lc8/fgb;->getContainer()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 28
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lc8/egb;->cancelResult()V

    .line 32
    return-void
.end method
