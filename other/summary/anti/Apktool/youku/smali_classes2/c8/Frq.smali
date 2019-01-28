.class public Lc8/Frq;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hrq;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Hrq;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lc8/Hrq;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lc8/Frq;, "Lrx/internal/operators/OperatorDelay$1.2;"
    iput-object p1, p0, Lc8/Frq;->this$1:Lc8/Hrq;

    iput-object p2, p0, Lc8/Frq;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lc8/Frq;, "Lrx/internal/operators/OperatorDelay$1.2;"
    iget-object v0, p0, Lc8/Frq;->this$1:Lc8/Hrq;

    iget-boolean v0, v0, Lc8/Hrq;->done:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lc8/Frq;->this$1:Lc8/Hrq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Hrq;->done:Z

    .line 73
    iget-object v0, p0, Lc8/Frq;->this$1:Lc8/Hrq;

    iget-object v0, v0, Lc8/Hrq;->val$child:Lc8/Omq;

    iget-object v1, p0, Lc8/Frq;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Lc8/Frq;->this$1:Lc8/Hrq;

    iget-object v0, v0, Lc8/Hrq;->val$worker:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 76
    :cond_0
    return-void
.end method
