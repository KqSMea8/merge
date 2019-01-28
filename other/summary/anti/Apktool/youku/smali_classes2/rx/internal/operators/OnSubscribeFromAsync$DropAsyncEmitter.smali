.class public final Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;
.source "OnSubscribeFromAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DropAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7404e4d77326a273L


# direct methods
.method public constructor <init>(Lc8/Omq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;-><init>(Lc8/Omq;)V

    .line 249
    return-void
.end method


# virtual methods
.method onOverflow()V
    .locals 0

    .prologue
    .line 254
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter<TT;>;"
    return-void
.end method
