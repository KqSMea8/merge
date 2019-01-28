.class public final Lc8/Uxq;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectorAndObserveOn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lc8/Vlq",
        "<TT;>;",
        "Lc8/Vlq",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lc8/amq;

.field final selector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Inq;Lc8/amq;)V
    .locals 0
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lc8/Uxq;, "Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn<TT;TR;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lc8/Uxq;->selector:Lc8/Inq;

    .line 193
    iput-object p2, p0, Lc8/Uxq;->scheduler:Lc8/amq;

    .line 194
    return-void
.end method


# virtual methods
.method public call(Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lc8/Uxq;, "Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn<TT;TR;>;"
    .local p1, "t":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lc8/Uxq;->selector:Lc8/Inq;

    invoke-interface {v0, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vlq;

    iget-object v1, p0, Lc8/Uxq;->scheduler:Lc8/amq;

    invoke-virtual {v0, v1}, Lc8/Vlq;->observeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 185
    .local p0, "this":Lc8/Uxq;, "Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn<TT;TR;>;"
    check-cast p1, Lc8/Vlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Uxq;->call(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
