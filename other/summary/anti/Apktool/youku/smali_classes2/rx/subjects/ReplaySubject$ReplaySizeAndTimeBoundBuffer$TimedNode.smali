.class public final Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ABq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimedNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33895503f3b7c21dL


# instance fields
.field public final timestamp:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final value:Ljava/lang/Object;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1146
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    .line 1147
    iput-wide p2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    .line 1148
    return-void
.end method
