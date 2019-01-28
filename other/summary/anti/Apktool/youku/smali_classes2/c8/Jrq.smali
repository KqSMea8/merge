.class public Lc8/Jrq;
.super Ljava/lang/Object;
.source "OperatorDelayWithSelector.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Krq;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<TV;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Krq;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/Krq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lc8/Jrq;, "Lrx/internal/operators/OperatorDelayWithSelector$1.1;"
    iput-object p1, p0, Lc8/Jrq;->this$1:Lc8/Krq;

    iput-object p2, p0, Lc8/Jrq;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lc8/Jrq;, "Lrx/internal/operators/OperatorDelayWithSelector$1.1;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lc8/Jrq;->val$t:Ljava/lang/Object;

    return-object v0
.end method
