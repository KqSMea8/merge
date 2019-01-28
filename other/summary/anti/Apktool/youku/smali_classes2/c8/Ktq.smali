.class public Lc8/Ktq;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lc8/Hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Otq;-><init>(Ljava/lang/Object;Lc8/Jnq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hnq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$initialValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    .local p0, "this":Lc8/Ktq;, "Lrx/internal/operators/OperatorScan.1;"
    iput-object p1, p0, Lc8/Ktq;->val$initialValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lc8/Ktq;, "Lrx/internal/operators/OperatorScan.1;"
    iget-object v0, p0, Lc8/Ktq;->val$initialValue:Ljava/lang/Object;

    return-object v0
.end method
