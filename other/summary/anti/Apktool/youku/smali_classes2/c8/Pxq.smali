.class public final Lc8/Pxq;
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
    name = "ReplaySupplierBufferTime"
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
.method private constructor <init>(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lc8/Pxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p4, p0, Lc8/Pxq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 307
    iput-object p1, p0, Lc8/Pxq;->source:Lc8/Vlq;

    .line 308
    iput-wide p2, p0, Lc8/Pxq;->time:J

    .line 309
    iput-object p5, p0, Lc8/Pxq;->scheduler:Lc8/amq;

    .line 310
    return-void
.end method

.method public synthetic constructor <init>(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Exq;)V
    .locals 0
    .param p1, "x0"    # Lc8/Vlq;
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "x3"    # Lc8/amq;
    .param p6, "x4"    # Lc8/Exq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lc8/Pxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    invoke-direct/range {p0 .. p5}, Lc8/Pxq;-><init>(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    return-void
.end method


# virtual methods
.method public call()Lc8/Vzq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lc8/Pxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    iget-object v0, p0, Lc8/Pxq;->source:Lc8/Vlq;

    iget-wide v2, p0, Lc8/Pxq;->time:J

    iget-object v1, p0, Lc8/Pxq;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lc8/Pxq;->scheduler:Lc8/amq;

    invoke-virtual {v0, v2, v3, v1, v4}, Lc8/Vlq;->replay(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    .local p0, "this":Lc8/Pxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    invoke-virtual {p0}, Lc8/Pxq;->call()Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method
