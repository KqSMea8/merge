.class public Lc8/OUe;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lc8/uWp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QUe;->cacheWritingResponse(Lc8/wUe;Lc8/cTe;)Lc8/cTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lc8/QUe;

.field final synthetic val$cacheBody:Lc8/ZVp;

.field final synthetic val$cacheRequest:Lc8/wUe;

.field final synthetic val$source:Lc8/aWp;


# direct methods
.method constructor <init>(Lc8/QUe;Lc8/aWp;Lc8/wUe;Lc8/ZVp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/QUe;

    .prologue
    .line 773
    iput-object p1, p0, Lc8/OUe;->this$0:Lc8/QUe;

    iput-object p2, p0, Lc8/OUe;->val$source:Lc8/aWp;

    iput-object p3, p0, Lc8/OUe;->val$cacheRequest:Lc8/wUe;

    iput-object p4, p0, Lc8/OUe;->val$cacheBody:Lc8/ZVp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    iget-boolean v0, p0, Lc8/OUe;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 807
    invoke-static {p0, v0, v1}, Lc8/ATe;->discard(Lc8/uWp;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/OUe;->cacheRequestClosed:Z

    .line 809
    iget-object v0, p0, Lc8/OUe;->val$cacheRequest:Lc8/wUe;

    invoke-interface {v0}, Lc8/wUe;->abort()V

    .line 811
    :cond_0
    iget-object v0, p0, Lc8/OUe;->val$source:Lc8/aWp;

    invoke-interface {v0}, Lc8/aWp;->close()V

    .line 812
    return-void
.end method

.method public read(Lc8/YVp;J)J
    .locals 8
    .param p1, "sink"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 779
    :try_start_0
    iget-object v2, p0, Lc8/OUe;->val$source:Lc8/aWp;

    invoke-interface {v2, p1, p2, p3}, Lc8/aWp;->read(Lc8/YVp;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 788
    .local v4, "bytesRead":J
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 789
    iget-boolean v2, p0, Lc8/OUe;->cacheRequestClosed:Z

    if-nez v2, :cond_0

    .line 790
    iput-boolean v3, p0, Lc8/OUe;->cacheRequestClosed:Z

    .line 791
    iget-object v2, p0, Lc8/OUe;->val$cacheBody:Lc8/ZVp;

    invoke-interface {v2}, Lc8/ZVp;->close()V

    :cond_0
    move-wide v4, v0

    .line 798
    .end local v4    # "bytesRead":J
    :goto_0
    return-wide v4

    .line 780
    :catch_0
    move-exception v6

    .line 781
    .local v6, "e":Ljava/io/IOException;
    iget-boolean v0, p0, Lc8/OUe;->cacheRequestClosed:Z

    if-nez v0, :cond_1

    .line 782
    iput-boolean v3, p0, Lc8/OUe;->cacheRequestClosed:Z

    .line 783
    iget-object v0, p0, Lc8/OUe;->val$cacheRequest:Lc8/wUe;

    invoke-interface {v0}, Lc8/wUe;->abort()V

    .line 785
    :cond_1
    throw v6

    .line 796
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "bytesRead":J
    :cond_2
    iget-object v0, p0, Lc8/OUe;->val$cacheBody:Lc8/ZVp;

    invoke-interface {v0}, Lc8/ZVp;->buffer()Lc8/YVp;

    move-result-object v1

    invoke-virtual {p1}, Lc8/YVp;->size()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lc8/YVp;->copyTo(Lc8/YVp;JJ)Lc8/YVp;

    .line 797
    iget-object v0, p0, Lc8/OUe;->val$cacheBody:Lc8/ZVp;

    invoke-interface {v0}, Lc8/ZVp;->emitCompleteSegments()Lc8/ZVp;

    goto :goto_0
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lc8/OUe;->val$source:Lc8/aWp;

    invoke-interface {v0}, Lc8/aWp;->timeout()Lc8/wWp;

    move-result-object v0

    return-object v0
.end method
