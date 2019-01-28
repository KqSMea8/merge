.class public Lc8/BGo;
.super Ljava/lang/Object;
.source "VipRequestID.java"


# instance fields
.field private isCancled:Z

.field private mApiID:Lc8/ENp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/BGo;->isCancled:Z

    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lc8/BGo;->mApiID:Lc8/ENp;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lc8/BGo;->mApiID:Lc8/ENp;

    invoke-virtual {v0}, Lc8/ENp;->cancelApiCall()Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/BGo;->isCancled:Z

    .line 27
    :cond_0
    return-void
.end method

.method public getApiID()Lc8/ENp;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lc8/BGo;->mApiID:Lc8/ENp;

    return-object v0
.end method

.method public isCancled()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lc8/BGo;->isCancled:Z

    return v0
.end method

.method public retry()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/BGo;->mApiID:Lc8/ENp;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lc8/BGo;->mApiID:Lc8/ENp;

    invoke-virtual {v0}, Lc8/ENp;->retryApiCall()Lc8/ENp;

    .line 41
    :cond_0
    return-void
.end method

.method public setApiID(Lc8/ENp;)V
    .locals 0
    .param p1, "mApiID"    # Lc8/ENp;

    .prologue
    .line 19
    iput-object p1, p0, Lc8/BGo;->mApiID:Lc8/ENp;

    .line 20
    return-void
.end method
