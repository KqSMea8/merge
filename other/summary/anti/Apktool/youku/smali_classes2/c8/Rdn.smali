.class public final Lc8/Rdn;
.super Lc8/ten;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ben;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lc8/ten;-><init>()V

    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    invoke-interface {v1}, Lc8/vdn;->getCookie()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "st":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCookie() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    return-object v0
.end method

.method public getSToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    invoke-interface {v1}, Lc8/vdn;->getSToken()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "st":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSToken() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    return-object v0
.end method

.method public getYKTK()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    invoke-interface {v1}, Lc8/vdn;->getYKTK()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "st":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getYKTK() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    return-object v0
.end method

.method public onChanged(Lcom/youku/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lc8/ben;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ben;

    .line 109
    .local v0, "listener":Lc8/Ben;
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Lc8/Ben;->onChanged(Lcom/youku/service/download/DownloadInfo;)V

    goto :goto_0

    .line 116
    .end local v0    # "listener":Lc8/Ben;
    :cond_1
    return-void
.end method

.method public onFinish(Lcom/youku/service/download/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    if-eqz p1, :cond_2

    .line 122
    invoke-static {}, Lc8/ben;->access$100()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p1, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-static {v2}, Lc8/Jdn;->getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v0

    .line 124
    .local v0, "fullinfo":Lcom/youku/service/download/DownloadInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/youku/service/download/DownloadInfo;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 125
    invoke-static {}, Lc8/ben;->access$100()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v0    # "fullinfo":Lcom/youku/service/download/DownloadInfo;
    :cond_0
    invoke-static {}, Lc8/ben;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Ben;

    .line 132
    .local v1, "listener":Lc8/Ben;
    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v1, p1}, Lc8/Ben;->onFinish(Lcom/youku/service/download/DownloadInfo;)V

    goto :goto_0

    .line 137
    .end local v1    # "listener":Lc8/Ben;
    :cond_2
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lc8/ben;->access$200()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lc8/ben;->access$102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 142
    return-void
.end method
