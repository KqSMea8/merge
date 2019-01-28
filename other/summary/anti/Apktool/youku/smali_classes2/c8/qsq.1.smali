.class public final Lc8/qsq;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$State;,
        Lc8/psq;,
        Lc8/osq;,
        Lc8/msq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Lc8/Xzq",
        "<TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field final keySelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final mapFactory:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<",
            "Lc8/inq",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final valueSelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Inq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lc8/qsq;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v2

    sget v3, Lc8/fyq;->SIZE:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lc8/qsq;-><init>(Lc8/Inq;Lc8/Inq;IZLc8/Inq;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lc8/Inq;Lc8/Inq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/qsq;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    sget v3, Lc8/fyq;->SIZE:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lc8/qsq;-><init>(Lc8/Inq;Lc8/Inq;IZLc8/Inq;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lc8/Inq;Lc8/Inq;IZLc8/Inq;)V
    .locals 0
    .param p3, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;IZ",
            "Lc8/Inq",
            "<",
            "Lc8/inq",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lc8/qsq;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p5, "mapFactory":Lc8/Inq;, "Lrx/functions/Func1<Lrx/functions/Action1<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lc8/qsq;->keySelector:Lc8/Inq;

    .line 68
    iput-object p2, p0, Lc8/qsq;->valueSelector:Lc8/Inq;

    .line 69
    iput p3, p0, Lc8/qsq;->bufferSize:I

    .line 70
    iput-boolean p4, p0, Lc8/qsq;->delayError:Z

    .line 71
    iput-object p5, p0, Lc8/qsq;->mapFactory:Lc8/Inq;

    .line 72
    return-void
.end method

.method public constructor <init>(Lc8/Inq;Lc8/Inq;Lc8/Inq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;",
            "Lc8/Inq",
            "<",
            "Lc8/inq",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lc8/qsq;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lc8/Inq;, "Lrx/functions/Func1<Lrx/functions/Action1<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    sget v3, Lc8/fyq;->SIZE:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/qsq;-><init>(Lc8/Inq;Lc8/Inq;IZLc8/Inq;)V

    .line 64
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Xzq",
            "<TK;TV;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lc8/qsq;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    :try_start_0
    new-instance v0, Lc8/osq;

    iget-object v2, p0, Lc8/qsq;->keySelector:Lc8/Inq;

    iget-object v3, p0, Lc8/qsq;->valueSelector:Lc8/Inq;

    iget v4, p0, Lc8/qsq;->bufferSize:I

    iget-boolean v5, p0, Lc8/qsq;->delayError:Z

    iget-object v6, p0, Lc8/qsq;->mapFactory:Lc8/Inq;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lc8/osq;-><init>(Lc8/Omq;Lc8/Inq;Lc8/Inq;IZLc8/Inq;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "parent":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    new-instance v1, Lc8/lsq;

    invoke-direct {v1, p0, v0}, Lc8/lsq;-><init>(Lc8/qsq;Lc8/osq;)V

    invoke-static {v1}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 94
    iget-object v1, v0, Lc8/osq;->producer:Lc8/msq;

    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 96
    .end local v0    # "parent":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v7

    .line 81
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 82
    invoke-static {}, Lc8/wAq;->empty()Lc8/Omq;

    move-result-object v8

    .line 83
    .local v8, "parent2":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v8}, Lc8/Omq;->unsubscribe()V

    move-object v0, v8

    .line 84
    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    .local p0, "this":Lc8/qsq;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/qsq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
