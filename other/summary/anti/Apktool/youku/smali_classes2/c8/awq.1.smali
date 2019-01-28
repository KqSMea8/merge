.class public Lc8/awq;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/cwq;-><init>(Lc8/hwq;Lc8/Omq;Lc8/Zlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/cwq;

.field final synthetic val$this$0:Lc8/hwq;


# direct methods
.method constructor <init>(Lc8/cwq;Lc8/hwq;)V
    .locals 0

    .prologue
    .line 123
    .local p0, "this":Lc8/awq;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.1;"
    iput-object p1, p0, Lc8/awq;->this$1:Lc8/cwq;

    iput-object p2, p0, Lc8/awq;->val$this$0:Lc8/hwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lc8/awq;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.1;"
    iget-object v0, p0, Lc8/awq;->this$1:Lc8/cwq;

    iget-object v0, v0, Lc8/cwq;->state:Lc8/gwq;

    iget-object v0, v0, Lc8/gwq;->consumer:Lc8/Wlq;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lc8/awq;->this$1:Lc8/cwq;

    invoke-virtual {v0}, Lc8/cwq;->unsubscribe()V

    .line 130
    :cond_0
    return-void
.end method
