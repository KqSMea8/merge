.class public final Lc8/Rxq;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lc8/Hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReplaySupplierTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Hnq",
        "<",
        "Lc8/Vzq",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final scheduler:Lc8/amq;

.field private final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private constructor <init>(Lc8/Vlq;IJLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 1
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lc8/Rxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-wide p3, p0, Lc8/Rxq;->time:J

    .line 346
    iput-object p5, p0, Lc8/Rxq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 347
    iput-object p6, p0, Lc8/Rxq;->scheduler:Lc8/amq;

    .line 348
    iput p2, p0, Lc8/Rxq;->bufferSize:I

    .line 349
    iput-object p1, p0, Lc8/Rxq;->source:Lc8/Vlq;

    .line 350
    return-void
.end method

.method public synthetic constructor <init>(Lc8/Vlq;IJLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Exq;)V
    .locals 1
    .param p1, "x0"    # Lc8/Vlq;
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "x4"    # Lc8/amq;
    .param p7, "x5"    # Lc8/Exq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lc8/Rxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    invoke-direct/range {p0 .. p6}, Lc8/Rxq;-><init>(Lc8/Vlq;IJLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    return-void
.end method


# virtual methods
.method public call()Lc8/Vzq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lc8/Rxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    iget-object v0, p0, Lc8/Rxq;->source:Lc8/Vlq;

    iget v1, p0, Lc8/Rxq;->bufferSize:I

    iget-wide v2, p0, Lc8/Rxq;->time:J

    iget-object v4, p0, Lc8/Rxq;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lc8/Rxq;->scheduler:Lc8/amq;

    invoke-virtual/range {v0 .. v5}, Lc8/Vlq;->replay(IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lc8/Rxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    invoke-virtual {p0}, Lc8/Rxq;->call()Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method
