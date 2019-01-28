.class public Lcom/ut/mini/exposure/TrackerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TrackerFrameLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/exposure/TrackerFrameLayout$PageChangerMonitor;,
        Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;
    }
.end annotation


# static fields
.field private static final CLICK_LIMIT:F = 20.0f

.field public static TIME_INTERVAL:J = 0x0L

.field public static final TRIGGER_VIEW_CHANGED:I = 0x0

.field public static final TRIGGER_VIEW_STATUS_CHANGED:I = 0x3

.field public static final TRIGGER_WINDOW_CHANGED:I = 0x1

.field private static final UT_EXPORSURE_MAX_LENGTH:I = 0x7800

.field private static final UT_SCM_TAG:Ljava/lang/String; = "scm"

.field private static final UT_SPM_TAG:Ljava/lang/String; = "spm"

.field private static final eventId:I = 0x899

.field private static mCommonInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasExposrueDataLength:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasExposrueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasExposureSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mHasExposureViewTagSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private currentViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/exposure/ExposureView;",
            ">;"
        }
    .end annotation
.end field

.field private lastDispatchDrawSystemTimeMillis:J

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mOriX:F

.field private mOriY:F

.field private traceTask:Ljava/lang/Runnable;

.field private traverseTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->TIME_INTERVAL:J

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueDataLength:Ljava/util/HashMap;

    .line 84
    new-instance v0, Lcom/ut/mini/exposure/TrackerFrameLayout$PageChangerMonitor;

    invoke-direct {v0}, Lcom/ut/mini/exposure/TrackerFrameLayout$PageChangerMonitor;-><init>()V

    invoke-static {v0}, Lcom/ut/mini/UTPageHitHelper;->addPageChangerListener(Lcom/ut/mini/UTPageHitHelper$PageChangeListener;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->lastDispatchDrawSystemTimeMillis:J

    .line 73
    iput v2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriX:F

    .line 74
    iput v2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriY:F

    .line 75
    new-instance v0, Lcom/ut/mini/exposure/TrackerFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/ut/mini/exposure/TrackerFrameLayout$1;-><init>(Lcom/ut/mini/exposure/TrackerFrameLayout;)V

    iput-object v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traceTask:Ljava/lang/Runnable;

    .line 452
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 90
    invoke-direct {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->addCommonArgsInfo()V

    .line 91
    invoke-static {}, Lcom/ut/mini/exposure/ExposureConfigMgr;->updateExposureConfig()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/ut/mini/exposure/TrackerFrameLayout;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/ut/mini/exposure/TrackerFrameLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    return-object v0
.end method

.method private addCommonArgsInfo()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 227
    .local v2, "decorView":Landroid/view/View;
    sget-object v3, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 228
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v3

    iget-object v1, v3, Lcom/ut/mini/exposure/TrackerManager;->commonInfoMap:Ljava/util/HashMap;

    .line 229
    .local v1, "commonInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 230
    sget-object v3, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 234
    :cond_0
    const/16 v3, -0x426b

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 235
    .local v0, "commonInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    sget-object v3, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 237
    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addCommonArgsInfo mCommonInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_1
    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addCommonArgsInfo all mCommonInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    .end local v0    # "commonInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "commonInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "decorView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private addToCommit(Lcom/ut/mini/exposure/ExposureView;)V
    .locals 22
    .param p1, "ev"    # Lcom/ut/mini/exposure/ExposureView;

    .prologue
    .line 506
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ut/mini/exposure/ExposureView;->block:Ljava/lang/String;

    .line 507
    .local v13, "block":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    .line 508
    .local v12, "viewId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/ut/mini/exposure/TrackerFrameLayout;->setExposuredTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ut/mini/exposure/ExposureView;->viewData:Ljava/util/Map;

    move-object/from16 v21, v0

    .line 511
    .local v21, "viewData":Ljava/util/Map;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 512
    .local v7, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/exposure/TrackerManager;->getExposureViewHandle()Lcom/ut/mini/internal/ExposureViewHandle;

    move-result-object v16

    .line 513
    .local v16, "handler":Lcom/ut/mini/internal/ExposureViewHandle;
    if-eqz v16, :cond_6

    .line 514
    const/16 v20, 0x0

    .line 515
    .local v20, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 516
    .local v14, "currentActivity":Landroid/content/Context;
    if-eqz v14, :cond_0

    .line 517
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/ut/mini/UTPageHitHelper;->getPageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 519
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Lcom/ut/mini/internal/ExposureViewHandle;->getExposureViewProperties(Ljava/lang/String;Landroid/view/View;)Ljava/util/Map;

    move-result-object v19

    .line 520
    .local v19, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v19, :cond_1

    .line 521
    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 529
    .end local v14    # "currentActivity":Landroid/content/Context;
    .end local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 530
    .local v5, "spm":Ljava/lang/String;
    const/4 v6, 0x0

    .line 531
    .local v6, "scm":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 532
    const-string/jumbo v4, "spm"

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "spm":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 533
    .restart local v5    # "spm":Ljava/lang/String;
    const-string/jumbo v4, "scm"

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "scm":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 535
    .restart local v6    # "scm":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 536
    .local v15, "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    if-nez v15, :cond_3

    .line 537
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .restart local v15    # "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    sget-object v4, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    invoke-interface {v4, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_3
    new-instance v3, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    sub-long/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/ut/mini/exposure/ExposureView;->area:D

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v12}, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;-><init>(Lcom/ut/mini/exposure/TrackerFrameLayout;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JDLjava/lang/String;)V

    .line 541
    .local v3, "entity":Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v4, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueDataLength:Ljava/util/HashMap;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 543
    .local v18, "lengthInteger":Ljava/lang/Integer;
    if-nez v18, :cond_4

    .line 544
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 546
    :cond_4
    invoke-virtual {v3}, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->length()I

    move-result v17

    .line 547
    .local v17, "length":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v4, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 548
    sget-object v4, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueDataLength:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0x7800

    if-le v4, v8, :cond_5

    .line 550
    sget-object v4, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-static {v13, v4}, Lcom/ut/mini/exposure/TrackerFrameLayout;->commitToUT(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 552
    :cond_5
    const/4 v4, 0x0

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "\u63d0\u4ea4\u5143\u7d20viewId "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "block"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v13, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "spm"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object v5, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "scm"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    aput-object v6, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "args"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    aput-object v7, v8, v9

    invoke-static {v4, v8}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    return-void

    .line 523
    .end local v3    # "entity":Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;
    .end local v5    # "spm":Ljava/lang/String;
    .end local v6    # "scm":Ljava/lang/String;
    .end local v15    # "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    .end local v17    # "length":I
    .end local v18    # "lengthInteger":Ljava/lang/Integer;
    :cond_6
    if-eqz v21, :cond_1

    const-string/jumbo v4, "UT_EXPROSURE_ARGS"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 524
    const-string/jumbo v4, "UT_EXPROSURE_ARGS"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 525
    .local v2, "argstemp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 526
    invoke-interface {v7, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private checkViewState(ILcom/ut/mini/exposure/ExposureView;)V
    .locals 6
    .param p1, "triggerType"    # I
    .param p2, "exposureView"    # Lcom/ut/mini/exposure/ExposureView;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 406
    iget-object v1, p2, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->isVisableToUser(Landroid/view/View;)Z

    move-result v0

    .line 407
    .local v0, "needExposureProcess":Z
    if-eqz v0, :cond_3

    .line 408
    iget v1, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    packed-switch v1, :pswitch_data_0

    .line 443
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Lcom/ut/mini/exposure/ExposureView;->isSatisfyTimeRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 444
    invoke-direct {p0, p2}, Lcom/ut/mini/exposure/TrackerFrameLayout;->addToCommit(Lcom/ut/mini/exposure/ExposureView;)V

    .line 445
    iget-object v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    iget-object v2, p2, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_1
    :goto_1
    return-void

    .line 411
    :pswitch_1
    iput v4, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    goto :goto_0

    .line 417
    :pswitch_2
    if-eq p1, v4, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 418
    :cond_2
    iput v5, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ut/mini/exposure/ExposureView;->endTime:J

    goto :goto_0

    .line 424
    :pswitch_3
    iput v4, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    goto :goto_0

    .line 429
    :cond_3
    iget v1, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 434
    :pswitch_4
    iput v5, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ut/mini/exposure/ExposureView;->endTime:J

    goto :goto_0

    .line 446
    :cond_4
    iget v1, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    if-ne v1, v5, :cond_1

    .line 447
    iget-object v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    iget-object v2, p2, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u65f6\u95f4\u4e0d\u6ee1\u8db3\uff0c\u5143\u7d20:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 408
    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private checkViewsStates(I)V
    .locals 6
    .param p1, "triggerType"    # I

    .prologue
    .line 394
    invoke-static {}, Lc8/NBb;->d()V

    .line 396
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 397
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 398
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ut/mini/exposure/ExposureView;

    iget-object v3, v4, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    .line 399
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/exposure/ExposureView;

    .line 400
    .local v1, "exposureView":Lcom/ut/mini/exposure/ExposureView;
    invoke-direct {p0, p1, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->checkViewState(ILcom/ut/mini/exposure/ExposureView;)V

    goto :goto_0

    .line 403
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "exposureView":Lcom/ut/mini/exposure/ExposureView;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private static commitToUT(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .param p0, "block"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "commonInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 556
    invoke-static {}, Lc8/NBb;->d()V

    .line 557
    sget-object v2, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 558
    .local v7, "es":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 559
    .local v6, "outPutArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 560
    invoke-static {p1}, Lc8/PBb;->convertObjectMapToStringMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 562
    :cond_0
    const-string/jumbo v2, "expdata"

    invoke-static {v7}, Lcom/ut/mini/exposure/TrackerFrameLayout;->getExpData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper;->getCurrentPageName()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "pageName":Ljava/lang/String;
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/16 v2, 0x899

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 565
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 567
    sget-object v2, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueDataLength:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method

.method private static getExpData(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "es":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 572
    .local v0, "js":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 573
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isExposured(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "block"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;

    .prologue
    .line 489
    sget-object v1, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 490
    .local v0, "set":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 491
    const/4 v1, 0x0

    .line 493
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private isVisableToUser(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->viewSize(Landroid/view/View;)D

    move-result-wide v0

    sget-wide v2, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refreshExposureData()V
    .locals 1

    .prologue
    .line 708
    sget-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 709
    sget-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 710
    return-void
.end method

.method public static refreshExposureData(Ljava/lang/String;)V
    .locals 4
    .param p0, "block"    # Ljava/lang/String;

    .prologue
    .line 718
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[refreshExposureData]block"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    :goto_0
    return-void

    .line 722
    :cond_0
    sget-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static refreshExposureDataByViewId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "block"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    sget-object v1, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 739
    .local v0, "set":Ljava/util/Set;
    if-eqz v0, :cond_0

    .line 740
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setExposuredTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "block"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;

    .prologue
    .line 497
    sget-object v1, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 498
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 500
    .restart local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method private trace(IZ)V
    .locals 12
    .param p1, "triggerType"    # I
    .param p2, "isForceTraverse"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 248
    move-object v1, p0

    .line 249
    .local v1, "view":Landroid/view/View;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 250
    .local v2, "triggerTime":J
    if-nez p2, :cond_0

    .line 251
    iget-wide v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traverseTime:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/ut/mini/exposure/TrackerFrameLayout;->TIME_INTERVAL:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 252
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "triggerTime interval is too close to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/ut/mini/exposure/TrackerFrameLayout;->TIME_INTERVAL:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    .end local v2    # "triggerTime":J
    :goto_0
    return-void

    .line 257
    .restart local v2    # "triggerTime":J
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "\u626b\u63cf\u5f00\u59cb"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iput-wide v2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traverseTime:J

    .line 259
    invoke-direct {p0, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->traverseViewTree(Landroid/view/View;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->checkViewsStates(I)V

    .line 261
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u626b\u63cf\u7ed3\u675f\uff0c\u8017\u65f6:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    .end local v2    # "triggerTime":J
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Throwable;
    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v11, v0, v4}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private traverseViewTree(Landroid/view/View;)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 274
    if-nez p1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isShown()Z

    move-result v22

    if-nez v22, :cond_2

    .line 278
    const-string/jumbo v22, "view invisalbe,return"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/exposure/ExposureUtils;->isIngoneExposureView(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 282
    const-string/jumbo v22, "view ingone by user,return"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "view:"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object p1, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_3
    const/4 v2, 0x0

    .line 286
    .local v2, "block":Ljava/lang/String;
    const/16 v21, 0x0

    .line 287
    .local v21, "viewId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 288
    .local v6, "dataMap":Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/exposure/ExposureUtils;->isExposureViewForWeex(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 290
    .local v4, "currentActivity":Landroid/content/Context;
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/exposure/TrackerManager;->getExposureViewHandle()Lcom/ut/mini/internal/ExposureViewHandle;

    move-result-object v11

    .line 291
    .local v11, "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    if-eqz v11, :cond_6

    .line 292
    const/16 v20, 0x0

    .line 293
    .local v20, "url":Ljava/lang/String;
    if-eqz v4, :cond_4

    instance-of v0, v4, Landroid/app/Activity;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 294
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/ut/mini/UTPageHitHelper;->getPageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 295
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 296
    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "Cannot get Current Page Url"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v4, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_4
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v11, v0, v1}, Lcom/ut/mini/internal/ExposureViewHandle;->getExposureViewTag(Ljava/lang/String;Landroid/view/View;)Lcom/ut/mini/internal/ExposureViewTag;

    move-result-object v15

    .line 300
    .local v15, "tag":Lcom/ut/mini/internal/ExposureViewTag;
    if-eqz v15, :cond_5

    .line 301
    iget-object v0, v15, Lcom/ut/mini/internal/ExposureViewTag;->block:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    iget-object v0, v15, Lcom/ut/mini/internal/ExposureViewTag;->viewId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 302
    iget-object v2, v15, Lcom/ut/mini/internal/ExposureViewTag;->block:Ljava/lang/String;

    .line 303
    iget-object v0, v15, Lcom/ut/mini/internal/ExposureViewTag;->viewId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 313
    :cond_5
    :goto_1
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "weex block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    .end local v4    # "currentActivity":Landroid/content/Context;
    .end local v11    # "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    .end local v15    # "tag":Lcom/ut/mini/internal/ExposureViewTag;
    .end local v20    # "url":Ljava/lang/String;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/exposure/ExposureUtils;->isExposureView(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 318
    const/16 v22, -0x4269

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 319
    .local v5, "data":Ljava/lang/Object;
    if-eqz v5, :cond_7

    .line 320
    instance-of v0, v5, Ljava/util/Map;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object v6, v5

    .line 321
    check-cast v6, Ljava/util/Map;

    .line 324
    const-string/jumbo v22, "UT_EXPROSURE_BLOCK"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "block":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 325
    .restart local v2    # "block":Ljava/lang/String;
    const-string/jumbo v22, "UT_EXPROSURE_VIEWID"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "viewId":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 328
    .restart local v21    # "viewId":Ljava/lang/String;
    :cond_7
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "native block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    .end local v5    # "data":Ljava/lang/Object;
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 333
    sget-object v22, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    .line 334
    .local v14, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v14, :cond_9

    .line 335
    new-instance v14, Ljava/util/HashSet;

    .end local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 337
    .restart local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v22, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ut/mini/exposure/ExposureView;

    .line 342
    .local v8, "ev":Lcom/ut/mini/exposure/ExposureView;
    if-eqz v8, :cond_e

    .line 343
    iget-object v0, v8, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-virtual {v8}, Lcom/ut/mini/exposure/ExposureView;->isSatisfyTimeRequired()Z

    move-result v22

    if-nez v22, :cond_c

    .line 345
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "this view has existed block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 305
    .end local v8    # "ev":Lcom/ut/mini/exposure/ExposureView;
    .end local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "currentActivity":Landroid/content/Context;
    .restart local v11    # "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    .restart local v15    # "tag":Lcom/ut/mini/internal/ExposureViewTag;
    .restart local v20    # "url":Ljava/lang/String;
    :cond_a
    iget-boolean v0, v15, Lcom/ut/mini/internal/ExposureViewTag;->notExposure:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 306
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/exposure/ExposureUtils;->clearExposureForWeex(Landroid/view/View;)V

    .line 307
    const-string/jumbo v22, "clear exposure tag "

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "view"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object p1, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_b
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "block or viewId is valid,plase check input params!"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 348
    .end local v4    # "currentActivity":Landroid/content/Context;
    .end local v11    # "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    .end local v15    # "tag":Lcom/ut/mini/internal/ExposureViewTag;
    .end local v20    # "url":Ljava/lang/String;
    .restart local v8    # "ev":Lcom/ut/mini/exposure/ExposureView;
    .restart local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c
    const/16 v22, 0x0

    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "this view status has change or time > timeThreshold, block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, " new viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    const/16 v24, 0x4

    const-string/jumbo v25, "old viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x5

    iget-object v0, v8, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/ut/mini/exposure/TrackerFrameLayout;->checkViewState(ILcom/ut/mini/exposure/ExposureView;)V

    .line 360
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->isExposured(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 361
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "this view has exposured block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 353
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ut/mini/exposure/ExposureView;

    .line 354
    .local v9, "exposureView":Lcom/ut/mini/exposure/ExposureView;
    iget-object v0, v9, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 355
    const/16 v22, 0x0

    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "this viewId has existed current view:"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object p1, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "oldView:"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    iget-object v0, v9, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x4

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x5

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 364
    .end local v9    # "exposureView":Lcom/ut/mini/exposure/ExposureView;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->viewSize(Landroid/view/View;)D

    move-result-wide v16

    .line 365
    .local v16, "size":D
    sget-wide v22, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    cmpl-double v22, v16, v22

    if-ltz v22, :cond_12

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 367
    .local v18, "time":J
    new-instance v7, Lcom/ut/mini/exposure/ExposureView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/ut/mini/exposure/ExposureView;-><init>(Landroid/view/View;)V

    .line 368
    .local v7, "eView":Lcom/ut/mini/exposure/ExposureView;
    move-wide/from16 v0, v18

    iput-wide v0, v7, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    .line 369
    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    .line 370
    iput-object v2, v7, Lcom/ut/mini/exposure/ExposureView;->block:Ljava/lang/String;

    .line 371
    iput-object v6, v7, Lcom/ut/mini/exposure/ExposureView;->viewData:Ljava/util/Map;

    .line 372
    move-wide/from16 v0, v18

    iput-wide v0, v7, Lcom/ut/mini/exposure/ExposureView;->lastCalTime:J

    .line 373
    move-wide/from16 v0, v16

    iput-wide v0, v7, Lcom/ut/mini/exposure/ExposureView;->area:D

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\u627e\u5230\u5143\u7d20"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    .end local v7    # "eView":Lcom/ut/mini/exposure/ExposureView;
    .end local v8    # "ev":Lcom/ut/mini/exposure/ExposureView;
    .end local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "size":D
    .end local v18    # "time":J
    :cond_11
    :goto_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v10, p1

    .line 382
    check-cast v10, Landroid/view/ViewGroup;

    .line 383
    .local v10, "group":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 384
    .local v3, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v3, :cond_0

    .line 385
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->traverseViewTree(Landroid/view/View;)V

    .line 384
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 377
    .end local v3    # "childCount":I
    .end local v10    # "group":Landroid/view/ViewGroup;
    .end local v12    # "i":I
    .restart local v8    # "ev":Lcom/ut/mini/exposure/ExposureView;
    .restart local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "size":D
    :cond_12
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\u627e\u5230\u5143\u7d20"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",\u4f46\u4e0d\u6ee1\u8db3\u66dd\u5149\u6761\u4ef6"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private viewSize(Landroid/view/View;)D
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 473
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 474
    .local v0, "height":I
    iget-object v6, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 475
    .local v1, "isVisibleRect":Z
    mul-int v2, v5, v0

    .line 477
    .local v2, "size":I
    if-eqz v1, :cond_0

    if-lez v2, :cond_0

    .line 479
    iget-object v6, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 480
    .local v4, "visibleWidth":I
    iget-object v6, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 482
    .local v3, "visibleHeight":I
    mul-int v6, v4, v3

    int-to-double v6, v6

    int-to-double v8, v2

    div-double/2addr v6, v8

    .line 484
    .end local v3    # "visibleHeight":I
    .end local v4    # "visibleWidth":I
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 147
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dispatchDraw"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 150
    .local v0, "time":J
    iget-wide v2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->lastDispatchDrawSystemTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 151
    iput-wide v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->lastDispatchDrawSystemTimeMillis:J

    .line 153
    invoke-direct {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->addCommonArgsInfo()V

    .line 155
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 156
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 97
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "action:"

    aput-object v4, v1, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v9, v1}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 100
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriX:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriY:F

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriX:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriY:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    .line 107
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 108
    .local v2, "time":J
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v4, " begin"

    aput-object v4, v1, v8

    invoke-static {v9, v1}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0, v8, v8}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 110
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "end costTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v9, v1}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    .end local v2    # "time":J
    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "onInterceptTouchEvent ACTION_MOVE but not in click limit"

    aput-object v4, v1, v8

    invoke-static {v9, v1}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/exposure/TrackerManager;->getThreadHandle()Landroid/os/Handler;

    move-result-object v0

    .line 118
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traceTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traceTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 8
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 208
    const/16 v2, 0x8

    if-ne p2, v2, :cond_0

    .line 209
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "begin"

    aput-object v3, v2, v6

    invoke-static {v7, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    .local v0, "ts":J
    invoke-direct {p0, v4, v6}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 212
    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "end costTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .end local v0    # "ts":J
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 217
    return-void

    .line 214
    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visibility ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 8
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 167
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "begin"

    aput-object v3, v2, v6

    invoke-static {v7, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    .local v0, "ts":J
    invoke-direct {p0, v4, v6}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 170
    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowFocusChanged(Z)V

    .line 172
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent1"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v1"    # F

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 138
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 139
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "begin"

    aput-object v3, v2, v6

    invoke-static {v7, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    .local v0, "ts":J
    invoke-direct {p0, v6, v6}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 142
    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "end costTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 190
    return-void
.end method

.method public onPageDisAppear()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 619
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ut/mini/exposure/TrackerManager;->getThreadHandle()Landroid/os/Handler;

    move-result-object v2

    .line 620
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 621
    iget-object v9, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traceTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 623
    :cond_0
    invoke-direct {p0, v10, v10}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 624
    sget-object v9, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 625
    .local v4, "keys":[Ljava/lang/Object;
    array-length v9, v4

    if-lez v9, :cond_1

    .line 626
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v4

    if-ge v3, v9, :cond_1

    .line 627
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-static {v9, v10}, Lcom/ut/mini/exposure/TrackerFrameLayout;->commitToUT(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    .end local v3    # "i":I
    :cond_1
    :try_start_0
    sget-object v9, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 633
    .local v5, "ks":[Ljava/lang/Object;
    array-length v9, v5

    if-lez v9, :cond_3

    .line 634
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v9, v5

    if-ge v3, v9, :cond_2

    .line 636
    sget-object v9, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    aget-object v10, v5, v3

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 638
    :cond_2
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v9, "ut_exposure_test"

    invoke-direct {v0, v9}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, "builder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "]"

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\\["

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 640
    .local v8, "viewids":Ljava/lang/String;
    const-string/jumbo v9, "viewids"

    invoke-virtual {v0, v9, v8}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 641
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v7

    .line 642
    .local v7, "tracker":Lcom/ut/mini/UTTracker;
    if-eqz v7, :cond_3

    .line 643
    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v0    # "builder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    .end local v3    # "i":I
    .end local v5    # "ks":[Ljava/lang/Object;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "tracker":Lcom/ut/mini/UTTracker;
    .end local v8    # "viewids":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 651
    sget-boolean v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->notClearTagAfterDisAppear:Z

    if-nez v9, :cond_4

    .line 654
    sget-object v9, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 656
    :cond_4
    sget-object v9, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 657
    return-void

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent1"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v1"    # F

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "action:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
