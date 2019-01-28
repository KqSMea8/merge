.class public Lc8/pyq;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vyq;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    .local p0, "this":Lc8/pyq;, "Lrx/internal/util/ScalarSynchronousSingle.1;"
    iput-object p1, p0, Lc8/pyq;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/pyq;, "Lrx/internal/util/ScalarSynchronousSingle.1;"
    .local p1, "te":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lc8/pyq;->val$t:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lc8/pyq;, "Lrx/internal/util/ScalarSynchronousSingle.1;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/pyq;->call(Lc8/Nmq;)V

    return-void
.end method
