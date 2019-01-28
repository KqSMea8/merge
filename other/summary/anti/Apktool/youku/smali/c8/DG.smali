.class public Lc8/DG;
.super Ljava/lang/Object;
.source "WVPackageAppCleanup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GG;->calcToRetainApp(Ljava/util/Hashtable;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lc8/BG;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GG;

.field final synthetic val$allApps:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lc8/GG;Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lc8/DG;->this$0:Lc8/GG;

    iput-object p2, p0, Lc8/DG;->val$allApps:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lc8/BG;Lc8/BG;)I
    .locals 16
    .param p1, "lhs"    # Lc8/BG;
    .param p2, "rhs"    # Lc8/BG;

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/DG;->val$allApps:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    iget-object v9, v0, Lc8/BG;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 447
    .local v2, "lInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-nez v2, :cond_1

    .line 448
    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/DG;->this$0:Lc8/GG;

    iget-object v8, v8, Lc8/GG;->infoMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 449
    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/DG;->this$0:Lc8/GG;

    iget-object v8, v8, Lc8/GG;->infoMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v9, v0, Lc8/BG;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_0
    const/4 v8, -0x1

    .line 494
    :goto_0
    return v8

    .line 454
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/DG;->val$allApps:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    iget-object v9, v0, Lc8/BG;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 455
    .local v3, "rInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-nez v3, :cond_3

    .line 456
    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/DG;->this$0:Lc8/GG;

    iget-object v8, v8, Lc8/GG;->infoMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 457
    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/DG;->this$0:Lc8/GG;

    iget-object v8, v8, Lc8/GG;->infoMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v9, v0, Lc8/BG;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v8

    sget-object v9, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v8, v9, :cond_4

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v8

    sget-object v9, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v8, v9, :cond_4

    .line 462
    const/4 v8, -0x1

    goto :goto_0

    .line 463
    :cond_4
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v8

    sget-object v9, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v8, v9, :cond_5

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v8

    sget-object v9, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v8, v9, :cond_5

    .line 464
    const/4 v8, 0x1

    goto :goto_0

    .line 466
    :cond_5
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v8

    const/16 v9, 0x9

    if-ge v8, v9, :cond_6

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v8

    const/16 v9, 0x9

    if-lt v8, v9, :cond_6

    .line 467
    const/4 v8, -0x1

    goto :goto_0

    .line 468
    :cond_6
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v8

    const/16 v9, 0x9

    if-lt v8, v9, :cond_7

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v8

    const/16 v9, 0x9

    if-ge v8, v9, :cond_7

    .line 469
    const/4 v8, 0x1

    goto :goto_0

    .line 472
    :cond_7
    move-object/from16 v0, p1

    iget-wide v8, v0, Lc8/BG;->count:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v12

    int-to-double v12, v12

    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iget-wide v14, v14, Lc8/EB;->packagePriorityWeight:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    mul-double v4, v8, v10

    .line 473
    .local v4, "lValue":D
    move-object/from16 v0, p2

    iget-wide v8, v0, Lc8/BG;->count:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v12

    int-to-double v12, v12

    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iget-wide v14, v14, Lc8/EB;->packagePriorityWeight:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    mul-double v6, v8, v10

    .line 474
    .local v6, "rValue":D
    cmpl-double v8, v4, v6

    if-nez v8, :cond_e

    .line 475
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v8

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 476
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 477
    :cond_8
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v8

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v9

    if-le v8, v9, :cond_9

    .line 478
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 480
    :cond_9
    iget v8, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v9, Lc8/dH;->ZIP_REMOVED:I

    if-ne v8, v9, :cond_a

    iget v8, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v9, Lc8/dH;->ZIP_NEWEST:I

    if-ne v8, v9, :cond_a

    .line 481
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 482
    :cond_a
    iget v8, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v9, Lc8/dH;->ZIP_NEWEST:I

    if-ne v8, v9, :cond_b

    iget v8, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v9, Lc8/dH;->ZIP_REMOVED:I

    if-ne v8, v9, :cond_b

    .line 483
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 485
    :cond_b
    iget-boolean v8, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-eqz v8, :cond_c

    iget-boolean v8, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-nez v8, :cond_c

    .line 486
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 487
    :cond_c
    iget-boolean v8, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-eqz v8, :cond_d

    iget-boolean v8, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-nez v8, :cond_d

    .line 488
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 491
    :cond_d
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 494
    :cond_e
    cmpg-double v8, v4, v6

    if-gez v8, :cond_f

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 443
    check-cast p1, Lc8/BG;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lc8/BG;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/DG;->compare(Lc8/BG;Lc8/BG;)I

    move-result v0

    return v0
.end method
