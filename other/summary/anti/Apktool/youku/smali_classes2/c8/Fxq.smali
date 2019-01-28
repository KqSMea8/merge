.class public final Lc8/Fxq;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lc8/Jnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectorCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Jnq",
        "<TR;TT;TR;>;"
    }
.end annotation


# instance fields
.field final collector:Lc8/jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/jnq",
            "<TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/jnq",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lc8/Fxq;, "Lrx/internal/util/InternalObservableUtils$CollectorCaller<TT;TR;>;"
    .local p1, "collector":Lc8/jnq;, "Lrx/functions/Action2<TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lc8/Fxq;->collector:Lc8/jnq;

    .line 374
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lc8/Fxq;, "Lrx/internal/util/InternalObservableUtils$CollectorCaller<TT;TR;>;"
    .local p1, "state":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Fxq;->collector:Lc8/jnq;

    invoke-interface {v0, p1, p2}, Lc8/jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    return-object p1
.end method
