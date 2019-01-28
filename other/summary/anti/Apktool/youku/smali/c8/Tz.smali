.class public abstract Lc8/Tz;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Sz;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 676
    new-instance v0, Lc8/Rz;

    invoke-direct {v0}, Lc8/Rz;-><init>()V

    sput-object v0, Lc8/Tz;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/Tz;->mFilters:Ljava/util/HashSet;

    .line 693
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Tz;->mTypeToFilter:Ljava/util/HashMap;

    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Tz;->mBaseTypeToFilter:Ljava/util/HashMap;

    .line 709
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Tz;->mWildTypeToFilter:Ljava/util/HashMap;

    .line 714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Tz;->mSchemeToFilter:Ljava/util/HashMap;

    .line 720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Tz;->mActionToFilter:Ljava/util/HashMap;

    .line 725
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Tz;->mTypedActionToFilter:Ljava/util/HashMap;

    return-void
.end method

.method private final addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 439
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 440
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-nez v1, :cond_0

    .line 441
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lc8/Tz;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 442
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    aput-object p3, v1, v5

    .line 459
    :goto_0
    return-void

    .line 445
    :cond_0
    array-length v0, v1

    .line 446
    .local v0, "N":I
    move v2, v0

    .line 447
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    if-nez v4, :cond_1

    .line 448
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 450
    :cond_1
    if-ge v2, v0, :cond_2

    .line 451
    aput-object p3, v1, v2

    goto :goto_0

    .line 453
    :cond_2
    mul-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lc8/Tz;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 454
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    aput-object p3, v3, v0

    .line 456
    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildResolveList(Landroid/content/Intent;Lc8/Qz;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "debug"    # Z
    .param p4, "defaultOnly"    # Z
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lc8/Qz",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p2, "categories":Lc8/Qz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, "src":[Landroid/content/IntentFilter;, "[TF;"
    .local p8, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 593
    .local v6, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v15

    .line 595
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    const/4 v10, 0x1

    .line 601
    .local v10, "excludingStopped":Z
    :goto_0
    if-eqz p7, :cond_3

    move-object/from16 v0, p7

    array-length v9, v0

    .line 602
    .local v9, "N":I
    :goto_1
    const/4 v11, 0x0

    .line 605
    .local v11, "hasNonDefaults":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v9, :cond_b

    aget-object v2, p7, v12

    .local v2, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v2, :cond_b

    .line 607
    if-eqz p3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Matching against filter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    :cond_0
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lc8/Tz;->isFilterStopped(Landroid/content/IntentFilter;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 610
    if-eqz p3, :cond_1

    .line 605
    :cond_1
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 595
    .end local v2    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v9    # "N":I
    .end local v10    # "excludingStopped":Z
    .end local v11    # "hasNonDefaults":Z
    .end local v12    # "i":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 601
    .restart local v10    # "excludingStopped":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 617
    .restart local v2    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v9    # "N":I
    .restart local v11    # "hasNonDefaults":Z
    .restart local v12    # "i":I
    :cond_4
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lc8/Tz;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 618
    if-eqz p3, :cond_1

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Filter is not from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 625
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Lc8/Tz;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 626
    if-eqz p3, :cond_1

    goto :goto_3

    .line 632
    :cond_6
    const-string/jumbo v8, "IntentResolver"

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v13

    .line 633
    .local v13, "match":I
    if-ltz v13, :cond_a

    .line 634
    if-eqz p3, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Filter matched!  match=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 635
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hasDefault="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    .line 636
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    :cond_7
    if-eqz p4, :cond_8

    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 638
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lc8/Tz;->newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;

    move-result-object v14

    .line 639
    .local v14, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz v14, :cond_1

    .line 640
    move-object/from16 v0, p8

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 648
    .end local v14    # "oneResult":Ljava/lang/Object;, "TR;"
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 651
    :cond_a
    if-eqz p3, :cond_1

    .line 653
    packed-switch v13, :pswitch_data_0

    .line 658
    const-string/jumbo v16, "unknown reason"

    .line 660
    .local v16, "reason":Ljava/lang/String;
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Filter did not match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    .line 654
    .end local v16    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v16, "action"

    .restart local v16    # "reason":Ljava/lang/String;
    goto :goto_4

    .line 655
    .end local v16    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v16, "category"

    .restart local v16    # "reason":Ljava/lang/String;
    goto :goto_4

    .line 656
    .end local v16    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v16, "data"

    .restart local v16    # "reason":Ljava/lang/String;
    goto :goto_4

    .line 657
    .end local v16    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v16, "type"

    .restart local v16    # "reason":Ljava/lang/String;
    goto :goto_4

    .line 665
    .end local v2    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v13    # "match":I
    .end local v16    # "reason":Ljava/lang/String;
    :cond_b
    if-eqz v11, :cond_c

    .line 666
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_c

    .line 668
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    .line 672
    :cond_c
    return-void

    .line 653
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Lc8/Qz;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lc8/Qz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 582
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 583
    const/4 v1, 0x0

    .line 585
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lc8/Qz;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Qz;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 3
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_1

    .line 523
    const/4 v1, 0x0

    .line 533
    :cond_0
    return v1

    .line 526
    :cond_1
    const/4 v1, 0x0

    .line 527
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 529
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 531
    invoke-direct {p0, p3, v0, p1}, Lc8/Tz;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 462
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 463
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    move v3, v5

    .line 488
    :cond_0
    return v3

    .line 467
    :cond_1
    const/4 v3, 0x0

    .line 468
    .local v3, "num":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 470
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 471
    move-object v0, v2

    .line 472
    .local v0, "baseName":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 473
    .local v4, "slashpos":I
    if-lez v4, :cond_2

    .line 474
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_1
    iget-object v6, p0, Lc8/Tz;->mTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v2, p1}, Lc8/Tz;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 481
    if-lez v4, :cond_3

    .line 482
    iget-object v6, p0, Lc8/Tz;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v0, p1}, Lc8/Tz;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 476
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 484
    :cond_3
    iget-object v6, p0, Lc8/Tz;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v0, p1}, Lc8/Tz;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private final remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[TF;>;"
    const/4 v6, 0x0

    .line 554
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 555
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v1, :cond_4

    .line 556
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 557
    .local v0, "LAST":I
    :goto_0
    if-ltz v0, :cond_0

    aget-object v5, v1, v0

    if-nez v5, :cond_0

    .line 558
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 560
    :cond_0
    move v2, v0

    .local v2, "idx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 561
    aget-object v5, v1, v2

    if-ne v5, p3, :cond_2

    .line 562
    sub-int v4, v0, v2

    .line 563
    .local v4, "remain":I
    if-lez v4, :cond_1

    .line 564
    add-int/lit8 v5, v2, 0x1

    invoke-static {v1, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    :cond_1
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 567
    add-int/lit8 v0, v0, -0x1

    .line 560
    .end local v4    # "remain":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 570
    :cond_3
    if-gez v0, :cond_5

    .line 571
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v0    # "LAST":I
    .end local v2    # "idx":I
    :cond_4
    :goto_2
    return-void

    .line 572
    .restart local v0    # "LAST":I
    .restart local v2    # "idx":I
    :cond_5
    array-length v5, v1

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_4

    .line 573
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, Lc8/Tz;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 574
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v5, v0, 0x1

    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 3
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_1

    .line 539
    const/4 v1, 0x0

    .line 549
    :cond_0
    return v1

    .line 542
    :cond_1
    const/4 v1, 0x0

    .line 543
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 547
    invoke-direct {p0, p3, v0, p1}, Lc8/Tz;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 492
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 493
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    move v3, v5

    .line 517
    :cond_0
    return v3

    .line 497
    :cond_1
    const/4 v3, 0x0

    .line 498
    .local v3, "num":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 500
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 501
    move-object v0, v2

    .line 502
    .local v0, "baseName":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 503
    .local v4, "slashpos":I
    if-lez v4, :cond_2

    .line 504
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 509
    :goto_1
    iget-object v6, p0, Lc8/Tz;->mTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v2, p1}, Lc8/Tz;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 511
    if-lez v4, :cond_3

    .line 512
    iget-object v6, p0, Lc8/Tz;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v0, p1}, Lc8/Tz;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 506
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 514
    :cond_3
    iget-object v6, p0, Lc8/Tz;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v0, p1}, Lc8/Tz;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    iget-object v2, p0, Lc8/Tz;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lc8/Tz;->mSchemeToFilter:Ljava/util/HashMap;

    const-string/jumbo v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lc8/Tz;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, "numS":I
    const-string/jumbo v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lc8/Tz;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 233
    .local v1, "numT":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lc8/Tz;->mActionToFilter:Ljava/util/HashMap;

    const-string/jumbo v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lc8/Tz;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 237
    :cond_0
    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lc8/Tz;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string/jumbo v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lc8/Tz;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 241
    :cond_1
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 436
    return-void
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    new-instance v0, Lc8/Sz;

    iget-object v1, p0, Lc8/Tz;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/Sz;-><init>(Lc8/Tz;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lc8/Tz;->mFilters:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;
    .locals 0
    .param p2, "match"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)TR;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;
    .locals 38
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "scheme":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v10, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_8

    const/4 v5, 0x1

    .line 326
    .local v5, "debug":Z
    :goto_0
    const/4 v9, 0x0

    .line 327
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v18, 0x0

    .line 328
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v26, 0x0

    .line 329
    .local v26, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v34, 0x0

    .line 333
    .local v34, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz p2, :cond_1

    .line 334
    const/16 v2, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v37

    .line 335
    .local v37, "slashpos":I
    if-lez v37, :cond_1

    .line 336
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 337
    .local v36, "baseType":Ljava/lang/String;
    const-string/jumbo v2, "*"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 338
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v37, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v37, 0x1

    .line 339
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_9

    .line 342
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Tz;->mTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 343
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Tz;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .line 351
    .restart local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Tz;->mWildTypeToFilter:Ljava/util/HashMap;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v26, [Landroid/content/IntentFilter;

    .line 364
    .end local v36    # "baseType":Ljava/lang/String;
    .end local v37    # "slashpos":I
    .restart local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Tz;->mSchemeToFilter:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v34, [Landroid/content/IntentFilter;

    .line 371
    .restart local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_2
    if-nez p2, :cond_3

    if-nez v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Tz;->mActionToFilter:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 375
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_3
    invoke-static/range {p1 .. p1}, Lc8/Tz;->getFastIntentCategories(Landroid/content/Intent;)Lc8/Qz;

    move-result-object v4

    .line 376
    .local v4, "categories":Lc8/Qz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v9, :cond_4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    .line 377
    invoke-direct/range {v2 .. v10}, Lc8/Tz;->buildResolveList(Landroid/content/Intent;Lc8/Qz;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 380
    :cond_4
    if-eqz v18, :cond_5

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    move v14, v5

    move/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, v8

    move-object/from16 v19, v10

    .line 381
    invoke-direct/range {v11 .. v19}, Lc8/Tz;->buildResolveList(Landroid/content/Intent;Lc8/Qz;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 384
    :cond_5
    if-eqz v26, :cond_6

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, p3

    move-object/from16 v24, p2

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    .line 385
    invoke-direct/range {v19 .. v27}, Lc8/Tz;->buildResolveList(Landroid/content/Intent;Lc8/Qz;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 388
    :cond_6
    if-eqz v34, :cond_7

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, p3

    move-object/from16 v32, p2

    move-object/from16 v33, v8

    move-object/from16 v35, v10

    .line 389
    invoke-direct/range {v27 .. v35}, Lc8/Tz;->buildResolveList(Landroid/content/Intent;Lc8/Qz;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 392
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lc8/Tz;->sortResults(Ljava/util/List;)V

    .line 394
    return-object v10

    .line 325
    .end local v4    # "categories":Lc8/Qz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v5    # "debug":Z
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 346
    .restart local v5    # "debug":Z
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v36    # "baseType":Ljava/lang/String;
    .restart local v37    # "slashpos":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Tz;->mBaseTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 347
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Tz;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .restart local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    goto/16 :goto_1

    .line 352
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Tz;->mTypedActionToFilter:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    goto/16 :goto_2
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<[TF;>;)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v8, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 308
    .local v3, "debug":Z
    :goto_0
    invoke-static {p1}, Lc8/Tz;->getFastIntentCategories(Landroid/content/Intent;)Lc8/Qz;

    move-result-object v2

    .line 309
    .local v2, "categories":Lc8/Qz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "scheme":Ljava/lang/String;
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 311
    .local v9, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_1

    .line 313
    invoke-virtual {p4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/IntentFilter;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    .line 312
    invoke-direct/range {v0 .. v8}, Lc8/Tz;->buildResolveList(Landroid/content/Intent;Lc8/Qz;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 311
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 306
    .end local v2    # "categories":Lc8/Qz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v3    # "debug":Z
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v9    # "N":I
    .end local v10    # "i":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 315
    .restart local v2    # "categories":Lc8/Qz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet<Ljava/lang/String;>;"
    .restart local v3    # "debug":Z
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v9    # "N":I
    .restart local v10    # "i":I
    :cond_1
    invoke-virtual {p0, v8}, Lc8/Tz;->sortResults(Ljava/util/List;)V

    .line 316
    return-object v8
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p0, p1}, Lc8/Tz;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 245
    iget-object v0, p0, Lc8/Tz;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lc8/Tz;->mSchemeToFilter:Ljava/util/HashMap;

    const-string/jumbo v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lc8/Tz;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, "numS":I
    const-string/jumbo v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lc8/Tz;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 252
    .local v1, "numT":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lc8/Tz;->mActionToFilter:Ljava/util/HashMap;

    const-string/jumbo v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lc8/Tz;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 256
    :cond_0
    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lc8/Tz;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string/jumbo v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lc8/Tz;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 260
    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lc8/Tz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lc8/Tz;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 432
    return-void
.end method
