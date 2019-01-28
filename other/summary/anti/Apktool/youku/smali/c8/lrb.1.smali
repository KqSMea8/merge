.class public Lc8/lrb;
.super Ljava/lang/Object;
.source "WXAudioModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mrb;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/mrb;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lc8/mrb;J)V
    .locals 0
    .param p1, "this$1"    # Lc8/mrb;

    .prologue
    .line 420
    iput-object p1, p0, Lc8/lrb;->this$1:Lc8/mrb;

    iput-wide p2, p0, Lc8/lrb;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 423
    iget-object v0, p0, Lc8/lrb;->this$1:Lc8/mrb;

    iget-object v0, v0, Lc8/mrb;->this$0:Lc8/prb;

    invoke-static {v0}, Lc8/prb;->access$1000(Lc8/prb;)Ljava/util/List;

    move-result-object v0

    iget-wide v2, p0, Lc8/lrb;->val$id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lc8/lrb;->this$1:Lc8/mrb;

    iget-object v0, v0, Lc8/mrb;->this$0:Lc8/prb;

    iget-wide v2, p0, Lc8/lrb;->val$id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/prb;->play(Ljava/lang/Long;)V

    .line 429
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lc8/lrb;->this$1:Lc8/mrb;

    iget-object v0, v0, Lc8/mrb;->this$0:Lc8/prb;

    iget-object v1, p0, Lc8/lrb;->this$1:Lc8/mrb;

    iget-object v1, v1, Lc8/mrb;->this$0:Lc8/prb;

    iget-wide v2, p0, Lc8/lrb;->val$id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v1, v2, v3, v4}, Lc8/prb;->access$500(Lc8/prb;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/prb;->access$600(Lc8/prb;Ljava/util/Map;)V

    .line 427
    iget-object v0, p0, Lc8/lrb;->this$1:Lc8/mrb;

    iget-object v0, v0, Lc8/mrb;->this$0:Lc8/prb;

    invoke-static {v0}, Lc8/prb;->access$1100(Lc8/prb;)V

    goto :goto_0
.end method
