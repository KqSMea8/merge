.class public Lc8/Qqb;
.super Lc8/MXf;
.source "WXUserModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserInfo(Lc8/EWf;)V
    .locals 2
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 14
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getUserModuleAdapter()Lc8/Sob;

    move-result-object v0

    .line 15
    .local v0, "user":Lc8/Sob;
    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p0, Lc8/Qqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/Sob;->getUserInfo(Landroid/content/Context;Lc8/EWf;)V

    .line 18
    :cond_0
    return-void
.end method

.method public login(Lc8/EWf;)V
    .locals 2
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getUserModuleAdapter()Lc8/Sob;

    move-result-object v0

    .line 23
    .local v0, "user":Lc8/Sob;
    if-eqz v0, :cond_0

    .line 24
    iget-object v1, p0, Lc8/Qqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/Sob;->login(Landroid/content/Context;Lc8/EWf;)V

    .line 26
    :cond_0
    return-void
.end method

.method public logout(Lc8/EWf;)V
    .locals 2
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getUserModuleAdapter()Lc8/Sob;

    move-result-object v0

    .line 31
    .local v0, "user":Lc8/Sob;
    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lc8/Qqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/Sob;->logout(Landroid/content/Context;Lc8/EWf;)V

    .line 34
    :cond_0
    return-void
.end method
