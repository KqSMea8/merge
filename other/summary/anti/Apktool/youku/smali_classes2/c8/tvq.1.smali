.class public final Lc8/tvq;
.super Ljava/lang/Object;
.source "OperatorToMap.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/svq;
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
        "<TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
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
            "<TK;TV;>;>;"
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
    .locals 1
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
    .line 64
    .local p0, "this":Lc8/tvq;, "Lrx/internal/operators/OperatorToMap<TT;TK;TV;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lc8/svq;

    invoke-direct {v0}, Lc8/svq;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lc8/tvq;-><init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)V
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
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lc8/tvq;, "Lrx/internal/operators/OperatorToMap<TT;TK;TV;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Ljava/util/Map<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lc8/tvq;->keySelector:Lc8/Inq;

    .line 79
    iput-object p2, p0, Lc8/tvq;->valueSelector:Lc8/Inq;

    .line 80
    iput-object p3, p0, Lc8/tvq;->mapFactory:Lc8/Hnq;

    .line 82
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
            "<TK;TV;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lc8/tvq;, "Lrx/internal/operators/OperatorToMap<TT;TK;TV;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/Map<TK;TV;>;>;"
    :try_start_0
    iget-object v4, p0, Lc8/tvq;->mapFactory:Lc8/Hnq;

    invoke-interface {v4}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .local v2, "localMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v1, v2

    .line 100
    .local v1, "fLocalMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v3, Lc8/rvq;

    invoke-direct {v3, p0, p1, v1, p1}, Lc8/rvq;-><init>(Lc8/tvq;Lc8/Omq;Ljava/util/Map;Lc8/Omq;)V

    .end local v1    # "fLocalMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v2    # "localMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 93
    invoke-static {}, Lc8/wAq;->empty()Lc8/Omq;

    move-result-object v3

    .line 94
    .local v3, "parent":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v3}, Lc8/Omq;->unsubscribe()V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lc8/tvq;, "Lrx/internal/operators/OperatorToMap<TT;TK;TV;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/tvq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
