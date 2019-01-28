.class public Lc8/kBq;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lBq;->schedule(Lc8/hnq;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/lBq;

.field final synthetic val$timedAction:Lc8/mBq;


# direct methods
.method constructor <init>(Lc8/lBq;Lc8/mBq;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lc8/kBq;->this$1:Lc8/lBq;

    iput-object p2, p0, Lc8/kBq;->val$timedAction:Lc8/mBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lc8/kBq;->this$1:Lc8/lBq;

    iget-object v0, v0, Lc8/lBq;->this$0:Lc8/nBq;

    iget-object v0, v0, Lc8/nBq;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lc8/kBq;->val$timedAction:Lc8/mBq;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method
