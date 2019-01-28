.class public Lc8/wuq;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xuq;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xuq;


# direct methods
.method constructor <init>(Lc8/xuq;)V
    .locals 0

    .prologue
    .line 118
    .local p0, "this":Lc8/wuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.2;"
    iput-object p1, p0, Lc8/wuq;->this$0:Lc8/xuq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lc8/wuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.2;"
    const-wide/16 v2, 0x0

    .line 122
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 123
    iget-object v0, p0, Lc8/wuq;->this$0:Lc8/xuq;

    invoke-virtual {v0, p1, p2}, Lc8/xuq;->childRequested(J)V

    .line 128
    :cond_0
    return-void

    .line 125
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "n >= 0 expected but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
