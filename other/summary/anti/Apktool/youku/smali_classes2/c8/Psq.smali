.class public Lc8/Psq;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qsq;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qsq;


# direct methods
.method constructor <init>(Lc8/Qsq;)V
    .locals 0

    .prologue
    .line 141
    .local p0, "this":Lc8/Psq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber.1;"
    iput-object p1, p0, Lc8/Psq;->this$0:Lc8/Qsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 145
    .local p0, "this":Lc8/Psq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber.1;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lc8/Psq;->this$0:Lc8/Qsq;

    iget-object v0, v0, Lc8/Qsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lc8/ioq;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 147
    iget-object v0, p0, Lc8/Psq;->this$0:Lc8/Qsq;

    invoke-virtual {v0}, Lc8/Qsq;->schedule()V

    .line 149
    :cond_0
    return-void
.end method
