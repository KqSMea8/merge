.class public Lc8/dwq;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fwq;->scheduleChunk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/fwq;


# direct methods
.method constructor <init>(Lc8/fwq;)V
    .locals 0

    .prologue
    .line 442
    .local p0, "this":Lc8/dwq;, "Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber.1;"
    iput-object p1, p0, Lc8/dwq;->this$1:Lc8/fwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 446
    .local p0, "this":Lc8/dwq;, "Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber.1;"
    iget-object v0, p0, Lc8/dwq;->this$1:Lc8/fwq;

    invoke-virtual {v0}, Lc8/fwq;->startNewChunk()V

    .line 447
    return-void
.end method
