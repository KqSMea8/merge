.class public Lc8/SNp;
.super Lc8/FNp;
.source "MtopBaseListenerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopListenerProxy"


# instance fields
.field protected isCached:Z

.field protected listener:Lc8/QNp;

.field public reqContext:Ljava/lang/Object;

.field public response:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method public constructor <init>(Lc8/QNp;)V
    .locals 1
    .param p1, "listener"    # Lc8/QNp;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lc8/FNp;-><init>()V

    .line 18
    iput-object v0, p0, Lc8/SNp;->listener:Lc8/QNp;

    .line 19
    iput-object v0, p0, Lc8/SNp;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 20
    iput-object v0, p0, Lc8/SNp;->reqContext:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/SNp;->isCached:Z

    .line 26
    iput-object p1, p0, Lc8/SNp;->listener:Lc8/QNp;

    .line 27
    return-void
.end method


# virtual methods
.method public onDataReceived(Lc8/RNp;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Lc8/RNp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v0, p0, Lc8/SNp;->listener:Lc8/QNp;

    instance-of v0, v0, Lc8/LNp;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lc8/SNp;->listener:Lc8/QNp;

    check-cast v0, Lc8/LNp;

    invoke-interface {v0, p1, p2}, Lc8/LNp;->onDataReceived(Lc8/RNp;Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Lc8/ONp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    iput-object v0, p0, Lc8/SNp;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 34
    iput-object p2, p0, Lc8/SNp;->reqContext:Ljava/lang/Object;

    .line 36
    :cond_0
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    iget-object v0, p0, Lc8/SNp;->listener:Lc8/QNp;

    instance-of v0, v0, Lc8/JNp;

    if-eqz v0, :cond_1

    .line 46
    iget-boolean v0, p0, Lc8/SNp;->isCached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/SNp;->response:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/SNp;->response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    :cond_1
    :goto_1
    return-void

    .line 40
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "mtopsdk.MtopListenerProxy"

    const-string/jumbo v1, "[onFinished] notify error"

    invoke-static {v0, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 49
    :cond_2
    iget-object v0, p0, Lc8/SNp;->listener:Lc8/QNp;

    check-cast v0, Lc8/JNp;

    invoke-interface {v0, p1, p2}, Lc8/JNp;->onFinished(Lc8/ONp;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onHeader(Lc8/PNp;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Lc8/PNp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v0, p0, Lc8/SNp;->listener:Lc8/QNp;

    instance-of v0, v0, Lc8/KNp;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/SNp;->listener:Lc8/QNp;

    check-cast v0, Lc8/KNp;

    invoke-interface {v0, p1, p2}, Lc8/KNp;->onHeader(Lc8/PNp;Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-void
.end method
