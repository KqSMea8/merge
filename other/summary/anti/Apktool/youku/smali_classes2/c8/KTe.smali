.class public Lc8/KTe;
.super Lc8/rTe;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/TTe;->pushDataLater(ILc8/aWp;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TTe;

.field final synthetic val$buffer:Lc8/YVp;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;ILc8/YVp;IZ)V
    .locals 0
    .param p1, "this$0"    # Lc8/TTe;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 887
    iput-object p1, p0, Lc8/KTe;->this$0:Lc8/TTe;

    iput p4, p0, Lc8/KTe;->val$streamId:I

    iput-object p5, p0, Lc8/KTe;->val$buffer:Lc8/YVp;

    iput p6, p0, Lc8/KTe;->val$byteCount:I

    iput-boolean p7, p0, Lc8/KTe;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lc8/rTe;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 890
    :try_start_0
    iget-object v1, p0, Lc8/KTe;->this$0:Lc8/TTe;

    invoke-static {v1}, Lc8/TTe;->access$2700(Lc8/TTe;)Lc8/pUe;

    move-result-object v1

    iget v2, p0, Lc8/KTe;->val$streamId:I

    iget-object v3, p0, Lc8/KTe;->val$buffer:Lc8/YVp;

    iget v4, p0, Lc8/KTe;->val$byteCount:I

    iget-boolean v5, p0, Lc8/KTe;->val$inFinished:Z

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/pUe;->onData(ILc8/aWp;IZ)Z

    move-result v0

    .line 891
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/KTe;->this$0:Lc8/TTe;

    iget-object v1, v1, Lc8/TTe;->frameWriter:Lc8/ETe;

    iget v2, p0, Lc8/KTe;->val$streamId:I

    sget-object v3, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lc8/ETe;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 892
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lc8/KTe;->val$inFinished:Z

    if-eqz v1, :cond_2

    .line 893
    :cond_1
    iget-object v2, p0, Lc8/KTe;->this$0:Lc8/TTe;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :try_start_1
    iget-object v1, p0, Lc8/KTe;->this$0:Lc8/TTe;

    invoke-static {v1}, Lc8/TTe;->access$2800(Lc8/TTe;)Ljava/util/Set;

    move-result-object v1

    iget v3, p0, Lc8/KTe;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 895
    monitor-exit v2

    .line 899
    .end local v0    # "cancel":Z
    :cond_2
    :goto_0
    return-void

    .line 895
    .restart local v0    # "cancel":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "cancel":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method
