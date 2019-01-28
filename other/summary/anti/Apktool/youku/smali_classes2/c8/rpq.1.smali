.class public final Lc8/rpq;
.super Ljava/lang/Object;
.source "OnSubscribeConcatMap.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/opq;,
        Lc8/ppq;,
        Lc8/qpq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# static fields
.field public static final BOUNDARY:I = 0x1

.field public static final END:I = 0x2

.field public static final IMMEDIATE:I


# instance fields
.field final delayErrorMode:I

.field final mapper:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/Inq;II)V
    .locals 0
    .param p3, "prefetch"    # I
    .param p4, "delayErrorMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/rpq;, "Lrx/internal/operators/OnSubscribeConcatMap<TT;TR;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lc8/rpq;->source:Lc8/Vlq;

    .line 67
    iput-object p2, p0, Lc8/rpq;->mapper:Lc8/Inq;

    .line 68
    iput p3, p0, Lc8/rpq;->prefetch:I

    .line 69
    iput p4, p0, Lc8/rpq;->delayErrorMode:I

    .line 70
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lc8/rpq;, "Lrx/internal/operators/OnSubscribeConcatMap<TT;TR;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    iget v2, p0, Lc8/rpq;->delayErrorMode:I

    if-nez v2, :cond_1

    .line 77
    new-instance v1, Lc8/qAq;

    invoke-direct {v1, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 82
    .local v1, "s":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    :goto_0
    new-instance v0, Lc8/qpq;

    iget-object v2, p0, Lc8/rpq;->mapper:Lc8/Inq;

    iget v3, p0, Lc8/rpq;->prefetch:I

    iget v4, p0, Lc8/rpq;->delayErrorMode:I

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/qpq;-><init>(Lc8/Omq;Lc8/Inq;II)V

    .line 84
    .local v0, "parent":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 85
    iget-object v2, v0, Lc8/qpq;->inner:Lc8/YBq;

    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 86
    new-instance v2, Lc8/npq;

    invoke-direct {v2, p0, v0}, Lc8/npq;-><init>(Lc8/rpq;Lc8/qpq;)V

    invoke-virtual {p1, v2}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 93
    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lc8/rpq;->source:Lc8/Vlq;

    invoke-virtual {v2, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 96
    :cond_0
    return-void

    .line 79
    .end local v0    # "parent":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    .end local v1    # "s":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    :cond_1
    move-object v1, p1

    .restart local v1    # "s":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lc8/rpq;, "Lrx/internal/operators/OnSubscribeConcatMap<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/rpq;->call(Lc8/Omq;)V

    return-void
.end method
