.class public Lc8/srq;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/trq;->startNewChunk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/trq;

.field final synthetic val$chunk:Ljava/util/List;


# direct methods
.method constructor <init>(Lc8/trq;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 182
    .local p0, "this":Lc8/srq;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.2;"
    iput-object p1, p0, Lc8/srq;->this$1:Lc8/trq;

    iput-object p2, p0, Lc8/srq;->val$chunk:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 185
    .local p0, "this":Lc8/srq;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.2;"
    iget-object v0, p0, Lc8/srq;->this$1:Lc8/trq;

    iget-object v1, p0, Lc8/srq;->val$chunk:Ljava/util/List;

    invoke-virtual {v0, v1}, Lc8/trq;->emitChunk(Ljava/util/List;)V

    .line 186
    return-void
.end method
