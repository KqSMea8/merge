.class public Lc8/UOf;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TOf;
    }
.end annotation


# static fields
.field static final PRIORITY_ABOVE_NORMAL:I = 0x2ee

.field static final PRIORITY_BELOW_NORMAL:I = 0xfa

.field static final PRIORITY_HIGHEST:I = 0x3e8

.field static final PRIORITY_LOWEST:I = 0x0

.field static final PRIORITY_NORMAL:I = 0x1f4

.field private static final featureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/TOf;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelf:Lc8/UOf;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1f4

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lc8/UOf;

    invoke-direct {v0}, Lc8/UOf;-><init>()V

    sput-object v0, Lc8/UOf;->mSelf:Lc8/UOf;

    .line 39
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.ClickDrawableMaskFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_clickDrawableMaskFeature:I

    const/16 v4, 0x2ee

    invoke-direct {v2, v3, v4}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.RatioFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_ratioFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.RoundRectFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_roundRectFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.RoundFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_roundFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.ClickViewMaskFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_clickViewMaskFeature:I

    const/16 v4, 0xfa

    invoke-direct {v2, v3, v4}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.BinaryPageFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_binaryPageFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.PinnedHeaderFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_pinnedHeaderFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.PullToRefreshFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_pullToRefreshFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.StickyScrollFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_stickyScrollFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.ParallaxScrollFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_parallaxScrollFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.BounceScrollFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_bounceScrollFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.PencilShapeFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_pencilShapeFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.AutoScaleFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_autoScaleFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.RotateFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_rotateFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.ImageSaveFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_imagesavefeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.CellAnimatorFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_cellAnimatorFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.RecyclerCellAnimatorFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_recyclerCellAnimatorFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.DragToRefreshFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_dragToRefreshFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.feature.features.ImageShapeFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_imageShapeFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.extend.feature.features.SmoothScrollFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_smoothScrollFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.uikit.extend.feature.features.SmoothRecyclerScrollFeature"

    new-instance v2, Lc8/TOf;

    sget v3, Lcom/youku/phone/R$styleable;->FeatureNameSpace_uik_smoothRecyclerScrollFeature:I

    invoke-direct {v2, v3, v5}, Lc8/TOf;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static creator(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/SOf",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v4, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;>;"
    sget-object v8, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    .local v3, "feature":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/TOf;

    iget v7, v8, Lc8/TOf;->id:I

    .line 104
    .local v7, "id":I
    if-ltz v7, :cond_0

    .line 106
    invoke-virtual {p1, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 107
    .local v5, "flag":Z
    if-eqz v5, :cond_0

    .line 111
    :try_start_0
    invoke-static {v3}, Lc8/UOf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 112
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 114
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;>;"
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v8, "Android UiKit"

    const-string/jumbo v9, "can\'t find feature by id"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lc8/APf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;>;"
    .end local v3    # "feature":Ljava/lang/String;
    .end local v5    # "flag":Z
    .end local v7    # "id":I
    :cond_1
    return-object v4
.end method

.method public static getFeaturePriority(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v1, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lc8/UOf;->featureMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/TOf;

    .line 132
    .local v0, "info":Lc8/TOf;
    iget v1, v0, Lc8/TOf;->priority:I

    .line 134
    .end local v0    # "info":Lc8/TOf;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
