.class public Lc8/eO;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hO;->request()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hO;


# direct methods
.method constructor <init>(Lc8/hO;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lc8/eO;->this$0:Lc8/hO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 97
    new-instance v0, Lc8/gO;

    iget-object v1, p0, Lc8/eO;->this$0:Lc8/hO;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/eO;->this$0:Lc8/hO;

    invoke-static {v3}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v3

    iget-object v3, v3, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v3}, Lc8/HN;->getAwcnRequest()Lc8/eK;

    move-result-object v3

    iget-object v4, p0, Lc8/eO;->this$0:Lc8/hO;

    invoke-static {v4}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v4

    iget-object v4, v4, Lc8/cO;->callback:Lc8/NN;

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/gO;-><init>(Lc8/hO;ILc8/eK;Lc8/NN;)V

    iget-object v1, p0, Lc8/eO;->this$0:Lc8/hO;

    invoke-static {v1}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v1

    iget-object v1, v1, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v1}, Lc8/HN;->getAwcnRequest()Lc8/eK;

    move-result-object v1

    iget-object v2, p0, Lc8/eO;->this$0:Lc8/hO;

    invoke-static {v2}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v2

    iget-object v2, v2, Lc8/cO;->callback:Lc8/NN;

    invoke-virtual {v0, v1, v2}, Lc8/gO;->proceed(Lc8/eK;Lc8/NN;)Ljava/util/concurrent/Future;

    .line 99
    return-void
.end method
