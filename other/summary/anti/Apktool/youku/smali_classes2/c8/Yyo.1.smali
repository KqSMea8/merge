.class public Lc8/Yyo;
.super Ljava/lang/Object;
.source "StaticsUtil.java"


# static fields
.field public static final HOMEPAGE_NAVI_BAR_FEED_SPM:Ljava/lang/String; = "feed"

.field public static final HOMEPAGE_NAVI_BAR_HOME_SPM:Ljava/lang/String; = "home"

.field public static final HOMEPAGE_NAVI_BAR_HOT_SPM:Ljava/lang/String; = "hot"

.field public static final HOMEPAGE_NAVI_BAR_PAGENAME:Ljava/lang/String; = "page_bnavigate"

.field public static final HOMEPAGE_NAVI_BAR_SPMAB:Ljava/lang/String; = "a2h0f.8166709."

.field public static final HOMEPAGE_NAVI_BAR_STAR_SPM:Ljava/lang/String; = "star"

.field public static final HOMEPAGE_NAVI_BAR_USER_SPM:Ljava/lang/String; = "space"

.field public static final HOMEPAGE_NAVI_BAR_VIP_SPM:Ljava/lang/String; = "vip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateArg1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "spmC"    # Ljava/lang/String;
    .param p1, "spmD"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pagename_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateSpm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "spmC"    # Ljava/lang/String;
    .param p1, "spmD"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "a2h0f.8166709."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static homePageTabSwitch(ILcom/youku/ui/activity/HomePageActivity;)V
    .locals 3
    .param p0, "position"    # I
    .param p1, "homePageActivity"    # Lcom/youku/ui/activity/HomePageActivity;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.youku.action.HOME_TAB_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.key.HOME_TAB_BEFORE"

    sget v2, Lc8/rin;->currentFragment:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "com.youku.key.HOME_TAB_AFTER"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 56
    return-void
.end method
