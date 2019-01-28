.class public Lc8/Nqb;
.super Lc8/MXf;
.source "WXPageInfoModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method


# virtual methods
.method public setIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getPageInfoModuleAdapter()Lc8/Pob;

    move-result-object v0

    .line 28
    .local v0, "pageInfo":Lc8/Pob;
    instance-of v1, v0, Lc8/Rob;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 29
    check-cast v1, Lc8/Rob;

    iget-object v2, p0, Lc8/Nqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/Rob;->setInstanceId(Ljava/lang/String;)V

    .line 31
    :cond_0
    if-eqz v0, :cond_1

    .line 32
    iget-object v1, p0, Lc8/Nqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/Pob;->setIcon(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getPageInfoModuleAdapter()Lc8/Pob;

    move-result-object v0

    .line 17
    .local v0, "pageInfo":Lc8/Pob;
    instance-of v1, v0, Lc8/Rob;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 18
    check-cast v1, Lc8/Rob;

    iget-object v2, p0, Lc8/Nqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/Rob;->setInstanceId(Ljava/lang/String;)V

    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    iget-object v1, p0, Lc8/Nqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/Pob;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    :cond_1
    return-void
.end method
