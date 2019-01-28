.class public Lc8/Cbo;
.super Lc8/ubo;
.source "IStreamPagePrestener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamSubscriber"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dbo;


# direct methods
.method public constructor <init>(Lc8/Dbo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Dbo;

    .prologue
    .line 123
    .local p0, "this":Lc8/Cbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>.StreamSubscriber;"
    iput-object p1, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    invoke-direct {p0}, Lc8/ubo;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    .local p0, "this":Lc8/Cbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>.StreamSubscriber;"
    invoke-super {p0, p1}, Lc8/ubo;->onError(Ljava/lang/Throwable;)V

    .line 147
    const-string/jumbo v0, "IStreamPagePrestener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "net error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Dbo;->mIsPreLoad:Z

    .line 149
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    iget-boolean v0, v0, Lc8/Dbo;->mIsAvail:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    invoke-virtual {v0, p1}, Lc8/Dbo;->doError(Ljava/lang/Throwable;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onNext(Lc8/Ibo;)V
    .locals 4
    .param p1, "pageResponse"    # Lc8/Ibo;

    .prologue
    .local p0, "this":Lc8/Cbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>.StreamSubscriber;"
    const/4 v3, 0x0

    .line 126
    invoke-super {p0, p1}, Lc8/ubo;->onNext(Lc8/Ibo;)V

    .line 127
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    invoke-static {v0}, Lc8/Dbo;->access$000(Lc8/Dbo;)Lc8/iao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/iao;->setLoaded(Z)V

    .line 128
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Dbo;->mIsPreLoad:Z

    .line 129
    const-string/jumbo v0, "IStreamPagePrestener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "load success,pageResponse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    invoke-virtual {v0, p1}, Lc8/Dbo;->updatePage(Lc8/Ibo;)V

    .line 131
    if-eqz p1, :cond_2

    .line 132
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    iget-boolean v0, v0, Lc8/Dbo;->mIsAvail:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    invoke-virtual {v0, p1}, Lc8/Dbo;->doSuccess(Lc8/Ibo;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    invoke-static {v0, p1}, Lc8/Dbo;->access$102(Lc8/Dbo;Lc8/Ibo;)Lc8/Ibo;

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    iget-boolean v0, v0, Lc8/Dbo;->mIsAvail:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lc8/Cbo;->this$0:Lc8/Dbo;

    invoke-static {v0}, Lc8/Dbo;->access$200(Lc8/Dbo;)Lc8/oao;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lc8/oao;->onLoadComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
