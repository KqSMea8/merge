.class public Lc8/pJd;
.super Lc8/BJd;
.source "RequestProgressBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qJd;->sink(Lc8/LJd;)Lc8/LJd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field bytesWritten:J

.field contentLength:J

.field final synthetic this$0:Lc8/qJd;


# direct methods
.method constructor <init>(Lc8/qJd;Lc8/LJd;)V
    .locals 2
    .param p1, "this$0"    # Lc8/qJd;
    .param p2, "delegate"    # Lc8/LJd;

    .prologue
    const-wide/16 v0, 0x0

    .line 68
    iput-object p1, p0, Lc8/pJd;->this$0:Lc8/qJd;

    invoke-direct {p0, p2}, Lc8/BJd;-><init>(Lc8/LJd;)V

    .line 69
    iput-wide v0, p0, Lc8/pJd;->bytesWritten:J

    .line 70
    iput-wide v0, p0, Lc8/pJd;->contentLength:J

    return-void
.end method


# virtual methods
.method public write(Lc8/yJd;J)V
    .locals 8
    .param p1, "source"    # Lc8/yJd;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lc8/BJd;->write(Lc8/yJd;J)V

    .line 75
    iget-wide v0, p0, Lc8/pJd;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/pJd;->this$0:Lc8/qJd;

    invoke-virtual {v0}, Lc8/qJd;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/pJd;->contentLength:J

    .line 78
    :cond_0
    iget-wide v0, p0, Lc8/pJd;->bytesWritten:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lc8/pJd;->bytesWritten:J

    .line 79
    iget-object v0, p0, Lc8/pJd;->this$0:Lc8/qJd;

    invoke-static {v0}, Lc8/qJd;->access$000(Lc8/qJd;)Lc8/sJd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lc8/pJd;->this$0:Lc8/qJd;

    invoke-static {v0}, Lc8/qJd;->access$000(Lc8/qJd;)Lc8/sJd;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/model/Progress;

    iget-wide v4, p0, Lc8/pJd;->bytesWritten:J

    iget-wide v6, p0, Lc8/pJd;->contentLength:J

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/meizu/cloud/pushsdk/networking/model/Progress;-><init>(JJ)V

    invoke-virtual {v0, v1, v2}, Lc8/sJd;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    :cond_1
    return-void
.end method
