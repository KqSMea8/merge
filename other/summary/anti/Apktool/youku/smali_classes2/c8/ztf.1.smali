.class public Lc8/ztf;
.super Lc8/Ctf;
.source "OrangeConfigListenerStub.java"


# instance fields
.field mListener:Lc8/rtf;


# direct methods
.method public constructor <init>(Lc8/rtf;)V
    .locals 0
    .param p1, "mListener"    # Lc8/rtf;

    .prologue
    .line 11
    invoke-direct {p0}, Lc8/Ctf;-><init>()V

    .line 12
    iput-object p1, p0, Lc8/ztf;->mListener:Lc8/rtf;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 32
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 27
    check-cast v0, Lc8/ztf;

    .line 29
    .local v0, "that":Lc8/ztf;
    iget-object v2, p0, Lc8/ztf;->mListener:Lc8/rtf;

    if-eqz v2, :cond_0

    .line 32
    iget-object v1, p0, Lc8/ztf;->mListener:Lc8/rtf;

    iget-object v2, v0, Lc8/ztf;->mListener:Lc8/rtf;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lc8/ztf;->mListener:Lc8/rtf;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/ztf;->mListener:Lc8/rtf;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public onConfigUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lc8/ztf;->mListener:Lc8/rtf;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lc8/ztf;->mListener:Lc8/rtf;

    invoke-interface {v0, p1}, Lc8/rtf;->onConfigUpdate(Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method
