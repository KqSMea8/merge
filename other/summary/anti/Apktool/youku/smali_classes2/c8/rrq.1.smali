.class public Lc8/rrq;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/trq;->scheduleChunk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/trq;


# direct methods
.method constructor <init>(Lc8/trq;)V
    .locals 0

    .prologue
    .line 167
    .local p0, "this":Lc8/rrq;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.1;"
    iput-object p1, p0, Lc8/rrq;->this$1:Lc8/trq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lc8/rrq;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.1;"
    iget-object v0, p0, Lc8/rrq;->this$1:Lc8/trq;

    invoke-virtual {v0}, Lc8/trq;->startNewChunk()V

    .line 171
    return-void
.end method
