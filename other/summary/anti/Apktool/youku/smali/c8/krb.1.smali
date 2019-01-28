.class public Lc8/krb;
.super Ljava/lang/Object;
.source "WXAudioModule.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/prb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WXAudioFocusListener"
.end annotation


# instance fields
.field meetMayDuck:Z

.field final synthetic this$0:Lc8/prb;


# direct methods
.method constructor <init>(Lc8/prb;)V
    .locals 1
    .param p1, "this$0"    # Lc8/prb;

    .prologue
    .line 595
    iput-object p1, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/krb;->meetMayDuck:Z

    return-void
.end method

.method private stopAll()V
    .locals 3

    .prologue
    .line 637
    iget-object v1, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-static {v1}, Lc8/prb;->access$1200(Lc8/prb;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 638
    .local v0, "id":Ljava/lang/Long;
    iget-object v2, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-virtual {v2, v0}, Lc8/prb;->stop(Ljava/lang/Long;)V

    goto :goto_0

    .line 640
    .end local v0    # "id":Ljava/lang/Long;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .param p1, "focusChange"    # I

    .prologue
    const/4 v3, 0x1

    .line 600
    const/4 v2, -0x2

    if-ne p1, v2, :cond_3

    .line 602
    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v2, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-static {v2}, Lc8/prb;->access$1200(Lc8/prb;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 604
    .local v0, "id":Ljava/lang/Long;
    iget-object v3, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-static {v3, v0}, Lc8/prb;->access$1300(Lc8/prb;Ljava/lang/Long;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 605
    .local v1, "p":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 606
    iget-object v3, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-virtual {v3, v0}, Lc8/prb;->pause(Ljava/lang/Long;)V

    .line 607
    iget-object v3, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-static {v3}, Lc8/prb;->access$1400(Lc8/prb;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "p":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    :cond_2
    :goto_1
    return-void

    .line 611
    :cond_3
    if-ne p1, v3, :cond_6

    .line 613
    monitor-enter p0

    .line 614
    :try_start_2
    iget-object v2, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-static {v2}, Lc8/prb;->access$1400(Lc8/prb;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 615
    .restart local v0    # "id":Ljava/lang/Long;
    iget-object v3, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-virtual {v3, v0}, Lc8/prb;->play(Ljava/lang/Long;)V

    goto :goto_2

    .line 621
    .end local v0    # "id":Ljava/lang/Long;
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 617
    :cond_4
    :try_start_3
    iget-boolean v2, p0, Lc8/krb;->meetMayDuck:Z

    if-eqz v2, :cond_5

    .line 618
    iget-object v2, p0, Lc8/krb;->this$0:Lc8/prb;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lc8/prb;->setVolume(F)V

    .line 619
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/krb;->meetMayDuck:Z

    .line 621
    :cond_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 622
    :cond_6
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 623
    monitor-enter p0

    .line 624
    :try_start_4
    iget-object v2, p0, Lc8/krb;->this$0:Lc8/prb;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Lc8/prb;->setVolume(F)V

    .line 625
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/krb;->meetMayDuck:Z

    .line 626
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 627
    :cond_7
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 629
    monitor-enter p0

    .line 630
    :try_start_5
    invoke-direct {p0}, Lc8/krb;->stopAll()V

    .line 631
    iget-object v2, p0, Lc8/krb;->this$0:Lc8/prb;

    invoke-static {v2}, Lc8/prb;->access$1100(Lc8/prb;)V

    .line 632
    monitor-exit p0

    goto :goto_1

    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2
.end method
