.class public final Lc8/Oxq;
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
    name = "ReplaySupplierBuffer"
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
.field private final bufferSize:I

.field private final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/Vlq;I)V
    .locals 0
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lc8/Oxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lc8/Oxq;->source:Lc8/Vlq;

    .line 274
    iput p2, p0, Lc8/Oxq;->bufferSize:I

    .line 275
    return-void
.end method

.method public synthetic constructor <init>(Lc8/Vlq;ILc8/Exq;)V
    .locals 0
    .param p1, "x0"    # Lc8/Vlq;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lc8/Exq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lc8/Oxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    invoke-direct {p0, p1, p2}, Lc8/Oxq;-><init>(Lc8/Vlq;I)V

    return-void
.end method


# virtual methods
.method public call()Lc8/Vzq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lc8/Oxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    iget-object v0, p0, Lc8/Oxq;->source:Lc8/Vlq;

    iget v1, p0, Lc8/Oxq;->bufferSize:I

    invoke-virtual {v0, v1}, Lc8/Vlq;->replay(I)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lc8/Oxq;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    invoke-virtual {p0}, Lc8/Oxq;->call()Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method
