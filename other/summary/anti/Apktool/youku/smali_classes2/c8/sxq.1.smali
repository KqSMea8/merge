.class public Lc8/sxq;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/txq;->enqueue(Lc8/hnq;J)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/txq;

.field final synthetic val$timedAction:Lc8/uxq;


# direct methods
.method constructor <init>(Lc8/txq;Lc8/uxq;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lc8/sxq;->this$0:Lc8/txq;

    iput-object p2, p0, Lc8/sxq;->val$timedAction:Lc8/uxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lc8/sxq;->this$0:Lc8/txq;

    iget-object v0, v0, Lc8/txq;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lc8/sxq;->val$timedAction:Lc8/uxq;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
