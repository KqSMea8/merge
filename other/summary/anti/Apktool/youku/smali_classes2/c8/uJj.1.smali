.class public Lc8/uJj;
.super Ljava/lang/Object;
.source "CallWrapper.java"

# interfaces
.implements Lc8/sJj;


# instance fields
.field private mCall:Lc8/rJj;

.field private mLogger:Lc8/wJj;


# direct methods
.method public constructor <init>(Lc8/rJj;)V
    .locals 0
    .param p1, "call"    # Lc8/rJj;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/uJj;->mCall:Lc8/rJj;

    .line 17
    invoke-direct {p0}, Lc8/uJj;->initLogger()V

    .line 18
    return-void
.end method

.method private initLogger()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lc8/uJj;->mCall:Lc8/rJj;

    instance-of v0, v0, Lc8/xJj;

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lc8/AJj;

    invoke-direct {v0}, Lc8/AJj;-><init>()V

    iput-object v0, p0, Lc8/uJj;->mLogger:Lc8/wJj;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Lc8/BJj;

    invoke-direct {v0}, Lc8/BJj;-><init>()V

    iput-object v0, p0, Lc8/uJj;->mLogger:Lc8/wJj;

    goto :goto_0
.end method


# virtual methods
.method public afterCall(Lc8/eJj;)V
    .locals 1
    .param p1, "response"    # Lc8/eJj;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/uJj;->mLogger:Lc8/wJj;

    invoke-interface {v0, p1}, Lc8/wJj;->afterCall(Lc8/eJj;)V

    .line 60
    return-void
.end method

.method public asyncCall(Lc8/OIj;)V
    .locals 3
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 39
    invoke-virtual {p0}, Lc8/uJj;->beforeCall()V

    .line 40
    iget-object v0, p0, Lc8/uJj;->mCall:Lc8/rJj;

    new-instance v1, Lc8/vJj;

    iget-object v2, p0, Lc8/uJj;->mLogger:Lc8/wJj;

    invoke-direct {v1, p1, v2}, Lc8/vJj;-><init>(Lc8/OIj;Lc8/wJj;)V

    invoke-virtual {v0, v1}, Lc8/rJj;->asyncCall(Lc8/OIj;)V

    .line 41
    return-void
.end method

.method public asyncUICall(Lc8/OIj;)V
    .locals 3
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 45
    invoke-virtual {p0}, Lc8/uJj;->beforeCall()V

    .line 46
    iget-object v0, p0, Lc8/uJj;->mCall:Lc8/rJj;

    new-instance v1, Lc8/vJj;

    iget-object v2, p0, Lc8/uJj;->mLogger:Lc8/wJj;

    invoke-direct {v1, p1, v2}, Lc8/vJj;-><init>(Lc8/OIj;Lc8/wJj;)V

    invoke-virtual {v0, v1}, Lc8/rJj;->asyncUICall(Lc8/OIj;)V

    .line 47
    return-void
.end method

.method public beforeCall()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lc8/uJj;->mLogger:Lc8/wJj;

    iget-object v1, p0, Lc8/uJj;->mCall:Lc8/rJj;

    invoke-interface {v0, v1}, Lc8/wJj;->beforeCall(Lc8/rJj;)V

    .line 56
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/uJj;->mCall:Lc8/rJj;

    invoke-virtual {v0}, Lc8/rJj;->cancel()V

    .line 52
    return-void
.end method

.method public syncCall()Lc8/eJj;
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lc8/uJj;->beforeCall()V

    .line 32
    iget-object v1, p0, Lc8/uJj;->mCall:Lc8/rJj;

    invoke-virtual {v1}, Lc8/rJj;->syncCall()Lc8/eJj;

    move-result-object v0

    .line 33
    .local v0, "response":Lc8/eJj;
    invoke-virtual {p0, v0}, Lc8/uJj;->afterCall(Lc8/eJj;)V

    .line 34
    return-object v0
.end method
