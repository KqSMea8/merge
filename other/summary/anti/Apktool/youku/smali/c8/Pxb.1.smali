.class public Lc8/Pxb;
.super Lc8/Txb;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qxb;->branchFlow()Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Txb",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qxb;


# direct methods
.method constructor <init>(Lc8/Qxb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qxb;

    .prologue
    .line 328
    .local p0, "this":Lc8/Pxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallelMerge$1;"
    iput-object p1, p0, Lc8/Pxb;->this$0:Lc8/Qxb;

    invoke-direct {p0}, Lc8/Txb;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lc8/Pxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallelMerge$1;"
    .local p1, "data":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lc8/Pxb;->this$0:Lc8/Qxb;

    iget-object v0, v0, Lc8/Qxb;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method
