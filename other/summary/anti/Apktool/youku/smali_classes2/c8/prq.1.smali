.class public Lc8/prq;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qrq;->scheduleExact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/qrq;


# direct methods
.method constructor <init>(Lc8/qrq;)V
    .locals 0

    .prologue
    .line 281
    .local p0, "this":Lc8/prq;, "Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber.1;"
    iput-object p1, p0, Lc8/prq;->this$1:Lc8/qrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lc8/prq;, "Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber.1;"
    iget-object v0, p0, Lc8/prq;->this$1:Lc8/qrq;

    invoke-virtual {v0}, Lc8/qrq;->emit()V

    .line 285
    return-void
.end method
