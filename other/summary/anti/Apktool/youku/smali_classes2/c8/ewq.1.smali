.class public Lc8/ewq;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fwq;->startNewChunk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/fwq;

.field final synthetic val$chunk:Lc8/Zvq;


# direct methods
.method constructor <init>(Lc8/fwq;Lc8/Zvq;)V
    .locals 0

    .prologue
    .line 466
    .local p0, "this":Lc8/ewq;, "Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber.2;"
    iput-object p1, p0, Lc8/ewq;->this$1:Lc8/fwq;

    iput-object p2, p0, Lc8/ewq;->val$chunk:Lc8/Zvq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 470
    .local p0, "this":Lc8/ewq;, "Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber.2;"
    iget-object v0, p0, Lc8/ewq;->this$1:Lc8/fwq;

    iget-object v1, p0, Lc8/ewq;->val$chunk:Lc8/Zvq;

    invoke-virtual {v0, v1}, Lc8/fwq;->terminateChunk(Lc8/Zvq;)V

    .line 471
    return-void
.end method
