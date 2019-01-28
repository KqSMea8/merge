.class public Lc8/mrb;
.super Ljava/lang/Object;
.source "WXAudioModule.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/prb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WXAudioOnCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/prb;


# direct methods
.method private constructor <init>(Lc8/prb;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lc8/mrb;->this$0:Lc8/prb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/prb;Lc8/jrb;)V
    .locals 0
    .param p1, "x0"    # Lc8/prb;
    .param p2, "x1"    # Lc8/jrb;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lc8/mrb;-><init>(Lc8/prb;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 408
    iget-object v1, p0, Lc8/mrb;->this$0:Lc8/prb;

    invoke-static {v1, p1}, Lc8/prb;->access$100(Lc8/prb;Landroid/media/MediaPlayer;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 410
    .local v2, "id":J
    iget-object v1, p0, Lc8/mrb;->this$0:Lc8/prb;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v1, v4, v5}, Lc8/prb;->access$200(Lc8/prb;Ljava/lang/Long;I)V

    .line 412
    const/16 v0, 0x64

    .line 414
    .local v0, "delay":I
    :try_start_0
    iget-object v1, p0, Lc8/mrb;->this$0:Lc8/prb;

    invoke-static {v1}, Lc8/prb;->access$400(Lc8/prb;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v4, "delay"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lc8/mrb;->this$0:Lc8/prb;

    invoke-static {v1}, Lc8/prb;->access$400(Lc8/prb;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v4, "delay"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 420
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/mrb;->this$0:Lc8/prb;

    iget-object v1, v1, Lc8/prb;->handler:Landroid/os/Handler;

    new-instance v4, Lc8/lrb;

    invoke-direct {v4, p0, v2, v3}, Lc8/lrb;-><init>(Lc8/mrb;J)V

    int-to-long v6, v0

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
