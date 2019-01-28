.class public Lc8/MOp;
.super Ljava/lang/Object;
.source "NetworkCallbackAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OOp;->onHeader(Lc8/KPp;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OOp;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$response:Lc8/KPp;


# direct methods
.method constructor <init>(Lc8/OOp;Lc8/KPp;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lc8/MOp;->this$0:Lc8/OOp;

    iput-object p2, p0, Lc8/MOp;->val$response:Lc8/KPp;

    iput-object p3, p0, Lc8/MOp;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 64
    :try_start_0
    iget-object v2, p0, Lc8/MOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->headerListener:Lc8/KNp;

    if-eqz v2, :cond_0

    .line 65
    new-instance v1, Lc8/PNp;

    iget-object v2, p0, Lc8/MOp;->val$response:Lc8/KPp;

    iget v2, v2, Lc8/KPp;->code:I

    iget-object v3, p0, Lc8/MOp;->val$response:Lc8/KPp;

    iget-object v3, v3, Lc8/KPp;->headers:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lc8/PNp;-><init>(ILjava/util/Map;)V

    .line 66
    .local v1, "event":Lc8/PNp;
    iget-object v2, p0, Lc8/MOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->seqNo:Ljava/lang/String;

    iput-object v2, v1, Lc8/PNp;->seqNo:Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lc8/MOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->headerListener:Lc8/KNp;

    iget-object v3, p0, Lc8/MOp;->val$context:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lc8/KNp;->onHeader(Lc8/PNp;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "event":Lc8/PNp;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.NetworkCallbackAdapter"

    iget-object v3, p0, Lc8/MOp;->this$0:Lc8/OOp;

    iget-object v3, v3, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v3, v3, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v4, "onHeader failed."

    invoke-static {v2, v3, v4, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
