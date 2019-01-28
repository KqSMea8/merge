.class public abstract Lc8/IEn;
.super Lc8/Qn;
.source "BaseActivity.java"

# interfaces
.implements Lc8/Cfh;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final KEY_YOUKU:Ljava/lang/String; = "MTA6QkJVTFptNXM=b0df"

.field private static final MIN_CLICK_COUNT:I = 0x5

.field private static final MIN_CLICK_TIME:I = 0x1f4

.field public static final REQUESTCODE_UPLOAD_LOGIN:I = 0x14

.field public static final TAG_CaptureActivity:I = 0x82

.field public static final TAG_ChannelMainActivity:I = 0x83

.field public static TAG_HomePageActivity:I

.field public static TAG_SearchActivity:I

.field public static THEME:I

.field public static THEME_NoActionBar:I

.field private static isSearchOpen:Z

.field private static isSearchRunning:Z

.field public static lanscape:I

.field public static playCount:I


# instance fields
.field public TAG_BaseActivity:I

.field public THEME_SET:I

.field protected actionBar:Lc8/mn;

.field private clickCount:I

.field public currentClickTime:J

.field private custom_title:Landroid/widget/TextView;

.field public custom_title_line:Landroid/widget/LinearLayout;

.field private isEgg:Z

.field private key_currentString:Ljava/lang/String;

.field private kuboxClickPosition:I

.field public lastClickTime:J

.field public mActionMode:Lc8/lq;

.field private mActionModeCallback:Lc8/kq;

.field public menuHelper:Lc8/bHn;

.field private networkReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    sget v0, Lcom/youku/phone/R$style;->Theme_Youku:I

    sput v0, Lc8/IEn;->THEME:I

    .line 78
    sget v0, Lcom/youku/phone/R$style;->Theme_Youku_NoActionBar:I

    sput v0, Lc8/IEn;->THEME_NoActionBar:I

    .line 79
    const/16 v0, 0x80

    sput v0, Lc8/IEn;->TAG_HomePageActivity:I

    .line 80
    const/16 v0, 0x81

    sput v0, Lc8/IEn;->TAG_SearchActivity:I

    .line 84
    const/16 v0, 0x50

    sput v0, Lc8/IEn;->lanscape:I

    .line 85
    sput-boolean v1, Lc8/IEn;->isSearchOpen:Z

    .line 86
    sput-boolean v1, Lc8/IEn;->isSearchRunning:Z

    .line 92
    sput v1, Lc8/IEn;->playCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lc8/Qn;-><init>()V

    .line 87
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/IEn;->key_currentString:Ljava/lang/String;

    .line 89
    iput v1, p0, Lc8/IEn;->kuboxClickPosition:I

    .line 99
    iput-boolean v1, p0, Lc8/IEn;->isEgg:Z

    .line 102
    iput v1, p0, Lc8/IEn;->clickCount:I

    .line 103
    iput-wide v2, p0, Lc8/IEn;->lastClickTime:J

    .line 104
    iput-wide v2, p0, Lc8/IEn;->currentClickTime:J

    .line 289
    new-instance v0, Lc8/EEn;

    invoke-direct {v0, p0}, Lc8/EEn;-><init>(Lc8/IEn;)V

    iput-object v0, p0, Lc8/IEn;->mActionModeCallback:Lc8/kq;

    .line 864
    new-instance v0, Lc8/HEn;

    invoke-direct {v0, p0}, Lc8/HEn;-><init>(Lc8/IEn;)V

    iput-object v0, p0, Lc8/IEn;->networkReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lc8/IEn;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/IEn;

    .prologue
    .line 74
    iget-object v0, p0, Lc8/IEn;->custom_title:Landroid/widget/TextView;

    return-object v0
.end method

.method private clearEggData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 806
    iput-boolean v0, p0, Lc8/IEn;->isEgg:Z

    .line 807
    iput v0, p0, Lc8/IEn;->clickCount:I

    .line 808
    iput-wide v2, p0, Lc8/IEn;->lastClickTime:J

    .line 809
    iput-wide v2, p0, Lc8/IEn;->currentClickTime:J

    .line 810
    return-void
.end method

.method public static getIsSearchOpen()Z
    .locals 1

    .prologue
    .line 833
    sget-boolean v0, Lc8/IEn;->isSearchOpen:Z

    return v0
.end method

.method public static getIsSearchRunning()Z
    .locals 1

    .prologue
    .line 841
    sget-boolean v0, Lc8/IEn;->isSearchRunning:Z

    return v0
.end method

.method public static getScoreShowCounts()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 551
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "Score_Show"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 552
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "Score_Show_Count-1"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static declared-synchronized setIsSearchOpen(Z)V
    .locals 2
    .param p0, "is"    # Z

    .prologue
    .line 829
    const-class v0, Lc8/IEn;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lc8/IEn;->isSearchOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    monitor-exit v0

    return-void

    .line 829
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsSearchRunning(Z)V
    .locals 2
    .param p0, "is"    # Z

    .prologue
    .line 837
    const-class v0, Lc8/IEn;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lc8/IEn;->isSearchRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    monitor-exit v0

    return-void

    .line 837
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setScoreShowCounts(I)V
    .locals 4
    .param p0, "count"    # I

    .prologue
    .line 556
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "Score_Show"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 557
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "Score_Show_Count-1"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 558
    return-void
.end method

.method private showScore()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 543
    sget v0, Lc8/IEn;->playCount:I

    if-le v0, v1, :cond_0

    invoke-static {}, Lc8/IEn;->getScoreShowCounts()I

    move-result v0

    if-nez v0, :cond_0

    .line 544
    invoke-static {v1}, Lc8/IEn;->setScoreShowCounts(I)V

    .line 546
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0}, Lc8/Xgn;->launchScoreActivity(Landroid/content/Context;)V

    .line 548
    :cond_0
    return-void
.end method

.method public static trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;
    .param p3, "encodeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 899
    .local p2, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lc8/vdn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "y4."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 920
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "========\u7edf\u8ba1\u4fe1\u606f==name== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ==page== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ==\u6269\u5c55\u53c2\u6570== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ==\u52a0\u7801\u793a\u4f8b== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 922
    const-class v0, Lc8/sin;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/sin;

    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v5, ""

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lc8/sin;->pageOnclickTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 924
    return-void

    .line 901
    :cond_1
    const-string/jumbo v0, "y1."

    goto :goto_0
.end method


# virtual methods
.method public addCustomDeleteTitle(Lc8/lq;)V
    .locals 6
    .param p1, "arg0"    # Lc8/lq;

    .prologue
    .line 361
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 362
    .local v1, "inflater2":Landroid/view/LayoutInflater;
    sget v4, Lcom/youku/phone/R$layout;->action_mode_title:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 363
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/youku/phone/R$id;->title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 364
    .local v2, "title":Landroid/view/View;
    const-class v4, Lc8/sin;

    invoke-static {v4}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/sin;

    invoke-interface {v4, p0}, Lc8/sin;->getCurrentNavigationActivityParameter(Landroid/app/Activity;)Ljava/util/HashMap;

    move-result-object v0

    .line 365
    .local v0, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lc8/FEn;

    invoke-direct {v4, p0, v0}, Lc8/FEn;-><init>(Lc8/IEn;Ljava/util/HashMap;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-virtual {p1, v3}, Lc8/lq;->setCustomView(Landroid/view/View;)V

    .line 379
    return-void
.end method

.method public clickEggData()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/IEn;->currentClickTime:J

    .line 814
    iget-wide v2, p0, Lc8/IEn;->currentClickTime:J

    iget-wide v4, p0, Lc8/IEn;->lastClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 815
    iget-wide v2, p0, Lc8/IEn;->currentClickTime:J

    iput-wide v2, p0, Lc8/IEn;->lastClickTime:J

    .line 816
    iget v1, p0, Lc8/IEn;->clickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/IEn;->clickCount:I

    .line 825
    :goto_0
    iget v1, p0, Lc8/IEn;->clickCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lc8/IEn;->isEgg:Z

    .line 826
    return-void

    .line 818
    :cond_1
    iget-wide v2, p0, Lc8/IEn;->lastClickTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 819
    iget v1, p0, Lc8/IEn;->clickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/IEn;->clickCount:I

    .line 823
    :goto_1
    iget-wide v2, p0, Lc8/IEn;->currentClickTime:J

    iput-wide v2, p0, Lc8/IEn;->lastClickTime:J

    goto :goto_0

    .line 821
    :cond_2
    iput v0, p0, Lc8/IEn;->clickCount:I

    goto :goto_1
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 856
    invoke-super {p0}, Lc8/Qn;->finish()V

    .line 858
    return-void
.end method

.method public getCustomActionMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomTitleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public abstract getPageName()Ljava/lang/String;
.end method

.method protected getScreenData()V
    .locals 27

    .prologue
    .line 561
    invoke-static {}, Lc8/Knk;->haveLandScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lc8/Knk;->havePortScreen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 563
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc8/IEn;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    .line 564
    .local v21, "display":Landroid/view/Display;
    new-instance v22, Landroid/util/DisplayMetrics;

    invoke-direct/range {v22 .. v22}, Landroid/util/DisplayMetrics;-><init>()V

    .line 565
    .local v22, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v21 .. v22}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 566
    move-object/from16 v0, v22

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v22

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v4, v5, :cond_9

    .line 567
    invoke-static {}, Lc8/Knk;->readLandActionBarHeight()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lc8/IEn;->getSupportActionBar()Lc8/mn;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 568
    invoke-virtual/range {p0 .. p0}, Lc8/IEn;->getSupportActionBar()Lc8/mn;

    move-result-object v4

    invoke-virtual {v4}, Lc8/mn;->getHeight()I

    move-result v4

    invoke-static {v4}, Lc8/Knk;->writeLandActionBarHeight(I)V

    .line 570
    :cond_1
    invoke-static {}, Lc8/Knk;->haveLandScreen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 572
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 573
    .local v24, "frame":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lc8/IEn;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 575
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 576
    .local v2, "left":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    .line 577
    .local v25, "right":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    .line 578
    .local v20, "bottom":I
    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 580
    .local v3, "top":I
    move-object/from16 v0, v22

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 581
    .local v6, "land_height":I
    move-object/from16 v0, v22

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 582
    .local v7, "land_width":I
    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 583
    .local v26, "sdk_version":I
    const/16 v4, 0xb

    move/from16 v0, v26

    if-ge v0, v4, :cond_3

    .line 585
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lc8/Knk;->writeLandScreen(IIIIII)V

    .line 586
    .end local v2    # "left":I
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, v3

    move v12, v7

    move v13, v6

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    .line 674
    .end local v3    # "top":I
    .end local v6    # "land_height":I
    .end local v7    # "land_width":I
    .end local v20    # "bottom":I
    .end local v21    # "display":Landroid/view/Display;
    .end local v22    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v24    # "frame":Landroid/graphics/Rect;
    .end local v25    # "right":I
    .end local v26    # "sdk_version":I
    :cond_2
    :goto_0
    return-void

    .line 587
    .restart local v2    # "left":I
    .restart local v3    # "top":I
    .restart local v6    # "land_height":I
    .restart local v7    # "land_width":I
    .restart local v20    # "bottom":I
    .restart local v21    # "display":Landroid/view/Display;
    .restart local v22    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v24    # "frame":Landroid/graphics/Rect;
    .restart local v25    # "right":I
    .restart local v26    # "sdk_version":I
    :cond_3
    const/16 v4, 0xb

    move/from16 v0, v26

    if-eq v0, v4, :cond_4

    const/16 v4, 0xc

    move/from16 v0, v26

    if-ne v0, v4, :cond_5

    .line 588
    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v11, v6, v20

    move v12, v6

    move v13, v7

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writeLandScreen(IIIIII)V

    .line 589
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v11, v6, v20

    move v12, v7

    move v13, v6

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    goto :goto_0

    .line 590
    :cond_5
    const/16 v4, 0xc

    move/from16 v0, v26

    if-le v0, v4, :cond_7

    const/16 v4, 0x11

    move/from16 v0, v26

    if-ge v0, v4, :cond_7

    .line 592
    move/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lc8/Knk;->getRealWidth(ILandroid/view/Display;)I

    move-result v7

    .line 593
    move/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lc8/Knk;->getRealHeight(ILandroid/view/Display;)I

    move-result v6

    .line 594
    sub-int v4, v7, v25

    sub-int v5, v6, v20

    invoke-static/range {v2 .. v7}, Lc8/Knk;->writeLandScreen(IIIIII)V

    .line 595
    sub-int v4, v7, v25

    if-lez v4, :cond_6

    .line 598
    sub-int v10, v7, v25

    const/4 v11, 0x0

    move v8, v2

    move v9, v3

    move v12, v7

    move v13, v6

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    .line 601
    :cond_6
    sub-int v4, v6, v20

    if-ltz v4, :cond_2

    .line 604
    sub-int v10, v7, v25

    sub-int v11, v6, v20

    move v8, v2

    move v9, v3

    move v12, v7

    move v13, v6

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    goto :goto_0

    .line 606
    :cond_7
    const/16 v4, 0x10

    move/from16 v0, v26

    if-le v0, v4, :cond_2

    .line 608
    new-instance v23, Landroid/util/DisplayMetrics;

    invoke-direct/range {v23 .. v23}, Landroid/util/DisplayMetrics;-><init>()V

    .line 610
    .local v23, "displayMetrics2":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lc8/IEn;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 611
    move-object/from16 v0, v23

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 612
    move-object/from16 v0, v23

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 613
    sub-int v4, v7, v25

    sub-int v5, v6, v20

    invoke-static/range {v2 .. v7}, Lc8/Knk;->writeLandScreen(IIIIII)V

    .line 614
    sub-int v4, v7, v25

    if-lez v4, :cond_8

    .line 617
    const/4 v10, 0x0

    sub-int v11, v7, v25

    move v8, v2

    move v9, v3

    move v12, v7

    move v13, v6

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    .line 619
    :cond_8
    sub-int v4, v6, v20

    if-ltz v4, :cond_2

    .line 622
    sub-int v10, v7, v25

    sub-int v11, v6, v20

    move v8, v2

    move v9, v3

    move v12, v7

    move v13, v6

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    goto/16 :goto_0

    .line 628
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v6    # "land_height":I
    .end local v7    # "land_width":I
    .end local v20    # "bottom":I
    .end local v23    # "displayMetrics2":Landroid/util/DisplayMetrics;
    .end local v24    # "frame":Landroid/graphics/Rect;
    .end local v25    # "right":I
    .end local v26    # "sdk_version":I
    :cond_9
    invoke-static {}, Lc8/Knk;->readPortActionBarHeight()I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lc8/IEn;->getSupportActionBar()Lc8/mn;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 629
    invoke-virtual/range {p0 .. p0}, Lc8/IEn;->getSupportActionBar()Lc8/mn;

    move-result-object v4

    invoke-virtual {v4}, Lc8/mn;->getHeight()I

    move-result v4

    invoke-static {v4}, Lc8/Knk;->writePortActionBarHeight(I)V

    .line 631
    :cond_a
    invoke-static {}, Lc8/Knk;->havePortScreen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 632
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 633
    .restart local v24    # "frame":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lc8/IEn;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 634
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 635
    .restart local v2    # "left":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    .line 636
    .restart local v25    # "right":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    .line 637
    .restart local v20    # "bottom":I
    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 638
    .restart local v3    # "top":I
    move-object/from16 v0, v22

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 639
    .local v12, "port_height":I
    move-object/from16 v0, v22

    iget v13, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 640
    .local v13, "port_width":I
    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 641
    .restart local v26    # "sdk_version":I
    const/16 v4, 0xb

    move/from16 v0, v26

    if-ge v0, v4, :cond_b

    .line 643
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, v3

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    .line 644
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v15, v3

    move/from16 v18, v13

    move/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lc8/Knk;->writeLandScreen(IIIIII)V

    goto/16 :goto_0

    .line 645
    :cond_b
    const/16 v4, 0xb

    move/from16 v0, v26

    if-eq v0, v4, :cond_c

    const/16 v4, 0xc

    move/from16 v0, v26

    if-ne v0, v4, :cond_d

    .line 646
    :cond_c
    const/4 v8, 0x0

    const/4 v10, 0x0

    sub-int v11, v12, v20

    move v9, v3

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    .line 647
    const/4 v14, 0x0

    const/16 v16, 0x0

    sub-int v17, v12, v20

    move v15, v3

    move/from16 v18, v13

    move/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lc8/Knk;->writeLandScreen(IIIIII)V

    goto/16 :goto_0

    .line 648
    :cond_d
    const/16 v4, 0xc

    move/from16 v0, v26

    if-le v0, v4, :cond_e

    const/16 v4, 0x11

    move/from16 v0, v26

    if-ge v0, v4, :cond_e

    .line 653
    move/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lc8/Knk;->getRealHeight(ILandroid/view/Display;)I

    move-result v12

    .line 654
    const/4 v8, 0x0

    const/4 v10, 0x0

    sub-int v11, v12, v20

    move v9, v3

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    .line 656
    const/4 v14, 0x0

    const/16 v16, 0x0

    sub-int v17, v12, v20

    move v15, v3

    move/from16 v18, v13

    move/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lc8/Knk;->writeLandScreen(IIIIII)V

    goto/16 :goto_0

    .line 658
    :cond_e
    const/16 v4, 0x10

    move/from16 v0, v26

    if-le v0, v4, :cond_2

    .line 661
    new-instance v23, Landroid/util/DisplayMetrics;

    invoke-direct/range {v23 .. v23}, Landroid/util/DisplayMetrics;-><init>()V

    .line 663
    .restart local v23    # "displayMetrics2":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lc8/IEn;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 664
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 665
    move-object/from16 v0, v23

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 666
    move-object/from16 v0, v23

    iget v13, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 667
    sub-int v10, v13, v25

    sub-int v11, v12, v20

    move v8, v2

    move v9, v3

    invoke-static/range {v8 .. v13}, Lc8/Knk;->writePortScreen(IIIIII)V

    .line 669
    const/4 v14, 0x0

    const/16 v16, 0x0

    sub-int v17, v12, v20

    move v15, v3

    move/from16 v18, v13

    move/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lc8/Knk;->writeLandScreen(IIIIII)V

    goto/16 :goto_0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lc8/IEn;->onGoToOtherActivity()V

    .line 155
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/IEn;->key_currentString:Ljava/lang/String;

    .line 156
    iget v0, p0, Lc8/IEn;->TAG_BaseActivity:I

    sget v1, Lc8/IEn;->TAG_HomePageActivity:I

    if-eq v0, v1, :cond_0

    .line 158
    invoke-super {p0}, Lc8/Qn;->onBackPressed()V

    .line 160
    :cond_0
    return-void
.end method

.method protected hasActionBar()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public menuClick(I)Z
    .locals 7
    .param p1, "itemId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 164
    const-class v2, Lc8/sin;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sin;

    invoke-interface {v2, p0}, Lc8/sin;->getCurrentNavigationActivityParameter(Landroid/app/Activity;)Ljava/util/HashMap;

    move-result-object v1

    .line 165
    .local v1, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sparse-switch p1, :sswitch_data_0

    .line 274
    :goto_0
    return v5

    .line 167
    :sswitch_0
    invoke-virtual {p0}, Lc8/IEn;->goBack()V

    goto :goto_0

    .line 170
    :sswitch_1
    const-string/jumbo v2, "buttontype"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v2, "\u641c\u7d22\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.search"

    invoke-static {v2, v3, v1, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    sget v2, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 180
    :cond_0
    const-class v2, Lc8/Xgn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Xgn;

    invoke-interface {v2, p0}, Lc8/Xgn;->goSearchActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 183
    :sswitch_2
    const-string/jumbo v2, "\u5bfc\u822a\u7f13\u5b58\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.cache"

    invoke-static {v2, v3, v1, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lc8/IEn;->onMenuCacheClick()V

    goto :goto_0

    .line 190
    :sswitch_3
    const-string/jumbo v2, "\u5bfc\u822a\u64ad\u653e\u5386\u53f2\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.history"

    invoke-static {v2, v3, v1, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lc8/IEn;->onMenuHistoryClick()V

    goto :goto_0

    .line 197
    :sswitch_4
    const-string/jumbo v2, "\u5bfc\u822a\u4e0a\u4f20\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.upload"

    invoke-static {v2, v3, v1, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lc8/IEn;->onMenuUploadClick()V

    goto :goto_0

    .line 204
    :sswitch_5
    const-string/jumbo v2, "\u5bfc\u822a\u5e38\u7528\u8bbe\u7f6e\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.setting"

    invoke-static {v2, v3, v6, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lc8/IEn;->onMenuSettingClick()V

    goto :goto_0

    .line 209
    :sswitch_6
    invoke-virtual {p0}, Lc8/IEn;->onMenuRefreshClick()V

    goto/16 :goto_0

    .line 212
    :sswitch_7
    const-string/jumbo v2, "\u5bfc\u822a\u95ee\u9898\u53cd\u9988\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.problem"

    invoke-static {v2, v3, v6, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lc8/IEn;->onMenuFeedBackClick()V

    goto/16 :goto_0

    .line 217
    :sswitch_8
    const-string/jumbo v2, "\u5bfc\u822a\u4e3a\u6211\u8bc4\u5206\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.score"

    invoke-static {v2, v3, v6, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lc8/IEn;->onMenuRatingClick()V

    goto/16 :goto_0

    .line 230
    :sswitch_9
    const-string/jumbo v2, "\u5bfc\u822a\u626b\u4e00\u626b\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.scan"

    invoke-static {v2, v3, v1, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lc8/IEn;->onMenuSaoSaoClick()V

    goto/16 :goto_0

    .line 237
    :sswitch_a
    const-string/jumbo v2, "\u6e38\u620f\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.game"

    invoke-static {v2, v3, v1, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lc8/IEn;->onMenuGameClick()V

    goto/16 :goto_0

    .line 244
    :sswitch_b
    const-string/jumbo v2, "\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "editBar.deleteClick"

    invoke-static {v2, v3, v1, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lc8/IEn;->onMenuEditClick()V

    goto/16 :goto_0

    .line 251
    :sswitch_c
    new-instance v0, Lc8/Aap;

    iget-object v2, p0, Lc8/IEn;->menuHelper:Lc8/bHn;

    invoke-virtual {v2}, Lc8/bHn;->getActionMenus()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lc8/DEn;

    invoke-direct {v3, p0}, Lc8/DEn;-><init>(Lc8/IEn;)V

    invoke-direct {v0, p0, v2, v3}, Lc8/Aap;-><init>(Lc8/IEn;Ljava/util/List;Lc8/xap;)V

    .line 257
    .local v0, "a":Lc8/Aap;
    invoke-virtual {v0}, Lc8/Aap;->show()V

    .line 259
    const-string/jumbo v2, "\u70b9\u51fb\u66f4\u591a"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.moreclick"

    invoke-static {v2, v3, v1, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v0    # "a":Lc8/Aap;
    :sswitch_d
    const-string/jumbo v2, "\u70b9\u51fb\u4f1a\u5458icon"

    const-string/jumbo v3, "\u5bfc\u822a\u9875"

    const-string/jumbo v4, "navigate.vip"

    invoke-static {v2, v3, v1, v4}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lc8/IEn;->onMenuVipClick()V

    goto/16 :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_b
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_c
        0x3f4 -> :sswitch_6
        0x3f6 -> :sswitch_d
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public menuItemClicked(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/MenuItem;

    .prologue
    .line 527
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 718
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 719
    packed-switch p1, :pswitch_data_0

    .line 725
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lc8/Qn;->onActivityResult(IILandroid/content/Intent;)V

    .line 726
    return-void

    .line 721
    :pswitch_0
    invoke-virtual {p0}, Lc8/IEn;->onMenuUploadClick()V

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 846
    invoke-super {p0}, Lc8/Qn;->onBackPressed()V

    .line 847
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-virtual {p0}, Lc8/IEn;->hasActionBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    sget v0, Lc8/IEn;->THEME:I

    invoke-virtual {p0, v0}, Lc8/IEn;->setTheme(I)V

    .line 126
    :goto_0
    invoke-super {p0, p1}, Lc8/Qn;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/IEn;->setRequestedOrientation(I)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string/jumbo v0, "isSearchOpen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc8/IEn;->isSearchOpen:Z

    .line 133
    const-string/jumbo v0, "searchViewString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/IEn;->key_currentString:Ljava/lang/String;

    .line 136
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lc8/IEn;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lc8/IEn;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    iput-object v0, p0, Lc8/IEn;->actionBar:Lc8/mn;

    .line 138
    iget-object v0, p0, Lc8/IEn;->actionBar:Lc8/mn;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lc8/IEn;->actionBar:Lc8/mn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/mn;->setElevation(F)V

    .line 140
    iget-object v0, p0, Lc8/IEn;->actionBar:Lc8/mn;

    sget v1, Lcom/youku/phone/R$drawable;->toolbar_back_selector:I

    invoke-virtual {v0, v1}, Lc8/mn;->setHomeAsUpIndicator(I)V

    .line 144
    :cond_1
    return-void

    .line 123
    :cond_2
    sget v0, Lc8/IEn;->THEME_NoActionBar:I

    invoke-virtual {p0, v0}, Lc8/IEn;->setTheme(I)V

    goto :goto_0
.end method

.method public onDeleteTitleCreate(Lc8/lq;)V
    .locals 0
    .param p1, "arg0"    # Lc8/lq;

    .prologue
    .line 357
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lc8/Qn;->onDestroy()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/IEn;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    return-void
.end method

.method public onDestroyActionEvent()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/IEn;->mActionMode:Lc8/lq;

    .line 384
    return-void
.end method

.method public onGoToOtherActivity()V
    .locals 0

    .prologue
    .line 777
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 781
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    .line 782
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    sget v0, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    move v0, v1

    .line 802
    :goto_0
    return v0

    .line 787
    :cond_0
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0}, Lc8/Xgn;->goSearchActivity(Landroid/content/Context;)V

    move v0, v1

    .line 788
    goto :goto_0

    .line 791
    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 792
    goto :goto_0

    .line 795
    :cond_2
    iget-boolean v0, p0, Lc8/IEn;->isEgg:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    .line 796
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_3

    .line 797
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0}, Lc8/Xgn;->showEggDialog(Landroid/content/Context;)V

    .line 798
    invoke-direct {p0}, Lc8/IEn;->clearEggData()V

    move v0, v1

    .line 799
    goto :goto_0

    .line 802
    :cond_3
    invoke-super {p0, p1, p2}, Lc8/Qn;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuCacheClick()V
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lc8/IEn;->onGoToOtherActivity()V

    .line 422
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0}, Lc8/Xgn;->goDownloadPage(Landroid/content/Context;)V

    .line 423
    return-void
.end method

.method public onMenuEditClick()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lc8/IEn;->mActionModeCallback:Lc8/kq;

    invoke-virtual {p0, v0}, Lc8/IEn;->startSupportActionMode(Lc8/kq;)Lc8/lq;

    move-result-object v0

    iput-object v0, p0, Lc8/IEn;->mActionMode:Lc8/lq;

    .line 286
    return-void
.end method

.method public onMenuFeedBackClick()V
    .locals 3

    .prologue
    .line 751
    invoke-virtual {p0}, Lc8/IEn;->onGoToOtherActivity()V

    .line 752
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-static {p0}, Lc8/XIj;->getFeedbackWebViewURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u95ee\u9898\u53cd\u9988"

    invoke-interface {v0, p0, v1, v2}, Lc8/Xgn;->goWebViewWithParameter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public onMenuGameClick()V
    .locals 1

    .prologue
    .line 396
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0}, Lc8/Xgn;->launchGameCenterHomeActivity(Landroid/content/Context;)V

    .line 400
    return-void
.end method

.method public onMenuHistoryClick()V
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lc8/IEn;->onGoToOtherActivity()V

    .line 705
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0}, Lc8/Xgn;->launchHistoryActivity(Landroid/content/Context;)V

    .line 706
    return-void
.end method

.method public onMenuLoginClick()V
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lc8/IEn;->onGoToOtherActivity()V

    .line 732
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0}, Lc8/Xgn;->goLogin(Landroid/content/Context;)V

    .line 733
    invoke-virtual {p0}, Lc8/IEn;->invalidateOptionsMenu()V

    .line 734
    return-void
.end method

.method public onMenuLogoutClick()V
    .locals 2

    .prologue
    .line 737
    const-class v0, Lc8/fhn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fhn;

    invoke-interface {v0}, Lc8/fhn;->logout()V

    .line 738
    invoke-virtual {p0}, Lc8/IEn;->invalidateOptionsMenu()V

    .line 739
    return-void
.end method

.method public onMenuRatingClick()V
    .locals 1

    .prologue
    .line 767
    invoke-virtual {p0}, Lc8/IEn;->onGoToOtherActivity()V

    .line 768
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0}, Lc8/Xgn;->goScore(Landroid/app/Activity;)V

    .line 769
    return-void
.end method

.method public onMenuRefreshClick()V
    .locals 0

    .prologue
    .line 742
    return-void
.end method

.method public onMenuSaoSaoClick()V
    .locals 2

    .prologue
    .line 427
    iget v0, p0, Lc8/IEn;->TAG_BaseActivity:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_0

    .line 436
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lc8/IEn;->onGoToOtherActivity()V

    .line 435
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://capture"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onMenuSettingClick()V
    .locals 1

    .prologue
    .line 745
    invoke-virtual {p0}, Lc8/IEn;->onGoToOtherActivity()V

    .line 747
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0}, Lc8/Xgn;->launchSettingsActivity(Landroid/content/Context;)V

    .line 748
    return-void
.end method

.method public onMenuUploadClick()V
    .locals 3

    .prologue
    .line 709
    invoke-virtual {p0}, Lc8/IEn;->onGoToOtherActivity()V

    .line 711
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lc8/Xgn;->gotoMyUploadVideoPageActivityForResult(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 712
    return-void
.end method

.method public onMenuVipClick()V
    .locals 6

    .prologue
    .line 403
    sget-object v2, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "vipcenter_url"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/Efh;->getInitialField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 405
    .local v1, "vipcenter_url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "header":Landroid/os/Bundle;
    const-class v2, Lc8/Xgn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Xgn;

    invoke-interface {v2, p0, v1, v0}, Lc8/Xgn;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 413
    .end local v0    # "header":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 411
    :cond_0
    const-class v2, Lc8/Xgn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Xgn;

    invoke-interface {v2, p0}, Lc8/Xgn;->launchHaveBuyActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 699
    invoke-super {p0, p1}, Lc8/Qn;->onNewIntent(Landroid/content/Intent;)V

    .line 700
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/IEn;->menuClick(I)Z

    .line 280
    invoke-super {p0, p1}, Lc8/Qn;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/IEn;->setIsSearchOpen(Z)V

    .line 679
    invoke-virtual {p0}, Lc8/IEn;->getScreenData()V

    .line 681
    invoke-super {p0}, Lc8/Qn;->onPause()V

    .line 685
    iget-object v0, p0, Lc8/IEn;->custom_title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lc8/IEn;->custom_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 692
    :cond_0
    const-class v0, Lc8/sin;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/sin;

    invoke-interface {v0, p0}, Lc8/sin;->endNewSession(Landroid/app/Activity;)V

    .line 694
    invoke-virtual {p0}, Lc8/IEn;->unRegistNetWorkReceiver()V

    .line 695
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 851
    invoke-super {p0, p1}, Lc8/Qn;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 531
    invoke-super {p0}, Lc8/Qn;->onResume()V

    .line 534
    invoke-virtual {p0}, Lc8/IEn;->invalidateOptionsMenu()V

    .line 536
    const-class v0, Lc8/sin;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/sin;

    invoke-interface {v0, p0}, Lc8/sin;->startNewSession(Landroid/app/Activity;)V

    .line 538
    invoke-direct {p0}, Lc8/IEn;->showScore()V

    .line 539
    invoke-virtual {p0}, Lc8/IEn;->registNetWorkReceiver()V

    .line 540
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 447
    invoke-super {p0, p1}, Lc8/Qn;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 448
    const-string/jumbo v0, "isSearchOpen"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 454
    invoke-super {p0}, Lc8/Qn;->onStart()V

    .line 455
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 459
    invoke-super {p0}, Lc8/Qn;->onStop()V

    .line 461
    return-void
.end method

.method public registNetWorkReceiver()V
    .locals 2

    .prologue
    .line 879
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 880
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Lc8/IEn;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lc8/IEn;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 882
    return-void
.end method

.method public setActionModeFinish()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lc8/IEn;->mActionMode:Lc8/lq;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lc8/IEn;->mActionMode:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->finish()V

    .line 390
    :cond_0
    return-void
.end method

.method public setCustomTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v0, p0, Lc8/IEn;->custom_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    return-void
.end method

.method public showCustomTitle()Landroid/widget/TextView;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 476
    invoke-virtual {p0}, Lc8/IEn;->getSupportActionBar()Lc8/mn;

    move-result-object v3

    invoke-virtual {v3, v5}, Lc8/mn;->setDisplayShowCustomEnabled(Z)V

    .line 477
    invoke-virtual {p0}, Lc8/IEn;->getSupportActionBar()Lc8/mn;

    move-result-object v3

    sget v4, Lcom/youku/phone/R$layout;->channel_custom_title:I

    invoke-virtual {v3, v4}, Lc8/mn;->setCustomView(I)V

    .line 478
    invoke-virtual {p0}, Lc8/IEn;->getSupportActionBar()Lc8/mn;

    move-result-object v3

    invoke-virtual {v3}, Lc8/mn;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 479
    .local v1, "customView":Landroid/view/View;
    sget v3, Lcom/youku/phone/R$id;->channel_custom_title_txt:I

    invoke-virtual {p0, v3}, Lc8/IEn;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/IEn;->custom_title:Landroid/widget/TextView;

    .line 480
    sget v3, Lcom/youku/phone/R$id;->channel_custom_title_line:I

    invoke-virtual {p0, v3}, Lc8/IEn;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lc8/IEn;->custom_title_line:Landroid/widget/LinearLayout;

    .line 481
    if-eqz v1, :cond_0

    .line 482
    new-instance v3, Lc8/GEn;

    invoke-direct {v3, p0}, Lc8/GEn;-><init>(Lc8/IEn;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 507
    :cond_0
    iget-object v3, p0, Lc8/IEn;->custom_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/IEn;->getCustomTitleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v3, p0, Lc8/IEn;->custom_title:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 509
    iget-object v3, p0, Lc8/IEn;->custom_title:Landroid/widget/TextView;

    const-string/jumbo v4, "END"

    invoke-static {v4}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 511
    invoke-virtual {p0}, Lc8/IEn;->getCustomActionMenu()Landroid/view/View;

    move-result-object v0

    .local v0, "customMenu":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 512
    sget v3, Lcom/youku/phone/R$id;->custom_action_btn_container:I

    invoke-virtual {p0, v3}, Lc8/IEn;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 513
    .local v2, "r":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 515
    .end local v2    # "r":Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v3, p0, Lc8/IEn;->custom_title:Landroid/widget/TextView;

    return-object v3
.end method

.method public unRegistNetWorkReceiver()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lc8/IEn;->networkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 888
    :try_start_0
    iget-object v0, p0, Lc8/IEn;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lc8/IEn;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    const-string/jumbo v0, " Receiver not registered"

    invoke-static {v0}, Lc8/FWc;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
