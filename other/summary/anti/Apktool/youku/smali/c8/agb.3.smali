.class public Lc8/agb;
.super Lc8/Aib;
.source "LoginByTrustLoginTokenTask.java"


# instance fields
.field private loginCallback:Lc8/xgb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc8/xgb;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lc8/Aib;-><init>(Landroid/app/Activity;)V

    .line 21
    iput-object p2, p0, Lc8/agb;->loginCallback:Lc8/xgb;

    .line 22
    return-void
.end method


# virtual methods
.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 53
    iget-object v0, p0, Lc8/agb;->loginCallback:Lc8/xgb;

    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/Wgb;->create(I[Ljava/lang/Object;)Lc8/Wgb;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lc8/Shb;->onFailure(Lc8/vgb;Lc8/Wgb;)V

    .line 55
    return-void
.end method

.method protected doWhenResultFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/agb;->loginCallback:Lc8/xgb;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lc8/agb;->loginCallback:Lc8/xgb;

    invoke-interface {v0, p1, p2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method

.method protected doWhenResultOk()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 37
    iget-object v0, p0, Lc8/agb;->loginCallback:Lc8/xgb;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lc8/agb;->loginCallback:Lc8/xgb;

    sget-object v1, Lc8/Zfb;->credentialService:Lc8/rhb;

    invoke-interface {v1}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected login([Ljava/lang/String;)Lc8/Zgb;
    .locals 3
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
    .line 47
    sget-object v0, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lc8/Qfb;->loginByIVToken(Ljava/lang/String;Ljava/lang/String;)Lc8/Zgb;

    move-result-object v0

    return-object v0
.end method
