.class public Lc8/BOp;
.super Ljava/lang/Object;
.source "MtopBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/COp;->asyncRequest(Lc8/QNp;)Lc8/ENp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/COp;

.field final synthetic val$mtopContext:Lc8/IMp;


# direct methods
.method constructor <init>(Lc8/COp;Lc8/IMp;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lc8/BOp;->this$0:Lc8/COp;

    iput-object p2, p0, Lc8/BOp;->val$mtopContext:Lc8/IMp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 560
    iget-object v1, p0, Lc8/BOp;->val$mtopContext:Lc8/IMp;

    iget-object v1, v1, Lc8/IMp;->stats:Lc8/pPp;

    iget-object v2, p0, Lc8/BOp;->this$0:Lc8/COp;

    iget-object v2, v2, Lc8/COp;->stat:Lc8/pPp;

    invoke-virtual {v2}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lc8/pPp;->startExecuteTime:J

    .line 561
    iget-object v1, p0, Lc8/BOp;->this$0:Lc8/COp;

    iget-object v1, v1, Lc8/COp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v1}, Lc8/AOp;->checkMtopSDKInit()Z

    .line 562
    iget-object v1, p0, Lc8/BOp;->this$0:Lc8/COp;

    iget-object v1, v1, Lc8/COp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v1

    iget-object v0, v1, Lc8/kOp;->filterManager:Lc8/dNp;

    .line 563
    .local v0, "filterManager":Lc8/dNp;
    if-eqz v0, :cond_0

    .line 564
    const/4 v1, 0x0

    iget-object v2, p0, Lc8/BOp;->val$mtopContext:Lc8/IMp;

    invoke-interface {v0, v1, v2}, Lc8/dNp;->start(Ljava/lang/String;Lc8/IMp;)V

    .line 566
    :cond_0
    iget-object v1, p0, Lc8/BOp;->val$mtopContext:Lc8/IMp;

    invoke-static {v0, v1}, Lc8/jNp;->checkFilterManager(Lc8/dNp;Lc8/IMp;)V

    .line 567
    return-void
.end method
