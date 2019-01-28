.class public Lc8/tJj;
.super Ljava/lang/Object;
.source "CallProxy.java"

# interfaces
.implements Lc8/sJj;


# instance fields
.field private mCallWrapper:Lc8/uJj;

.field private realCall:Lc8/rJj;


# direct methods
.method public constructor <init>(Lc8/rJj;)V
    .locals 0
    .param p1, "realCall"    # Lc8/rJj;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lc8/tJj;->realCall:Lc8/rJj;

    .line 20
    return-void
.end method

.method private preValidate()Lc8/eJj;
    .locals 2

    .prologue
    .line 61
    sget-boolean v1, Lc8/cJj;->isInit:Z

    if-nez v1, :cond_0

    .line 62
    invoke-static {}, Lc8/eJj;->newInstance()Lc8/eJj;

    move-result-object v0

    .line 63
    .local v0, "ykResponse":Lc8/eJj;
    const/16 v1, -0xbb9

    invoke-virtual {v0, v1}, Lc8/eJj;->setYkErrorCode(I)V

    .line 66
    .end local v0    # "ykResponse":Lc8/eJj;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public asyncCall(Lc8/OIj;)V
    .locals 2
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 39
    invoke-direct {p0}, Lc8/tJj;->preValidate()Lc8/eJj;

    move-result-object v0

    .line 40
    .local v0, "ykResponse":Lc8/eJj;
    if-eqz v0, :cond_1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1, v0}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lc8/tJj;->mCallWrapper:Lc8/uJj;

    invoke-virtual {v1, p1}, Lc8/uJj;->asyncCall(Lc8/OIj;)V

    goto :goto_0
.end method

.method public asyncUICall(Lc8/OIj;)V
    .locals 2
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 50
    invoke-direct {p0}, Lc8/tJj;->preValidate()Lc8/eJj;

    move-result-object v0

    .line 51
    .local v0, "ykResponse":Lc8/eJj;
    if-eqz v0, :cond_1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1, v0}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lc8/tJj;->mCallWrapper:Lc8/uJj;

    invoke-virtual {v1, p1}, Lc8/uJj;->asyncUICall(Lc8/OIj;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/tJj;->mCallWrapper:Lc8/uJj;

    invoke-virtual {v0}, Lc8/uJj;->cancel()V

    .line 72
    return-void
.end method

.method public construct(Lc8/dJj;)V
    .locals 2
    .param p1, "ykRequest"    # Lc8/dJj;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/tJj;->realCall:Lc8/rJj;

    invoke-virtual {v0, p1}, Lc8/rJj;->construct(Lc8/dJj;)V

    .line 24
    new-instance v0, Lc8/uJj;

    iget-object v1, p0, Lc8/tJj;->realCall:Lc8/rJj;

    invoke-direct {v0, v1}, Lc8/uJj;-><init>(Lc8/rJj;)V

    iput-object v0, p0, Lc8/tJj;->mCallWrapper:Lc8/uJj;

    .line 25
    return-void
.end method

.method public syncCall()Lc8/eJj;
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/tJj;->preValidate()Lc8/eJj;

    move-result-object v0

    .line 30
    .local v0, "ykResponse":Lc8/eJj;
    if-eqz v0, :cond_0

    .line 33
    .end local v0    # "ykResponse":Lc8/eJj;
    :goto_0
    return-object v0

    .restart local v0    # "ykResponse":Lc8/eJj;
    :cond_0
    iget-object v1, p0, Lc8/tJj;->mCallWrapper:Lc8/uJj;

    invoke-virtual {v1}, Lc8/uJj;->syncCall()Lc8/eJj;

    move-result-object v0

    goto :goto_0
.end method
