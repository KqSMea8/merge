.class public final Lc8/tyq;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalScheduledEmission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lc8/amq;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/amq;Ljava/lang/Object;)V
    .locals 0
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lc8/tyq;, "Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lc8/tyq;->scheduler:Lc8/amq;

    .line 93
    iput-object p2, p0, Lc8/tyq;->value:Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lc8/tyq;, "Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission<TT;>;"
    .local p1, "singleSubscriber":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v1, p0, Lc8/tyq;->scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 99
    .local v0, "worker":Lc8/Zlq;
    invoke-virtual {p1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 100
    new-instance v1, Lc8/uyq;

    iget-object v2, p0, Lc8/tyq;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lc8/uyq;-><init>(Lc8/Nmq;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 101
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 87
    .local p0, "this":Lc8/tyq;, "Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission<TT;>;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/tyq;->call(Lc8/Nmq;)V

    return-void
.end method
