.class public Lc8/GTe;
.super Lc8/rTe;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/TTe;->writeWindowUpdateLater(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TTe;

.field final synthetic val$streamId:I

.field final synthetic val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor <init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1
    .param p1, "this$0"    # Lc8/TTe;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 364
    iput-object p1, p0, Lc8/GTe;->this$0:Lc8/TTe;

    iput p4, p0, Lc8/GTe;->val$streamId:I

    iput-wide p5, p0, Lc8/GTe;->val$unacknowledgedBytesRead:J

    invoke-direct {p0, p2, p3}, Lc8/rTe;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Lc8/GTe;->this$0:Lc8/TTe;

    iget-object v0, v0, Lc8/TTe;->frameWriter:Lc8/ETe;

    iget v1, p0, Lc8/GTe;->val$streamId:I

    iget-wide v2, p0, Lc8/GTe;->val$unacknowledgedBytesRead:J

    invoke-interface {v0, v1, v2, v3}, Lc8/ETe;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
