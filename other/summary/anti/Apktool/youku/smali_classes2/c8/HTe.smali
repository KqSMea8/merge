.class public Lc8/HTe;
.super Lc8/rTe;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/TTe;->writePingLater(ZIILc8/nUe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TTe;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lc8/nUe;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;ZIILc8/nUe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/TTe;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 397
    iput-object p1, p0, Lc8/HTe;->this$0:Lc8/TTe;

    iput-boolean p4, p0, Lc8/HTe;->val$reply:Z

    iput p5, p0, Lc8/HTe;->val$payload1:I

    iput p6, p0, Lc8/HTe;->val$payload2:I

    iput-object p7, p0, Lc8/HTe;->val$ping:Lc8/nUe;

    invoke-direct {p0, p2, p3}, Lc8/rTe;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 400
    :try_start_0
    iget-object v0, p0, Lc8/HTe;->this$0:Lc8/TTe;

    iget-boolean v1, p0, Lc8/HTe;->val$reply:Z

    iget v2, p0, Lc8/HTe;->val$payload1:I

    iget v3, p0, Lc8/HTe;->val$payload2:I

    iget-object v4, p0, Lc8/HTe;->val$ping:Lc8/nUe;

    invoke-static {v0, v1, v2, v3, v4}, Lc8/TTe;->access$900(Lc8/TTe;ZIILc8/nUe;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
