.class public Lc8/bwq;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/cwq;->scheduleExact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/cwq;


# direct methods
.method constructor <init>(Lc8/cwq;)V
    .locals 0

    .prologue
    .line 298
    .local p0, "this":Lc8/bwq;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.2;"
    iput-object p1, p0, Lc8/bwq;->this$1:Lc8/cwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Lc8/bwq;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.2;"
    iget-object v0, p0, Lc8/bwq;->this$1:Lc8/cwq;

    invoke-virtual {v0}, Lc8/cwq;->nextWindow()V

    .line 303
    return-void
.end method
