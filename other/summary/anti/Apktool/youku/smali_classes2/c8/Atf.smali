.class public Lc8/Atf;
.super Lc8/Ftf;
.source "OrangeConfigListenerStubV1.java"


# instance fields
.field mListener:Lcom/taobao/orange/OrangeConfigListenerV1;


# direct methods
.method public constructor <init>(Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 0
    .param p1, "listenerV1"    # Lcom/taobao/orange/OrangeConfigListenerV1;

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/Ftf;-><init>()V

    .line 15
    iput-object p1, p0, Lc8/Atf;->mListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 35
    :cond_0
    :goto_0
    return v1

    .line 28
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 30
    check-cast v0, Lc8/Atf;

    .line 32
    .local v0, "that":Lc8/Atf;
    iget-object v2, p0, Lc8/Atf;->mListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    if-eqz v2, :cond_0

    .line 35
    iget-object v1, p0, Lc8/Atf;->mListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    iget-object v2, v0, Lc8/Atf;->mListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Atf;->mListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/Atf;->mListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lc8/Atf;->mListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lc8/Atf;->mListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-interface {v0, p1, p2}, Lcom/taobao/orange/OrangeConfigListenerV1;->onConfigUpdate(Ljava/lang/String;Z)V

    .line 23
    :cond_0
    return-void
.end method
