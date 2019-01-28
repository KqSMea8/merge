.class public Lc8/klh;
.super Ljava/lang/Object;
.source "YoukuInitDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/llh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P2pRunnable"
.end annotation


# instance fields
.field offline:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "offline"    # Z

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-boolean p1, p0, Lc8/klh;->offline:Z

    .line 571
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 575
    iget-boolean v7, p0, Lc8/klh;->offline:Z

    if-eqz v7, :cond_1

    .line 576
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 577
    const-string/jumbo v5, "p2p_switch"

    const/4 v7, -0x1

    invoke-static {v5, v7}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v4

    .line 578
    .local v4, "sw":I
    const-string/jumbo v5, "p2p_download"

    invoke-static {v5, v6}, Lc8/VLj;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 579
    .local v0, "download":Z
    const-string/jumbo v5, "p2p_play"

    invoke-static {v5, v6}, Lc8/VLj;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 580
    .local v3, "play":Z
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v3}, Lc8/ben;->setP2p_switch(IZZ)V

    .line 598
    .end local v0    # "download":Z
    .end local v3    # "play":Z
    .end local v4    # "sw":I
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    :try_start_0
    sget-object v7, Lc8/VLj;->context:Landroid/content/Context;

    const-string/jumbo v8, "p2p_init"

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 585
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "p2p_switch"

    sget-object v8, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v8, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v8, v8, Lcom/youku/vo/Initial$AllSwitchs;->p2p_switch:I

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 586
    const-string/jumbo v8, "download_switch"

    sget-object v7, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v7, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v7, v7, Lcom/youku/vo/Initial$AllSwitchs;->p2p_download:I

    if-ne v7, v5, :cond_2

    move v7, v5

    :goto_1
    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 587
    const-string/jumbo v8, "play_switch"

    sget-object v7, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v7, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v7, v7, Lcom/youku/vo/Initial$AllSwitchs;->p2p_vod:I

    if-ne v7, v5, :cond_3

    move v7, v5

    :goto_2
    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 590
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 591
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v7

    sget-wide v8, Lc8/lSh;->TIMESTAMP:J

    invoke-virtual {v7, v8, v9}, Lc8/ben;->setTimeStamp(J)V

    .line 592
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v8

    sget-object v7, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v7, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v9, v7, Lcom/youku/vo/Initial$AllSwitchs;->p2p_switch:I

    sget-object v7, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v7, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v7, v7, Lcom/youku/vo/Initial$AllSwitchs;->p2p_download:I

    if-ne v7, v5, :cond_4

    move v7, v5

    :goto_3
    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v10, v10, Lcom/youku/vo/Initial$AllSwitchs;->p2p_vod:I

    if-ne v10, v5, :cond_5

    :goto_4
    invoke-virtual {v8, v9, v7, v5}, Lc8/ben;->setP2p_switch(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "YoukuInitDataManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v7, v6

    .line 586
    goto :goto_1

    :cond_3
    move v7, v6

    .line 587
    goto :goto_2

    :cond_4
    move v7, v6

    .line 592
    goto :goto_3

    :cond_5
    move v5, v6

    goto :goto_4
.end method
