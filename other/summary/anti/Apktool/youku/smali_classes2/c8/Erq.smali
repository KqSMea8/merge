.class public Lc8/Erq;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hrq;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Hrq;


# direct methods
.method constructor <init>(Lc8/Hrq;)V
    .locals 0

    .prologue
    .line 53
    .local p0, "this":Lc8/Erq;, "Lrx/internal/operators/OperatorDelay$1.1;"
    iput-object p1, p0, Lc8/Erq;->this$1:Lc8/Hrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Lc8/Erq;, "Lrx/internal/operators/OperatorDelay$1.1;"
    iget-object v0, p0, Lc8/Erq;->this$1:Lc8/Hrq;

    iget-boolean v0, v0, Lc8/Hrq;->done:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lc8/Erq;->this$1:Lc8/Hrq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Hrq;->done:Z

    .line 59
    iget-object v0, p0, Lc8/Erq;->this$1:Lc8/Hrq;

    iget-object v0, v0, Lc8/Hrq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 61
    :cond_0
    return-void
.end method
