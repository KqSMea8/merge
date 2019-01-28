.class public Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iZn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtendHandlerListener"
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lc8/iZn;


# direct methods
.method public constructor <init>(Lc8/iZn;I)V
    .locals 0
    .param p2, "count"    # I

    .prologue
    .line 402
    iput-object p1, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->this$0:Lc8/iZn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput p2, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->count:I

    .line 404
    return-void
.end method


# virtual methods
.method public onCompleted(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 413
    iget v0, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->count:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->this$0:Lc8/iZn;

    invoke-static {v0}, Lc8/iZn;->access$000(Lc8/iZn;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    move-result-object v0

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 415
    iget-object v0, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->this$0:Lc8/iZn;

    iget-object v1, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->this$0:Lc8/iZn;

    invoke-static {v1}, Lc8/iZn;->access$000(Lc8/iZn;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lc8/iZn;->access$100(Lc8/iZn;Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 417
    :cond_0
    return-void
.end method

.method public onExtendError(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->this$0:Lc8/iZn;

    invoke-static {v0}, Lc8/iZn;->access$000(Lc8/iZn;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->reset()V

    .line 422
    iget-object v0, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->this$0:Lc8/iZn;

    invoke-static {v0}, Lc8/iZn;->access$000(Lc8/iZn;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    move-result-object v0

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 423
    iget-object v0, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->this$0:Lc8/iZn;

    iget-object v1, p0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;->this$0:Lc8/iZn;

    invoke-static {v1}, Lc8/iZn;->access$000(Lc8/iZn;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lc8/iZn;->access$100(Lc8/iZn;Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 424
    return-void
.end method

.method public onProgressChanged(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "progress"    # I

    .prologue
    .line 409
    return-void
.end method
