.class public Lc8/uOp;
.super Ljava/lang/Object;
.source "Mtop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vOp;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/vOp;


# direct methods
.method constructor <init>(Lc8/vOp;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lc8/uOp;->this$1:Lc8/vOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lc8/uOp;->this$1:Lc8/vOp;

    iget-object v1, v1, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$300(Lc8/AOp;)Lc8/pOp;

    move-result-object v1

    iget-object v2, p0, Lc8/uOp;->this$1:Lc8/vOp;

    iget-object v2, v2, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v2}, Lc8/AOp;->access$200(Lc8/AOp;)Lc8/kOp;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/pOp;->executeExtraTask(Lc8/kOp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/uOp;->this$1:Lc8/vOp;

    iget-object v3, v3, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v3}, Lc8/AOp;->access$400(Lc8/AOp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [init] executeExtraTask error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
