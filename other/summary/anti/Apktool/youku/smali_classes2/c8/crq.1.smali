.class public Lc8/crq;
.super Ljava/lang/Object;
.source "OperatorBufferWithSingleObservable.java"

# interfaces
.implements Lc8/Hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/frq;-><init>(Lc8/Vlq;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hnq",
        "<",
        "Lc8/Vlq",
        "<+TTClosing;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/frq;

.field final synthetic val$bufferClosing:Lc8/Vlq;


# direct methods
.method constructor <init>(Lc8/frq;Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 67
    .local p0, "this":Lc8/crq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.1;"
    iput-object p1, p0, Lc8/crq;->this$0:Lc8/frq;

    iput-object p2, p0, Lc8/crq;->val$bufferClosing:Lc8/Vlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<+TTClosing;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lc8/crq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.1;"
    iget-object v0, p0, Lc8/crq;->val$bufferClosing:Lc8/Vlq;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lc8/crq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.1;"
    invoke-virtual {p0}, Lc8/crq;->call()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
