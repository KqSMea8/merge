.class public Lc8/Ygn;
.super Ljava/lang/Object;
.source "LaunchManager.java"

# interfaces
.implements Lc8/Xgn;


# static fields
.field public static final DETAIL_CLASS_NAME:Ljava/lang/String; = "com.youku.ui.activity.DetailActivity"

.field private static instance:Lc8/Ygn;


# instance fields
.field public final VIDEO_CHANNEL_TYPE:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string/jumbo v0, "video_channel_type"

    iput-object v0, p0, Lc8/Ygn;->VIDEO_CHANNEL_TYPE:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/Ygn;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lc8/Ygn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Ygn;->instance:Lc8/Ygn;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lc8/Ygn;

    invoke-direct {v0}, Lc8/Ygn;-><init>()V

    sput-object v0, Lc8/Ygn;->instance:Lc8/Ygn;

    .line 74
    :cond_0
    sget-object v0, Lc8/Ygn;->instance:Lc8/Ygn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private goActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 633
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 635
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 638
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 639
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private goActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "actionName"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://favorite_page_activity"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 647
    return-void
.end method


# virtual methods
.method public enterLaifenBeginShow(Ljava/lang/String;)V
    .locals 1
    .param p1, "cpsStr"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-static {}, Lc8/Ryo;->getInstance()Lc8/Ryo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Ryo;->enterLaifenBeginShow(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public enterLaifengHomePage(Ljava/lang/String;)V
    .locals 1
    .param p1, "cpsStr"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-static {}, Lc8/Ryo;->getInstance()Lc8/Ryo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Ryo;->enterLaifengHomePage(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public enterLaifengRoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roomId"    # Ljava/lang/String;
    .param p3, "cpsString"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-static {}, Lc8/Ryo;->getInstance()Lc8/Ryo;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lc8/Ryo;->enterLaifengRoom(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public enterLaifengRoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roomId"    # Ljava/lang/String;
    .param p3, "cpsString"    # Ljava/lang/String;
    .param p4, "roomType"    # I

    .prologue
    .line 520
    invoke-static {}, Lc8/Ryo;->getInstance()Lc8/Ryo;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lc8/Ryo;->enterLaifengRoom(Ljava/lang/String;Ljava/lang/String;I)V

    .line 521
    return-void
.end method

.method public goBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 453
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, "i":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public goChannelActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "channelsdk://channelmain"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 579
    return-void
.end method

.method public goChannelActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "sub_cid"    # I

    .prologue
    .line 583
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 584
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sub_channel_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 585
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "channelsdk://channelmain"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 586
    return-void
.end method

.method public goCommunityActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    if-eqz p1, :cond_0

    .line 465
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://community"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 467
    :cond_0
    return-void
.end method

.method public goCommunityActivity(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 471
    if-eqz p1, :cond_0

    .line 473
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://community"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 475
    :cond_0
    return-void
.end method

.method public goCommunityHotListActivityy(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 479
    if-eqz p1, :cond_0

    .line 481
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://communityhot"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 483
    :cond_0
    return-void
.end method

.method public goDownloadPage(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 619
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://download"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 620
    return-void
.end method

.method public goDownloadPageInner(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "goWhere"    # Ljava/lang/String;
    .param p3, "showid"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 625
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "go"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string/jumbo v1, "showid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "youku://download"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 628
    return-void
.end method

.method public goFavoritePageActivity(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Ygn;->goFavoritePageActivity(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 496
    return-void
.end method

.method public goFavoritePageActivity(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 500
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://favorite_page_activity"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 501
    return-void
.end method

.method public goInteractionWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/Ygn;->goInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 396
    return-void
.end method

.method public goInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 402
    invoke-static {p1, p2, p3}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 403
    return-void
.end method

.method public goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "vid"    # Ljava/lang/String;
    .param p4, "point"    # I

    .prologue
    .line 305
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/Ygn;->goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    return-void
.end method

.method public goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "vid"    # Ljava/lang/String;
    .param p4, "playlistId"    # Ljava/lang/String;
    .param p5, "point"    # I

    .prologue
    .line 312
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    .line 313
    .local v0, "download":Lc8/ven;
    invoke-interface {v0, p3}, Lc8/ven;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v1

    .line 314
    .local v1, "info":Lcom/youku/service/download/DownloadInfo;
    if-nez v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v3, "isFromLocal"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const-string/jumbo v3, "video_id"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v3, "point"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string/jumbo v3, "playlist_id"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v3, "isVerticalVideo"

    iget-boolean v4, v1, Lcom/youku/service/download/DownloadInfo;->isVerticalVideo:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    invoke-static {p1, v2}, Lc8/bzo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public goLogin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lc8/Ygn;->goLogin(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public goLogin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tips"    # Ljava/lang/String;

    .prologue
    .line 95
    const/16 v0, 0x1f4

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/thn;->startLoginActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public goLoginForResult(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 107
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lc8/Ygn;->goLoginForResult(Landroid/app/Activity;ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public goLoginForResult(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "tips"    # Ljava/lang/String;

    .prologue
    .line 112
    const/16 v0, 0x1f4

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/thn;->startLoginActivityForResult(Landroid/app/Activity;ILjava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public goLoginForResult(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    const/16 v0, 0x1f4

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/thn;->startLoginActivityForResult(Landroid/support/v4/app/Fragment;I)V

    .line 128
    :cond_0
    return-void
.end method

.method public goLoginForResult(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .param p3, "tips"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    const/16 v0, 0x1f4

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/thn;->startLoginActivityForResult(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public goMyCollectionsActivity(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Ygn;->goMyCollectionsActivity(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 506
    return-void
.end method

.method public goMyCollectionsActivity(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 510
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://collection/me"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 511
    return-void
.end method

.method public goPlay(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 251
    invoke-static {p1, v0}, Lc8/bzo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public goPlay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/Ygn;->goPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public goPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "playlist_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-static {p1, v0}, Lc8/bzo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public goPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "point"    # I
    .param p5, "isPay"    # Z

    .prologue
    .line 226
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lc8/Ygn;->goPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 227
    return-void
.end method

.method public goPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "point"    # I
    .param p5, "isPay"    # Z
    .param p6, "isDirectHorizontal"    # Z
    .param p7, "isNoAdv"    # Z
    .param p8, "isNoMid"    # Z

    .prologue
    .line 232
    const-string/jumbo v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lc8/Ygn;->goPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZZZLjava/lang/String;)V

    .line 233
    return-void
.end method

.method public goPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZZZLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "point"    # I
    .param p5, "isPay"    # Z
    .param p6, "isDirectHorizontal"    # Z
    .param p7, "isNoAdv"    # Z
    .param p8, "isNoMid"    # Z
    .param p9, "from"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isPay"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    if-eqz p6, :cond_0

    .line 261
    const-string/jumbo v1, "isDirectHorizontal"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    :cond_0
    if-eqz p7, :cond_1

    .line 264
    const-string/jumbo v1, "isNoAdv"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    :cond_1
    if-eqz p8, :cond_2

    .line 267
    const-string/jumbo v1, "isNoMid"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    :cond_2
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-static {p1, v0}, Lc8/bzo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method public goPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "playlistId"    # Ljava/lang/String;
    .param p5, "point"    # I
    .param p6, "isPay"    # Z

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isPay"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    const-string/jumbo v1, "playlist_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "lastViewVid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :cond_0
    invoke-static {p1, v0}, Lc8/bzo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method public goPlayLive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "liveId"    # Ljava/lang/String;
    .param p3, "liveUrl"    # Ljava/lang/String;
    .param p4, "liveImg"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1, p2, p3, p4}, Lc8/bzo;->launchLivePlayActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public goPlayLive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "liveId"    # Ljava/lang/String;
    .param p3, "liveUrl"    # Ljava/lang/String;
    .param p4, "liveImg"    # Ljava/lang/String;
    .param p5, "isPay"    # Z
    .param p6, "playlistId"    # Ljava/lang/String;
    .param p7, "channelType"    # I

    .prologue
    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-static {p1, p2, p3, p4}, Lc8/bzo;->launchLivePlayActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x34400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    const-string/jumbo v1, "liveid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v1, "liveurl"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string/jumbo v1, "liveimg"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string/jumbo v1, "isPay"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string/jumbo v1, "video_channel_type"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string/jumbo v1, "playlist_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public goPlayLocalVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "point"    # I

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, "detailIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string/jumbo v1, "videoPath"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string/jumbo v1, "point"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string/jumbo v1, "isfromLocalVideo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method public goPlayToComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "detail_action"

    const-string/jumbo v3, "startComment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const-string/jumbo v1, "playlist_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "lastViewVid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    :cond_0
    invoke-static {p1, v0}, Lc8/bzo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public goPlayToComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "playlistId"    # Ljava/lang/String;
    .param p5, "point"    # I

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "detail_action"

    const-string/jumbo v3, "startComment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string/jumbo v1, "playlist_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "lastViewVid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_0
    invoke-static {p1, v0}, Lc8/bzo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method public goPlayToComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "playlistId"    # Ljava/lang/String;
    .param p5, "point"    # I
    .param p6, "isNoAdv"    # Z
    .param p7, "isNoMid"    # Z

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "detail_action"

    const-string/jumbo v3, "startComment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const-string/jumbo v1, "playlist_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "lastViewVid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    :cond_0
    if-eqz p6, :cond_1

    .line 211
    const-string/jumbo v1, "isNoAdv"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    :cond_1
    if-eqz p7, :cond_2

    .line 214
    const-string/jumbo v1, "isNoMid"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    :cond_2
    invoke-static {p1, v0}, Lc8/bzo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method public goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "videoStage"    # I
    .param p5, "isPay"    # Z

    .prologue
    .line 280
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lc8/Ygn;->goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 281
    return-void
.end method

.method public goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "playlistId"    # Ljava/lang/String;
    .param p5, "videoStage"    # I
    .param p6, "isPay"    # Z

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video_stage"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isPay"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    const-string/jumbo v1, "playlist_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "lastViewVid"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    :cond_0
    invoke-static {p1, v0}, Lc8/bzo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public goScore(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 379
    invoke-static {p1}, Lc8/bzo;->goScore(Landroid/app/Activity;)V

    .line 380
    return-void
.end method

.method public goSearchActivity(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 567
    invoke-static {p1}, Lc8/Jzk;->launch(Landroid/content/Context;)V

    .line 568
    return-void
.end method

.method public goSearchActivity(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchFromVip"    # Z

    .prologue
    .line 572
    invoke-static {p1, p2}, Lc8/Jzk;->launch(Landroid/content/Context;Z)V

    .line 573
    return-void
.end method

.method public goTopicActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topicId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method public goUserChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "flag"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-static {p1, p2, p3, p4}, Lc8/bzo;->gotoUserChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public goVipProductPayActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 614
    invoke-static {p1}, Lc8/uAo;->goVipProductPayActivty(Landroid/app/Activity;)V

    .line 615
    return-void
.end method

.method public goWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 409
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lc8/Ygn;->goWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 410
    return-void
.end method

.method public goWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "getCookie"    # Z

    .prologue
    .line 426
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/Ygn;->goWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 427
    return-void
.end method

.method public goWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "getCookie"    # Z
    .param p5, "isAdver"    # Z

    .prologue
    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p2}, Lc8/cWo;->isWeexUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Lc8/cWo;->launchWeex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 446
    :goto_0
    return-void

    .line 441
    :cond_0
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string/jumbo v1, "isAdver"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    invoke-static {p1, p2, v0}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public goWebViewWithParameter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 416
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lc8/Ygn;->goWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 417
    return-void
.end method

.method public goZpdLive(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 540
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 541
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "youku://userlive"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 543
    return-void
.end method

.method public gotoMyUploadVideoPageActivityForResult(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "topicName"    # Ljava/lang/String;
    .param p3, "request_code"    # I

    .prologue
    .line 548
    const-class v2, Lc8/vdn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vdn;

    invoke-interface {v2}, Lc8/vdn;->isLogined()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    :try_start_0
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v2

    const-string/jumbo v3, "usercenter://userprofile"

    invoke-virtual {v2, v3}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    const-string/jumbo v2, "\u62b1\u6b49\uff0c\u6253\u5f00\u9875\u9762\u5931\u8d25"

    invoke-static {v2}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "\u4e0a\u4f20\u8bf7\u5148\u767b\u5f55"

    invoke-static {v2}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 557
    const-class v2, Lc8/fhn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/fhn;

    .line 558
    .local v1, "iLogin":Lc8/fhn;
    const-string/jumbo v2, ""

    invoke-interface {v1, p1, p3, v2}, Lc8/fhn;->goLoginForResult(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public initHomePage()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public lanchPaidActivity(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 731
    return-void
.end method

.method public launchCaptureActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://capture"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 359
    return-void
.end method

.method public launchChannelActivity(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 685
    if-nez p1, :cond_0

    .line 689
    :goto_0
    return-void

    .line 688
    :cond_0
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "channelsdk://channelall"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public launchChannelActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 667
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc8/Ygn;->goChannelActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchChannelActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "filter"    # Ljava/lang/String;

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 679
    :goto_0
    return-void

    .line 676
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 677
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "filter"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "channelsdk://channelmain"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public launchChannelActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "filter"    # Ljava/lang/String;
    .param p5, "isAll"    # I

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 713
    :goto_0
    return-void

    .line 709
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 710
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "filter"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string/jumbo v1, "isall"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 712
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "channelsdk://channelmain"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public launchChannelRankActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 653
    if-nez p1, :cond_0

    .line 657
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "channelsdk://channelrank"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public launchExploreCollectionsActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 716
    if-nez p1, :cond_0

    .line 720
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://explore_collections_activity"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public launchFillActivity(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "isFillActivity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 609
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 610
    return-void
.end method

.method public launchGameCenterHomeActivity(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    return-void
.end method

.method public launchHaveBuyActivity(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    return-void
.end method

.method public launchHistoryActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://history"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 370
    return-void
.end method

.method public launchHomePage(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/16 v1, 0x1f4

    invoke-static {v1}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/ui/activity/HomePageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "mIntent":Landroid/content/Intent;
    const/high16 v1, 0x34400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public launchHomePageActivity(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Ygn;->launchHomePageActivity(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 724
    return-void
.end method

.method public launchHomePageActivity(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 727
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://homepage"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 728
    return-void
.end method

.method public launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 347
    invoke-static {p1, p2, p3}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 348
    return-void
.end method

.method public launchPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 590
    invoke-static {p1, p2, p3}, Lc8/HTh;->launchPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 591
    return-void
.end method

.method public launchScoreActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/phone/home/activity/ScoreActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 365
    return-void
.end method

.method public launchSettingsActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://settings_activity"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 375
    return-void
.end method

.method public launchWelcomeActivity(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 696
    if-nez p1, :cond_0

    .line 700
    :goto_0
    return-void

    .line 699
    :cond_0
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://splash"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public showEggDialog(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    invoke-static {p1}, Lc8/oZo;->showEggDialog(Landroid/content/Context;)V

    .line 385
    return-void
.end method

.method public skipAd(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 595
    invoke-static {}, Lc8/Efh;->hasAdvMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget v0, v0, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->url_open_way:I

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget-object v1, v1, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->direct_url:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lc8/bzo;->openUrlByType(Landroid/content/Context;ILjava/lang/String;)V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-static {}, Lc8/bzo;->getSkipAdUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0, v1}, Lc8/HTh;->launchPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
