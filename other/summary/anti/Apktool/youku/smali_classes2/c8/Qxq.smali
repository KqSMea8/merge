.class public final Lc8/Qxq;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lc8/Hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReplaySupplierNoParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Hnq",
        "<",
        "Lc8/Vzq",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lc8/Qxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lc8/Qxq;->source:Lc8/Vlq;

    .line 249
    return-void
.end method

.method public synthetic constructor <init>(Lc8/Vlq;Lc8/Exq;)V
    .locals 0
    .param p1, "x0"    # Lc8/Vlq;
    .param p2, "x1"    # Lc8/Exq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lc8/Qxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    invoke-direct {p0, p1}, Lc8/Qxq;-><init>(Lc8/Vlq;)V

    return-void
.end method


# virtual methods
.method public call()Lc8/Vzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lc8/Qxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    iget-object v0, p0, Lc8/Qxq;->source:Lc8/Vlq;

    invoke-virtual {v0}, Lc8/Vlq;->replay()Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lc8/Qxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    invoke-virtual {p0}, Lc8/Qxq;->call()Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method
