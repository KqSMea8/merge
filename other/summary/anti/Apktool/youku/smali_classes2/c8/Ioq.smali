.class public final Lc8/Ioq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcat.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Hoq;
    }
.end annotation


# instance fields
.field final prefetch:I

.field final sources:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<",
            "Lc8/Plq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;I)V
    .locals 0
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Plq;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lc8/Ioq;->sources:Lc8/Vlq;

    .line 35
    iput p2, p0, Lc8/Ioq;->prefetch:I

    .line 36
    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 2
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 40
    new-instance v0, Lc8/Hoq;

    iget v1, p0, Lc8/Ioq;->prefetch:I

    invoke-direct {v0, p1, v1}, Lc8/Hoq;-><init>(Lc8/Nlq;I)V

    .line 41
    .local v0, "parent":Lc8/Hoq;
    invoke-interface {p1, v0}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 42
    iget-object v1, p0, Lc8/Ioq;->sources:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 43
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ioq;->call(Lc8/Nlq;)V

    return-void
.end method
