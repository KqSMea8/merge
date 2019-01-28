.class public final Lcom/youku/service/download/UTracker$1;
.super Ljava/util/HashMap;
.source "UTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jen;->track(Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$info:Lcom/youku/service/download/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/youku/service/download/DownloadInfo;)V
    .locals 6
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 44
    iput-object p1, p0, Lcom/youku/service/download/UTracker$1;->val$info:Lcom/youku/service/download/DownloadInfo;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/youku/service/download/UTracker$1;->val$info:Lcom/youku/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/youku/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "p":[Ljava/lang/String;
    const-string/jumbo v1, "vid"

    iget-object v3, p0, Lcom/youku/service/download/UTracker$1;->val$info:Lcom/youku/service/download/DownloadInfo;

    iget-object v3, v3, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/youku/service/download/UTracker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "sid"

    iget-object v3, p0, Lcom/youku/service/download/UTracker$1;->val$info:Lcom/youku/service/download/DownloadInfo;

    iget-object v3, v3, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/youku/service/download/UTracker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v1, "taskid"

    aget-object v3, v0, v2

    invoke-virtual {p0, v1, v3}, Lcom/youku/service/download/UTracker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v3, "cachesource"

    array-length v1, v0

    if-le v1, v4, :cond_0

    aget-object v1, v0, v4

    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/youku/service/download/UTracker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "quality"

    iget-object v3, p0, Lcom/youku/service/download/UTracker$1;->val$info:Lcom/youku/service/download/DownloadInfo;

    iget v3, v3, Lcom/youku/service/download/DownloadInfo;->format:I

    invoke-static {v3}, Lc8/Jen;->readableFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/youku/service/download/UTracker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v3, "errorcode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/youku/service/download/UTracker$1;->val$info:Lcom/youku/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/youku/service/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/youku/service/download/UTracker$1;->val$info:Lcom/youku/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/youku/service/download/DownloadInfo;->getExceptionId()I

    move-result v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/youku/service/download/UTracker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v1, "space"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lc8/Jen;->freeSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/youku/service/download/UTracker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "tasktime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/service/download/UTracker$1;->val$info:Lcom/youku/service/download/DownloadInfo;

    iget-wide v4, v3, Lcom/youku/service/download/DownloadInfo;->createTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/youku/service/download/UTracker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void

    .line 50
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    move v1, v2

    .line 52
    goto :goto_1
.end method
