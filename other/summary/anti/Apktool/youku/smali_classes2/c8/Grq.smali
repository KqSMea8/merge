.class public Lc8/Grq;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hrq;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Hrq;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/Hrq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    .local p0, "this":Lc8/Grq;, "Lrx/internal/operators/OperatorDelay$1.3;"
    iput-object p1, p0, Lc8/Grq;->this$1:Lc8/Hrq;

    iput-object p2, p0, Lc8/Grq;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lc8/Grq;, "Lrx/internal/operators/OperatorDelay$1.3;"
    iget-object v0, p0, Lc8/Grq;->this$1:Lc8/Hrq;

    iget-boolean v0, v0, Lc8/Hrq;->done:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lc8/Grq;->this$1:Lc8/Hrq;

    iget-object v0, v0, Lc8/Hrq;->val$child:Lc8/Omq;

    iget-object v1, p0, Lc8/Grq;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method
