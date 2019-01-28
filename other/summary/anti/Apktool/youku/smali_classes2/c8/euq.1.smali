.class public Lc8/euq;
.super Ljava/lang/Object;
.source "OperatorSkipTimed.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/guq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/guq;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lc8/guq;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lc8/euq;, "Lrx/internal/operators/OperatorSkipTimed.1;"
    iput-object p1, p0, Lc8/euq;->this$0:Lc8/guq;

    iput-object p2, p0, Lc8/euq;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 49
    .local p0, "this":Lc8/euq;, "Lrx/internal/operators/OperatorSkipTimed.1;"
    iget-object v0, p0, Lc8/euq;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    return-void
.end method
