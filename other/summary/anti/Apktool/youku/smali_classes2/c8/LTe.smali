.class public Lc8/LTe;
.super Lc8/rTe;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/TTe;->pushResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TTe;

.field final synthetic val$errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .param p1, "this$0"    # Lc8/TTe;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 904
    iput-object p1, p0, Lc8/LTe;->this$0:Lc8/TTe;

    iput p4, p0, Lc8/LTe;->val$streamId:I

    iput-object p5, p0, Lc8/LTe;->val$errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lc8/rTe;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 906
    iget-object v0, p0, Lc8/LTe;->this$0:Lc8/TTe;

    invoke-static {v0}, Lc8/TTe;->access$2700(Lc8/TTe;)Lc8/pUe;

    move-result-object v0

    iget v1, p0, Lc8/LTe;->val$streamId:I

    iget-object v2, p0, Lc8/LTe;->val$errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lc8/pUe;->onReset(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 907
    iget-object v1, p0, Lc8/LTe;->this$0:Lc8/TTe;

    monitor-enter v1

    .line 908
    :try_start_0
    iget-object v0, p0, Lc8/LTe;->this$0:Lc8/TTe;

    invoke-static {v0}, Lc8/TTe;->access$2800(Lc8/TTe;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lc8/LTe;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 909
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
