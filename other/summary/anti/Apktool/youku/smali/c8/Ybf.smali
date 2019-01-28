.class public Lc8/Ybf;
.super Ljava/lang/Object;
.source "Nav.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Obf;,
        Lcom/taobao/android/nav/Nav$NavHookIntent;,
        Lc8/Pbf;,
        Lc8/Xbf;,
        Lc8/Vbf;,
        Lcom/taobao/android/nav/Nav$NavigationCanceledException;,
        Lc8/Rbf;,
        Lc8/Sbf;,
        Lc8/Wbf;,
        Lc8/Tbf;,
        Lc8/Ubf;,
        Lc8/Qbf;
    }
.end annotation


# static fields
.field private static final DEFAULT_RESOLVER:Lc8/Ubf;

.field public static final KExtraReferrer:Ljava/lang/String; = "referrer"

.field private static final TAG:Ljava/lang/String; = "Nav"

.field private static mExceptionHandler:Lc8/Rbf;

.field private static volatile mNavResolver:Lc8/Ubf;

.field private static final mPreprocessor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Tbf;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPriorHookers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lc8/Sbf;",
            ">;"
        }
    .end annotation
.end field

.field private static final mStickPreprocessor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Tbf;",
            ">;"
        }
    .end annotation
.end field

.field private static mTransition:[I

.field private static sNavMonitor:Lc8/Vbf;


# instance fields
.field private mAllowLeaving:Z

.field private final mContext:Landroid/content/Context;

.field private mDisableTransition:Z

.field private mDisallowLoopback:Z

.field private final mIntent:Landroid/content/Intent;

.field private mRequestCode:I

.field private mSkipHooker:Z

.field private mSkipPreprocess:Z

.field private mSkipPriorHooker:Z

.field private mTaskStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 724
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lc8/Ybf;->mPreprocessor:Ljava/util/List;

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/Ybf;->mStickPreprocessor:Ljava/util/List;

    .line 726
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lc8/Ybf;->mPriorHookers:Landroid/util/SparseArray;

    .line 727
    sput-object v1, Lc8/Ybf;->sNavMonitor:Lc8/Vbf;

    .line 731
    new-instance v0, Lc8/Pbf;

    invoke-direct {v0, v1}, Lc8/Pbf;-><init>(Lc8/Obf;)V

    .line 732
    sput-object v0, Lc8/Ybf;->DEFAULT_RESOLVER:Lc8/Ubf;

    sput-object v0, Lc8/Ybf;->mNavResolver:Lc8/Ubf;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    const/4 v0, -0x1

    iput v0, p0, Lc8/Ybf;->mRequestCode:I

    .line 688
    iput-object p1, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    .line 689
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    .line 690
    return-void
.end method

.method public static from(Landroid/content/Context;)Lc8/Ybf;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    new-instance v0, Lc8/Ybf;

    invoke-direct {v0, p0}, Lc8/Ybf;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 409
    invoke-static {p0, p1, p2, p3}, Lc8/Ybf;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private isDebug()Z
    .locals 2

    .prologue
    .line 708
    iget-object v1, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 709
    .local v0, "app_info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private optimum(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 561
    if-nez p1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-object v8

    .line 563
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v12, :cond_2

    .line 564
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 567
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v6, "resolveInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/android/nav/Nav$SortedResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 571
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 572
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 573
    new-instance v9, Lc8/Xbf;

    iget v10, v1, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-direct {v9, p0, v1, v10, v12}, Lc8/Xbf;-><init>(Lc8/Ybf;Landroid/content/pm/ResolveInfo;II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 575
    :cond_4
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 576
    .local v4, "p1":Ljava/lang/String;
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, "p2":Ljava/lang/String;
    const-string/jumbo v9, "\\."

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "l1":[Ljava/lang/String;
    const-string/jumbo v9, "\\."

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "l2":[Ljava/lang/String;
    array-length v9, v2

    if-lt v9, v13, :cond_3

    array-length v9, v3

    if-lt v9, v13, :cond_3

    .line 580
    aget-object v9, v2, v11

    aget-object v10, v3, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    aget-object v9, v2, v12

    aget-object v10, v3, v12

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 581
    new-instance v9, Lc8/Xbf;

    iget v10, v1, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-direct {v9, p0, v1, v10, v11}, Lc8/Xbf;-><init>(Lc8/Ybf;Landroid/content/pm/ResolveInfo;II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 587
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "l1":[Ljava/lang/String;
    .end local v3    # "l2":[Ljava/lang/String;
    .end local v4    # "p1":Ljava/lang/String;
    .end local v5    # "p2":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 588
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v12, :cond_6

    .line 589
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 590
    :cond_6
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/Xbf;

    invoke-static {v8}, Lc8/Xbf;->access$100(Lc8/Xbf;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 591
    .local v7, "ret":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object v8, v7

    .line 592
    goto/16 :goto_0
.end method

.method public static registerHooker(Lc8/Sbf;)V
    .locals 2
    .param p0, "hooker"    # Lc8/Sbf;

    .prologue
    .line 657
    sget-object v0, Lc8/Ybf;->mPriorHookers:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 658
    return-void
.end method

.method public static registerNavMonitor(Lc8/Vbf;)V
    .locals 0
    .param p0, "monitor"    # Lc8/Vbf;

    .prologue
    .line 670
    sput-object p0, Lc8/Ybf;->sNavMonitor:Lc8/Vbf;

    .line 671
    return-void
.end method

.method public static registerPreprocessor(Lc8/Tbf;)V
    .locals 1
    .param p0, "preprocessor"    # Lc8/Tbf;

    .prologue
    .line 643
    sget-object v0, Lc8/Ybf;->mPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    return-void
.end method

.method public static registerPriorHooker(Lc8/Sbf;I)V
    .locals 2
    .param p0, "hooker"    # Lc8/Sbf;
    .param p1, "priority"    # I

    .prologue
    .line 662
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gtz p1, :cond_1

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NavHooker\'s priority less than NAVHOOKER_HIGH_PRIORITY, larger than NAVHOOKER_LOW_PRIORITY"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_1
    sget-object v0, Lc8/Ybf;->mPriorHookers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 667
    return-void
.end method

.method public static registerStickPreprocessor(Lc8/Tbf;)V
    .locals 1
    .param p0, "preprocessor"    # Lc8/Tbf;

    .prologue
    .line 635
    sget-object v0, Lc8/Ybf;->mStickPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    return-void
.end method

.method public static setExceptionHandler(Lc8/Rbf;)V
    .locals 0
    .param p0, "handler"    # Lc8/Rbf;

    .prologue
    .line 674
    sput-object p0, Lc8/Ybf;->mExceptionHandler:Lc8/Rbf;

    .line 675
    return-void
.end method

.method public static setNavResolver(Lc8/Ubf;)V
    .locals 0
    .param p0, "resolver"    # Lc8/Ubf;

    .prologue
    .line 678
    sput-object p0, Lc8/Ybf;->mNavResolver:Lc8/Ubf;

    .line 679
    return-void
.end method

.method public static setTransition(II)V
    .locals 2
    .param p0, "enterAnim"    # I
    .param p1, "exitAnim"    # I

    .prologue
    .line 682
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 683
    sput-object v0, Lc8/Ybf;->mTransition:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 684
    sget-object v0, Lc8/Ybf;->mTransition:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 685
    return-void
.end method

.method private specify(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 536
    iget-boolean v2, p0, Lc8/Ybf;->mAllowLeaving:Z

    if-nez v2, :cond_0

    .line 537
    sget-object v2, Lc8/Ybf;->mNavResolver:Lc8/Ubf;

    iget-object v3, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-interface {v2, v3, p1, v4}, Lc8/Ubf;->queryIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 540
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v1}, Lc8/Ybf;->optimum(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 541
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_1

    .line 546
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 543
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    .line 392
    return-void
.end method

.method private to(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 436
    iget-boolean v0, p0, Lc8/Ybf;->mSkipPreprocess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lc8/Ybf;->to(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private to(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "preprocess"    # Z

    .prologue
    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 442
    sget-object v3, Lc8/Ybf;->mPriorHookers:Landroid/util/SparseArray;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lc8/Sbf;

    .line 443
    .local v18, "hooker":Lc8/Sbf;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc8/Ybf;->mSkipHooker:Z

    if-nez v3, :cond_0

    if-eqz v18, :cond_0

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lc8/Sbf;->hook(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    new-instance v3, Lcom/taobao/android/nav/Nav$NavHookIntent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/taobao/android/nav/Nav$NavHookIntent;-><init>(Lc8/Obf;)V

    .line 532
    :goto_0
    return-object v3

    .line 450
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc8/Ybf;->mSkipPriorHooker:Z

    if-nez v3, :cond_2

    .line 451
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    sget-object v3, Lc8/Ybf;->mPriorHookers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 452
    sget-object v3, Lc8/Ybf;->mPriorHookers:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v22

    .line 453
    .local v22, "priority":I
    const/4 v3, 0x4

    move/from16 v0, v22

    if-eq v0, v3, :cond_1

    .line 455
    sget-object v3, Lc8/Ybf;->mPriorHookers:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "hooker":Lc8/Sbf;
    check-cast v18, Lc8/Sbf;

    .line 456
    .restart local v18    # "hooker":Lc8/Sbf;
    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lc8/Sbf;->hook(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 457
    new-instance v3, Lcom/taobao/android/nav/Nav$NavHookIntent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/taobao/android/nav/Nav$NavHookIntent;-><init>(Lc8/Obf;)V

    goto :goto_0

    .line 451
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 463
    .end local v19    # "i":I
    .end local v22    # "priority":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "referrer"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_8

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 466
    .local v15, "from_intent":Landroid/content/Intent;
    if-eqz v15, :cond_3

    .line 467
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 468
    .local v23, "referrer_uri":Landroid/net/Uri;
    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "referrer"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    .end local v15    # "from_intent":Landroid/content/Intent;
    .end local v23    # "referrer_uri":Landroid/net/Uri;
    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    .line 481
    .local v5, "tid":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 482
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    .line 488
    sget-object v3, Lc8/Ybf;->mStickPreprocessor:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 489
    sget-object v3, Lc8/Ybf;->mStickPreprocessor:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lc8/Tbf;

    .line 491
    .local v21, "preprocessor":Lc8/Tbf;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 492
    .local v6, "startTime":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v16

    .line 494
    .local v16, "cpuTimeStart":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lc8/Tbf;->beforeNavTo(Landroid/content/Intent;)Z

    move-result v24

    .line 496
    .local v24, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 497
    .local v8, "realTime":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v12

    sub-long v10, v12, v16

    .line 499
    .local v10, "cpuTime":J
    sget-object v3, Lc8/Ybf;->sNavMonitor:Lc8/Vbf;

    if-eqz v3, :cond_5

    .line 500
    sget-object v3, Lc8/Ybf;->sNavMonitor:Lc8/Vbf;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v3 .. v14}, Lc8/Vbf;->threadRunTimeInfo(Ljava/lang/String;IJJJLjava/lang/String;ILjava/util/concurrent/ThreadPoolExecutor;)V

    .line 503
    :cond_5
    if-nez v24, :cond_4

    .line 504
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 469
    .end local v5    # "tid":I
    .end local v6    # "startTime":J
    .end local v8    # "realTime":J
    .end local v10    # "cpuTime":J
    .end local v16    # "cpuTimeStart":J
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "preprocessor":Lc8/Tbf;
    .end local v24    # "result":Z
    .restart local v15    # "from_intent":Landroid/content/Intent;
    .restart local v23    # "referrer_uri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "comp":Landroid/content/ComponentName;
    if-eqz v2, :cond_7

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "referrer"

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 471
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "referrer"

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 475
    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v15    # "from_intent":Landroid/content/Intent;
    .end local v23    # "referrer_uri":Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "referrer"

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 507
    .restart local v5    # "tid":I
    :cond_9
    if-eqz p2, :cond_d

    sget-object v3, Lc8/Ybf;->mPreprocessor:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 508
    sget-object v3, Lc8/Ybf;->mPreprocessor:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lc8/Tbf;

    .line 510
    .restart local v21    # "preprocessor":Lc8/Tbf;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 511
    .restart local v6    # "startTime":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v16

    .line 515
    .restart local v16    # "cpuTimeStart":J
    move-object/from16 v0, v21

    instance-of v3, v0, Lc8/Wbf;

    if-eqz v3, :cond_c

    move-object/from16 v3, v21

    .line 516
    check-cast v3, Lc8/Wbf;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v4}, Lc8/Wbf;->beforeNavTo(Lc8/Ybf;Landroid/content/Intent;)Z

    move-result v24

    .line 521
    .restart local v24    # "result":Z
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 522
    .restart local v8    # "realTime":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v12

    sub-long v10, v12, v16

    .line 524
    .restart local v10    # "cpuTime":J
    sget-object v3, Lc8/Ybf;->sNavMonitor:Lc8/Vbf;

    if-eqz v3, :cond_b

    .line 525
    sget-object v3, Lc8/Ybf;->sNavMonitor:Lc8/Vbf;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v3 .. v14}, Lc8/Vbf;->threadRunTimeInfo(Ljava/lang/String;IJJJLjava/lang/String;ILjava/util/concurrent/ThreadPoolExecutor;)V

    .line 528
    :cond_b
    if-nez v24, :cond_a

    .line 529
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 518
    .end local v8    # "realTime":J
    .end local v10    # "cpuTime":J
    .end local v24    # "result":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lc8/Tbf;->beforeNavTo(Landroid/content/Intent;)Z

    move-result v24

    .restart local v24    # "result":Z
    goto :goto_3

    .line 532
    .end local v6    # "startTime":J
    .end local v16    # "cpuTimeStart":J
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "preprocessor":Lc8/Tbf;
    .end local v24    # "result":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static unregisterPreprocessor(Lc8/Tbf;)V
    .locals 1
    .param p0, "preprocessor"    # Lc8/Tbf;

    .prologue
    .line 647
    sget-object v0, Lc8/Ybf;->mPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method public static unregisterStickPreprocessor(Lc8/Tbf;)V
    .locals 1
    .param p0, "preprocessor"    # Lc8/Tbf;

    .prologue
    .line 639
    sget-object v0, Lc8/Ybf;->mStickPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 640
    return-void
.end method


# virtual methods
.method public allowEscape()Lc8/Ybf;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ybf;->mAllowLeaving:Z

    .line 209
    return-object p0
.end method

.method public allowLoopback()Lc8/Ybf;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Ybf;->mDisallowLoopback:Z

    .line 221
    return-object p0
.end method

.method public disableTransition()Lc8/Ybf;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ybf;->mDisableTransition:Z

    .line 227
    return-object p0
.end method

.method public disallowLoopback()Lc8/Ybf;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ybf;->mDisallowLoopback:Z

    .line 215
    return-object p0
.end method

.method public forResult(I)Lc8/Ybf;
    .locals 3
    .param p1, "request_code"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Only valid from Activity, but from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iput p1, p0, Lc8/Ybf;->mRequestCode:I

    .line 203
    return-object p0
.end method

.method public skipHooker()Lc8/Ybf;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ybf;->mSkipHooker:Z

    .line 237
    return-object p0
.end method

.method public skipPreprocess()Lc8/Ybf;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ybf;->mSkipPreprocess:Z

    .line 232
    return-object p0
.end method

.method public skipPriorHooker()Lc8/Ybf;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ybf;->mSkipPriorHooker:Z

    .line 242
    return-object p0
.end method

.method public stack(Landroid/net/Uri;)Lc8/Ybf;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 419
    iget v2, p0, Lc8/Ybf;->mRequestCode:I

    if-ltz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot stack URI for result"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lc8/Ybf;->to(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    if-nez v2, :cond_1

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    .line 424
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 425
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 426
    const v2, 0xc000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    :cond_1
    iget-object v2, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lc8/Ybf;

    iget-object v2, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lc8/Ybf;-><init>(Landroid/content/Context;)V

    .line 431
    .local v1, "nav":Lc8/Ybf;
    iget-object v2, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    iput-object v2, v1, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    .line 432
    return-object v1
.end method

.method public toPendingUri(Landroid/net/Uri;II)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "requestCode"    # I
    .param p3, "flags"    # I

    .prologue
    .line 396
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lc8/Ybf;->to(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/Ybf;->specify(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 403
    :goto_0
    return-object v1

    .line 398
    :cond_0
    iget-object v1, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 399
    iget-object v1, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    iget-object v2, p0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v2, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    iget-object v3, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    invoke-static {v2, p2, v1, p3}, Lc8/Ybf;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    .line 402
    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 403
    iget-object v1, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method

.method public toUri(Landroid/net/Uri;)Z
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 266
    sget-object v1, Lc8/Ybf;->mExceptionHandler:Lc8/Rbf;

    .line 268
    .local v1, "exception_handler":Lc8/Rbf;
    invoke-direct {p0, p1}, Lc8/Ybf;->to(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 269
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 270
    if-eqz v1, :cond_0

    .line 271
    iget-object v9, p0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    new-instance v10, Lcom/taobao/android/nav/Nav$NavigationCanceledException;

    const-string/jumbo v11, "Intent resolve was null"

    invoke-direct {v10, v11}, Lcom/taobao/android/nav/Nav$NavigationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v9, v10}, Lc8/Rbf;->onException(Landroid/content/Intent;Ljava/lang/Exception;)Z

    .line 272
    :cond_0
    const/4 v9, 0x0

    .line 384
    :goto_0
    return v9

    .line 273
    :cond_1
    instance-of v9, v3, Lcom/taobao/android/nav/Nav$NavHookIntent;

    if-eqz v9, :cond_2

    .line 275
    const/4 v9, 0x1

    goto :goto_0

    .line 278
    :cond_2
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    if-nez v9, :cond_5

    .line 279
    if-eqz v1, :cond_3

    .line 280
    iget-object v9, p0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    new-instance v10, Lcom/taobao/android/nav/Nav$NavigationCanceledException;

    const-string/jumbo v11, "Context shouldn\'t null"

    invoke-direct {v10, v11}, Lcom/taobao/android/nav/Nav$NavigationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v9, v10}, Lc8/Rbf;->onException(Landroid/content/Intent;Ljava/lang/Exception;)Z

    .line 281
    :cond_3
    const-string/jumbo v9, "Nav"

    const-string/jumbo v10, "Nav context was null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v9, 0x0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lc8/Ybf;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " CANN\'T FOUND RESOLVED ACTIVITY"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 380
    :cond_4
    if-eqz v1, :cond_14

    invoke-interface {v1, v3, v0}, Lc8/Rbf;->onException(Landroid/content/Intent;Ljava/lang/Exception;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 381
    const/4 v1, 0x0

    .line 288
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    :try_start_0
    iget-boolean v9, p0, Lc8/Ybf;->mAllowLeaving:Z

    if-eqz v9, :cond_9

    .line 289
    sget-object v9, Lc8/Ybf;->mNavResolver:Lc8/Ubf;

    iget-object v10, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x10000

    invoke-interface {v9, v10, v3, v11}, Lc8/Ubf;->resolveActivity(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 292
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_8

    .line 295
    sget-object v9, Lc8/Ybf;->mNavResolver:Lc8/Ubf;

    iget-object v10, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x10000

    invoke-interface {v9, v10, v3, v11}, Lc8/Ubf;->queryIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 298
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    move-object v6, v9

    .line 299
    .local v6, "rinfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    if-nez v6, :cond_7

    .line 300
    new-instance v9, Landroid/content/ActivityNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No Activity found to handle "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 298
    .end local v6    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 303
    .restart local v6    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "rinfo":Landroid/content/pm/ResolveInfo;
    .local v7, "target":Landroid/content/ComponentName;
    :goto_2
    iget-boolean v9, p0, Lc8/Ybf;->mDisallowLoopback:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_e

    if-eqz v7, :cond_e

    .line 346
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 347
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Loopback disallowed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 305
    .end local v7    # "target":Landroid/content/ComponentName;
    :cond_8
    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .restart local v7    # "target":Landroid/content/ComponentName;
    goto :goto_2

    .line 309
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "target":Landroid/content/ComponentName;
    :cond_9
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lc8/Xaf;->isMultiPackageMode(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 311
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    sget-object v9, Lc8/Ybf;->mNavResolver:Lc8/Ubf;

    iget-object v10, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x10000

    invoke-interface {v9, v10, v3, v11}, Lc8/Ubf;->resolveActivity(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 315
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_b

    .line 318
    sget-object v9, Lc8/Ybf;->mNavResolver:Lc8/Ubf;

    iget-object v10, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x10000

    invoke-interface {v9, v10, v3, v11}, Lc8/Ubf;->queryIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 321
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v5}, Lc8/Ybf;->optimum(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 322
    .restart local v6    # "rinfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_a

    .line 323
    new-instance v9, Landroid/content/ActivityNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No Activity found to handle "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 325
    :cond_a
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "rinfo":Landroid/content/pm/ResolveInfo;
    :goto_3
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 332
    .restart local v7    # "target":Landroid/content/ComponentName;
    goto/16 :goto_2

    .line 327
    .end local v7    # "target":Landroid/content/ComponentName;
    :cond_b
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 334
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_c
    sget-object v9, Lc8/Ybf;->mNavResolver:Lc8/Ubf;

    iget-object v10, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x10000

    invoke-interface {v9, v10, v3, v11}, Lc8/Ubf;->queryIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 337
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v5}, Lc8/Ybf;->optimum(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 338
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_d

    new-instance v9, Landroid/content/ActivityNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No Activity found to handle "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 340
    :cond_d
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .restart local v7    # "target":Landroid/content/ComponentName;
    goto/16 :goto_2

    .line 352
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_e
    iget-object v9, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    if-eqz v9, :cond_11

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_11

    .line 353
    iget-object v9, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    iget-object v10, p0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v9, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    iget-object v10, p0, Lc8/Ybf;->mTaskStack:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/content/Intent;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/Intent;

    invoke-direct {p0, v9}, Lc8/Ybf;->startActivities([Landroid/content/Intent;)V

    .line 362
    :goto_4
    iget-boolean v9, p0, Lc8/Ybf;->mDisableTransition:Z

    if-nez v9, :cond_f

    sget-object v9, Lc8/Ybf;->mTransition:[I

    if-eqz v9, :cond_f

    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_f

    .line 363
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    sget-object v10, Lc8/Ybf;->mTransition:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lc8/Ybf;->mTransition:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 366
    :cond_f
    invoke-direct {p0}, Lc8/Ybf;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 367
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 369
    .local v4, "lenth":I
    const/16 v9, 0x1400

    if-le v4, v9, :cond_10

    .line 370
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Your url : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is too large which may cause Exception, plz check it!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 374
    .end local v4    # "lenth":I
    .end local v8    # "url":Ljava/lang/String;
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 355
    :cond_11
    iget v9, p0, Lc8/Ybf;->mRequestCode:I

    if-ltz v9, :cond_12

    .line 356
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    iget v10, p0, Lc8/Ybf;->mRequestCode:I

    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 358
    :cond_12
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    instance-of v9, v9, Landroid/app/Activity;

    if-nez v9, :cond_13

    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 359
    :cond_13
    iget-object v9, p0, Lc8/Ybf;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 384
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "target":Landroid/content/ComponentName;
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public toUri(Lc8/bcf;)Z
    .locals 1
    .param p1, "uri"    # Lc8/bcf;

    .prologue
    .line 246
    invoke-virtual {p1}, Lc8/bcf;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Ybf;->toUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public toUri(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Ybf;->toUri(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public withCategory(Ljava/lang/String;)Lc8/Ybf;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    return-object p0
.end method

.method public withExtras(Landroid/os/Bundle;)Lc8/Ybf;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-object p0

    .line 189
    :cond_0
    iget-object v0, p0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public withFlags(I)Lc8/Ybf;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lc8/Ybf;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    return-object p0
.end method
