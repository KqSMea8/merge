.class public final Lc8/htq;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final resumeFunction:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Vlq",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Vlq",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lc8/htq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "f":Lc8/Inq;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lc8/htq;->resumeFunction:Lc8/Inq;

    .line 81
    return-void
.end method

.method public static withException(Lc8/Vlq;)Lc8/htq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/htq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lc8/htq;

    new-instance v1, Lc8/etq;

    invoke-direct {v1, p0}, Lc8/etq;-><init>(Lc8/Vlq;)V

    invoke-direct {v0, v1}, Lc8/htq;-><init>(Lc8/Inq;)V

    return-object v0
.end method

.method public static withOther(Lc8/Vlq;)Lc8/htq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/htq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lc8/htq;

    new-instance v1, Lc8/dtq;

    invoke-direct {v1, p0}, Lc8/dtq;-><init>(Lc8/Vlq;)V

    invoke-direct {v0, v1}, Lc8/htq;-><init>(Lc8/Inq;)V

    return-object v0
.end method

.method public static withSingle(Lc8/Inq;)Lc8/htq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lc8/htq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "resumeFunction":Lc8/Inq;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Lc8/htq;

    new-instance v1, Lc8/ctq;

    invoke-direct {v1, p0}, Lc8/ctq;-><init>(Lc8/Inq;)V

    invoke-direct {v0, v1}, Lc8/htq;-><init>(Lc8/Inq;)V

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lc8/htq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Jwq;

    invoke-direct {v0}, Lc8/Jwq;-><init>()V

    .line 87
    .local v0, "pa":Lc8/Jwq;
    new-instance v2, Lc8/YBq;

    invoke-direct {v2}, Lc8/YBq;-><init>()V

    .line 89
    .local v2, "ssub":Lc8/YBq;
    new-instance v1, Lc8/gtq;

    invoke-direct {v1, p0, p1, v0, v2}, Lc8/gtq;-><init>(Lc8/htq;Lc8/Omq;Lc8/Jwq;Lc8/YBq;)V

    .line 163
    .local v1, "parent":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {v2, v1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 165
    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 166
    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 168
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lc8/htq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/htq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
