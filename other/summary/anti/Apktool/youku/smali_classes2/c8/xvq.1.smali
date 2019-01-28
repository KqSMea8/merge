.class public final Lc8/xvq;
.super Ljava/lang/Object;
.source "OperatorToMultimap.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vvq;,
        Lc8/wvq;
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
        "Ljava/util/Map",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;TT;>;"
    }
.end annotation


# instance fields
.field final collectionFactory:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final keySelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field private final mapFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
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
.method public constructor <init>(Lc8/Inq;Lc8/Inq;)V
    .locals 2
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
    .line 79
    .local p0, "this":Lc8/xvq;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lc8/wvq;

    invoke-direct {v0}, Lc8/wvq;-><init>()V

    new-instance v1, Lc8/vvq;

    invoke-direct {v1}, Lc8/vvq;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lc8/xvq;-><init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;Lc8/Inq;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;",
            "Lc8/Hnq",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lc8/xvq;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v0, Lc8/vvq;

    invoke-direct {v0}, Lc8/vvq;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/xvq;-><init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;Lc8/Inq;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;",
            "Lc8/Hnq",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lc8/Inq",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lc8/xvq;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p4, "collectionFactory":Lc8/Inq;, "Lrx/functions/Func1<-TK;+Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lc8/xvq;->keySelector:Lc8/Inq;

    .line 114
    iput-object p2, p0, Lc8/xvq;->valueSelector:Lc8/Inq;

    .line 115
    iput-object p3, p0, Lc8/xvq;->mapFactory:Lc8/Hnq;

    .line 116
    iput-object p4, p0, Lc8/xvq;->collectionFactory:Lc8/Inq;

    .line 117
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lc8/xvq;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    :try_start_0
    iget-object v4, p0, Lc8/xvq;->mapFactory:Lc8/Hnq;

    invoke-interface {v4}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v2, "localMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    move-object v1, v2

    .line 137
    .local v1, "fLocalMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    new-instance v3, Lc8/uvq;

    invoke-direct {v3, p0, p1, v1, p1}, Lc8/uvq;-><init>(Lc8/xvq;Lc8/Omq;Ljava/util/Map;Lc8/Omq;)V

    .end local v1    # "fLocalMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .end local v2    # "localMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    :goto_0
    return-object v3

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 128
    invoke-virtual {p1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 130
    invoke-static {}, Lc8/wAq;->empty()Lc8/Omq;

    move-result-object v3

    .line 131
    .local v3, "parent":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v3}, Lc8/Omq;->unsubscribe()V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lc8/xvq;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/xvq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
