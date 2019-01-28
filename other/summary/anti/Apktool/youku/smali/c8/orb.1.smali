.class public Lc8/orb;
.super Ljava/lang/Object;
.source "WXAudioModule.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/prb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WXAudioOnPreparedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/prb;


# direct methods
.method private constructor <init>(Lc8/prb;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/prb;Lc8/jrb;)V
    .locals 0
    .param p1, "x0"    # Lc8/prb;
    .param p2, "x1"    # Lc8/jrb;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lc8/orb;-><init>(Lc8/prb;)V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v6, 0x2

    .line 372
    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-static {v3, p1}, Lc8/prb;->access$100(Lc8/prb;Landroid/media/MediaPlayer;)Ljava/lang/Long;

    move-result-object v1

    .line 373
    .local v1, "id":Ljava/lang/Long;
    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-static {v3, v1, v6}, Lc8/prb;->access$200(Lc8/prb;Ljava/lang/Long;I)V

    .line 375
    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-static {v3}, Lc8/prb;->access$300(Lc8/prb;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-static {v3}, Lc8/prb;->access$300(Lc8/prb;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-virtual {v3, v1}, Lc8/prb;->play(Ljava/lang/Long;)V

    .line 377
    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-static {v3}, Lc8/prb;->access$300(Lc8/prb;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-static {v3}, Lc8/prb;->access$400(Lc8/prb;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 380
    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-static {v3}, Lc8/prb;->access$400(Lc8/prb;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string/jumbo v4, "duration"

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 384
    .local v2, "inner":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "duration"

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v1, v4, v2}, Lc8/prb;->access$500(Lc8/prb;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 386
    .local v0, "callback":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lc8/orb;->this$0:Lc8/prb;

    invoke-static {v3, v0}, Lc8/prb;->access$600(Lc8/prb;Ljava/util/Map;)V

    .line 387
    return-void
.end method
