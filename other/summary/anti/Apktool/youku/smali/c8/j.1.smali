.class public Lc8/j;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/n;


# direct methods
.method constructor <init>(Lc8/n;)V
    .locals 0
    .param p1, "this$0"    # Lc8/n;

    .prologue
    .line 61
    iput-object p1, p0, Lc8/j;->this$0:Lc8/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 64
    iget-object v0, p0, Lc8/j;->this$0:Lc8/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/n;->access$002(Lc8/n;J)J

    .line 65
    iget-object v0, p0, Lc8/j;->this$0:Lc8/n;

    iget-object v1, p0, Lc8/j;->this$0:Lc8/n;

    invoke-static {v1}, Lc8/n;->access$000(Lc8/n;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/n;->access$100(Lc8/n;J)V

    .line 66
    iget-object v0, p0, Lc8/j;->this$0:Lc8/n;

    invoke-static {v0}, Lc8/n;->access$200(Lc8/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lc8/j;->this$0:Lc8/n;

    invoke-static {v0}, Lc8/n;->access$300(Lc8/n;)Lc8/l;

    move-result-object v0

    invoke-interface {v0, p0}, Lc8/l;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 69
    :cond_0
    return-void
.end method
