.class public Lc8/HYf;
.super Lc8/CZf;
.source "WXDomObject.java"

# interfaces
.implements Lc8/qYf;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/GYf;
    }
.end annotation


# static fields
.field public static final CHILDREN:Ljava/lang/String; = "children"

.field static final DESTROYED:Lc8/HYf;

.field public static final ROOT:Ljava/lang/String; = "_root"

.field public static final TAG:Ljava/lang/String;

.field public static final TRANSFORM:Ljava/lang/String; = "transform"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSFORM_ORIGIN:Ljava/lang/String; = "transformOrigin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private cloneThis:Z

.field private fixedStyleRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAttributes:Lc8/xYf;

.field private mDomChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/HYf;",
            ">;"
        }
    .end annotation
.end field

.field private mDomContext:Lc8/pYf;

.field public mDomThreadNanos:J

.field public mDomThreadTimestamp:J

.field mEvents:Lcom/taobao/weex/dom/WXEvent;

.field mRef:Ljava/lang/String;

.field mStyles:Lc8/PYf;

.field mType:Ljava/lang/String;

.field private mViewPortWidth:I

.field private mYoung:Z

.field public parent:Lc8/HYf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private transition:Lc8/QZf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-class v0, Lc8/HYf;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/HYf;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lc8/HYf;

    invoke-direct {v0}, Lc8/HYf;-><init>()V

    .line 75
    sput-object v0, Lc8/HYf;->DESTROYED:Lc8/HYf;

    const-string/jumbo v1, "_destroyed"

    iput-object v1, v0, Lc8/HYf;->mRef:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lc8/CZf;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc8/HYf;->sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    const/16 v0, 0x2ee

    iput v0, p0, Lc8/HYf;->mViewPortWidth:I

    .line 83
    const-string/jumbo v0, "_root"

    iput-object v0, p0, Lc8/HYf;->mRef:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "div"

    iput-object v0, p0, Lc8/HYf;->mType:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lc8/HYf;->mYoung:Z

    .line 112
    iput-boolean v1, p0, Lc8/HYf;->cloneThis:Z

    .line 750
    return-void
.end method

.method public static parse(Lcom/alibaba/fastjson/JSONObject;Lc8/nVf;)Lc8/HYf;
    .locals 1
    .param p0, "json"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 693
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/HYf;->parse(Lcom/alibaba/fastjson/JSONObject;Lc8/nVf;Lc8/HYf;)Lc8/HYf;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lcom/alibaba/fastjson/JSONObject;Lc8/nVf;Lc8/HYf;)Lc8/HYf;
    .locals 18
    .param p0, "json"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "parentDomObject"    # Lc8/HYf;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 697
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 698
    .local v10, "startNanos":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 699
    .local v12, "timestamp":J
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v15

    if-gtz v15, :cond_1

    .line 700
    :cond_0
    const/4 v5, 0x0

    .line 747
    :goto_0
    return-object v5

    .line 703
    :cond_1
    const-string/jumbo v15, "type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 705
    .local v14, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lc8/nVf;->isNeedValidate()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 706
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v15

    invoke-virtual {v15}, Lc8/pVf;->getValidateProcessor()Lc8/iXf;

    move-result-object v7

    .line 708
    .local v7, "processor":Lc8/iXf;
    if-eqz v7, :cond_2

    .line 709
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v7, v0, v14, v1}, Lc8/iXf;->onComponentValidate(Lc8/nVf;Ljava/lang/String;Lc8/HYf;)Lc8/gXf;

    move-result-object v8

    .line 711
    .local v8, "result":Lc8/gXf;
    if-eqz v8, :cond_4

    iget-boolean v15, v8, Lc8/gXf;->isSuccess:Z

    if-nez v15, :cond_4

    .line 712
    iget-object v15, v8, Lc8/gXf;->replacedComponent:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string/jumbo v14, "div"

    .line 714
    :goto_1
    const-string/jumbo v15, "type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v15, v8, Lc8/gXf;->validateInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v15, :cond_2

    .line 716
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[WXDomObject]onComponentValidate failure. >>> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lc8/gXf;->validateInfo:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 717
    .local v9, "tag":Ljava/lang/String;
    invoke-static {v9}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 725
    .end local v7    # "processor":Lc8/iXf;
    .end local v8    # "result":Lc8/gXf;
    .end local v9    # "tag":Ljava/lang/String;
    :cond_2
    invoke-static {v14}, Lc8/IYf;->newInstance(Ljava/lang/String;)Lc8/HYf;

    move-result-object v5

    .line 727
    .local v5, "domObject":Lc8/HYf;
    invoke-virtual/range {p1 .. p1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v15

    invoke-virtual {v5, v15}, Lc8/HYf;->setViewPortWidth(I)V

    .line 729
    if-nez v5, :cond_5

    .line 730
    const/4 v5, 0x0

    goto :goto_0

    .line 712
    .end local v5    # "domObject":Lc8/HYf;
    .restart local v7    # "processor":Lc8/iXf;
    .restart local v8    # "result":Lc8/gXf;
    :cond_3
    iget-object v14, v8, Lc8/gXf;->replacedComponent:Ljava/lang/String;

    goto :goto_1

    .line 719
    :cond_4
    if-nez v8, :cond_2

    .line 720
    const/4 v5, 0x0

    goto :goto_0

    .line 732
    .end local v7    # "processor":Lc8/iXf;
    .end local v8    # "result":Lc8/gXf;
    .restart local v5    # "domObject":Lc8/HYf;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lc8/HYf;->parseFromJson(Lcom/alibaba/fastjson/JSONObject;)V

    .line 733
    move-object/from16 v0, p1

    iput-object v0, v5, Lc8/HYf;->mDomContext:Lc8/pYf;

    .line 734
    move-object/from16 v0, p2

    iput-object v0, v5, Lc8/HYf;->parent:Lc8/HYf;

    .line 736
    const-string/jumbo v15, "children"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 737
    .local v2, "children":Ljava/lang/Object;
    if-eqz v2, :cond_6

    instance-of v15, v2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v15, :cond_6

    move-object v3, v2

    .line 738
    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    .line 739
    .local v3, "childrenArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 740
    .local v4, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v4, :cond_6

    .line 741
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v15, v0, v5}, Lc8/HYf;->parse(Lcom/alibaba/fastjson/JSONObject;Lc8/nVf;Lc8/HYf;)Lc8/HYf;

    move-result-object v15

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lc8/HYf;->add(Lc8/HYf;I)V

    .line 740
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 745
    .end local v3    # "childrenArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "count":I
    .end local v6    # "i":I
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    iput-wide v0, v5, Lc8/HYf;->mDomThreadNanos:J

    .line 746
    iput-wide v12, v5, Lc8/HYf;->mDomThreadTimestamp:J

    goto/16 :goto_0
.end method

.method public static prepareRoot(Lc8/HYf;FF)V
    .locals 4
    .param p0, "domObj"    # Lc8/HYf;
    .param p1, "defaultHeight"    # F
    .param p2, "defaultWidth"    # F

    .prologue
    .line 188
    const-string/jumbo v2, "_root"

    iput-object v2, p0, Lc8/HYf;->mRef:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v0

    .line 191
    .local v0, "domStyles":Lc8/PYf;
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 192
    .local v1, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "flexDirection"

    invoke-virtual {v0, v2}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    const-string/jumbo v2, "flexDirection"

    const-string/jumbo v3, "column"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    const-string/jumbo v2, "backgroundColor"

    invoke-virtual {v0, v2}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    const-string/jumbo v2, "backgroundColor"

    const-string/jumbo v3, "#ffffff"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_1
    const-string/jumbo v2, "defaultWidth"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v2, "defaultHeight"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0, v1}, Lc8/HYf;->updateStyle(Ljava/util/Map;)V

    .line 203
    return-void
.end method


# virtual methods
.method public add(Lc8/HYf;I)V
    .locals 3
    .param p1, "child"    # Lc8/HYf;
    .param p2, "index"    # I

    .prologue
    const/4 v1, -0x1

    .line 367
    if-eqz p1, :cond_0

    if-lt p2, v1, :cond_0

    iget-object v2, p0, Lc8/HYf;->sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v2, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    if-nez v2, :cond_2

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    .line 374
    :cond_2
    iget-object v2, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 375
    .local v0, "count":I
    if-lt p2, v0, :cond_3

    move p2, v1

    .line 376
    :cond_3
    if-ne p2, v1, :cond_4

    .line 377
    iget-object v1, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-super {p0}, Lc8/CZf;->getChildCount()I

    move-result v1

    invoke-super {p0, p1, v1}, Lc8/CZf;->addChildAt(Lc8/CZf;I)V

    .line 383
    :goto_1
    iput-object p0, p1, Lc8/HYf;->parent:Lc8/HYf;

    goto :goto_0

    .line 380
    :cond_4
    iget-object v1, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 381
    invoke-super {p0, p1, p2}, Lc8/CZf;->addChildAt(Lc8/CZf;I)V

    goto :goto_1
.end method

.method public add2Dom(Lc8/HYf;I)V
    .locals 3
    .param p1, "child"    # Lc8/HYf;
    .param p2, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 388
    if-eqz p1, :cond_0

    if-lt p2, v1, :cond_0

    iget-object v2, p0, Lc8/HYf;->sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-super {p0}, Lc8/CZf;->getChildCount()I

    move-result v0

    .line 393
    .local v0, "count":I
    if-lt p2, v0, :cond_2

    move p2, v1

    .line 394
    :cond_2
    if-ne p2, v1, :cond_3

    .line 395
    invoke-super {p0}, Lc8/CZf;->getChildCount()I

    move-result v1

    invoke-super {p0, p1, v1}, Lc8/CZf;->addChildAt(Lc8/CZf;I)V

    .line 399
    :goto_1
    iput-object p0, p1, Lc8/HYf;->parent:Lc8/HYf;

    goto :goto_0

    .line 397
    :cond_3
    invoke-super {p0, p1, p2}, Lc8/CZf;->addChildAt(Lc8/CZf;I)V

    goto :goto_1
.end method

.method public add2FixedDomList(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 677
    iget-object v0, p0, Lc8/HYf;->fixedStyleRefs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/HYf;->fixedStyleRefs:Ljava/util/ArrayList;

    .line 680
    :cond_0
    iget-object v0, p0, Lc8/HYf;->fixedStyleRefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-nez v0, :cond_2

    .line 418
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    .line 420
    :cond_2
    invoke-virtual {p0, p1}, Lc8/HYf;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public applyStyle(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lc8/HYf;->applyStyleToNode(Ljava/util/Map;)V

    .line 483
    return-void
.end method

.method applyStyleToNode()V
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/HYf;->applyStyleToNode(Ljava/util/Map;)V

    .line 487
    return-void
.end method

.method applyStyleToNode(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 490
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 599
    :cond_0
    return-void

    .line 493
    :cond_1
    invoke-virtual {p0}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v2

    .line 494
    .local v2, "stylesMap":Lc8/PYf;
    invoke-virtual {p0}, Lc8/HYf;->getViewPortWidth()I

    move-result v3

    .line 495
    .local v3, "vp":I
    invoke-virtual {v2}, Lc8/PYf;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 496
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 497
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_2
    move v4, v6

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 499
    :pswitch_0
    invoke-virtual {v2}, Lc8/PYf;->getAlignItems()Lcom/taobao/weex/dom/flex/CSSAlign;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setAlignItems(Lcom/taobao/weex/dom/flex/CSSAlign;)V

    goto :goto_0

    .line 497
    :sswitch_0
    const-string/jumbo v11, "alignItems"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v11, "alignSelf"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v11, "flex"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_1

    :sswitch_3
    const-string/jumbo v11, "flexDirection"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v9

    goto :goto_1

    :sswitch_4
    const-string/jumbo v11, "justifyContent"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v11, "flexWrap"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v11, "minWidth"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v11, "minHeight"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v11, "maxWidth"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v10

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v11, "maxHeight"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v11, "defaultHeight"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v11, "height"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v11, "width"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v11, "defaultWidth"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v11, "position"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v11, "left"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v11, "top"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v11, "right"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v11, "bottom"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v11, "margin"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v11, "marginLeft"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v11, "marginTop"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v11, "marginRight"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v11, "marginBottom"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v11, "borderWidth"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v11, "borderTopWidth"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v11, "borderRightWidth"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v11, "borderBottomWidth"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v11, "borderLeftWidth"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v11, "padding"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v11, "paddingLeft"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string/jumbo v11, "paddingTop"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v11, "paddingRight"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v11, "paddingBottom"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x21

    goto/16 :goto_1

    .line 502
    :pswitch_1
    invoke-virtual {v2}, Lc8/PYf;->getAlignSelf()Lcom/taobao/weex/dom/flex/CSSAlign;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setAlignSelf(Lcom/taobao/weex/dom/flex/CSSAlign;)V

    goto/16 :goto_0

    .line 505
    :pswitch_2
    invoke-virtual {v2}, Lc8/PYf;->getFlex()F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setFlex(F)V

    goto/16 :goto_0

    .line 508
    :pswitch_3
    invoke-virtual {v2}, Lc8/PYf;->getFlexDirection()Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setFlexDirection(Lcom/taobao/weex/dom/flex/CSSFlexDirection;)V

    goto/16 :goto_0

    .line 511
    :pswitch_4
    invoke-virtual {v2}, Lc8/PYf;->getJustifyContent()Lcom/taobao/weex/dom/flex/CSSJustify;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setJustifyContent(Lcom/taobao/weex/dom/flex/CSSJustify;)V

    goto/16 :goto_0

    .line 514
    :pswitch_5
    invoke-virtual {v2}, Lc8/PYf;->getCSSWrap()Lcom/taobao/weex/dom/flex/CSSWrap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setWrap(Lcom/taobao/weex/dom/flex/CSSWrap;)V

    goto/16 :goto_0

    .line 517
    :pswitch_6
    invoke-virtual {v2, v3}, Lc8/PYf;->getMinWidth(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setMinWidth(F)V

    goto/16 :goto_0

    .line 520
    :pswitch_7
    invoke-virtual {v2, v3}, Lc8/PYf;->getMinHeight(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setMinHeight(F)V

    goto/16 :goto_0

    .line 523
    :pswitch_8
    invoke-virtual {v2, v3}, Lc8/PYf;->getMaxWidth(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setMaxWidth(F)V

    goto/16 :goto_0

    .line 526
    :pswitch_9
    invoke-virtual {v2, v3}, Lc8/PYf;->getMaxHeight(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setMaxHeight(F)V

    goto/16 :goto_0

    .line 530
    :pswitch_a
    const-string/jumbo v4, "height"

    invoke-virtual {v2, v4}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Lc8/PYf;->getHeight(I)F

    move-result v4

    :goto_2
    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setStyleHeight(F)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Lc8/PYf;->getDefaultHeight()F

    move-result v4

    goto :goto_2

    .line 534
    :pswitch_b
    const-string/jumbo v4, "width"

    invoke-virtual {v2, v4}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Lc8/PYf;->getWidth(I)F

    move-result v4

    :goto_3
    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setStyleWidth(F)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lc8/PYf;->getDefaultWidth()F

    move-result v4

    goto :goto_3

    .line 537
    :pswitch_c
    invoke-virtual {v2}, Lc8/PYf;->getPosition()Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setPositionType(Lcom/taobao/weex/dom/flex/CSSPositionType;)V

    goto/16 :goto_0

    .line 540
    :pswitch_d
    invoke-virtual {v2, v3}, Lc8/PYf;->getLeft(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setPositionLeft(F)V

    goto/16 :goto_0

    .line 543
    :pswitch_e
    invoke-virtual {v2, v3}, Lc8/PYf;->getTop(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setPositionTop(F)V

    goto/16 :goto_0

    .line 546
    :pswitch_f
    invoke-virtual {v2, v3}, Lc8/PYf;->getRight(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setPositionRight(F)V

    goto/16 :goto_0

    .line 549
    :pswitch_10
    invoke-virtual {v2, v3}, Lc8/PYf;->getBottom(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v4}, Lc8/HYf;->setPositionBottom(F)V

    goto/16 :goto_0

    .line 552
    :pswitch_11
    invoke-virtual {v2, v3}, Lc8/PYf;->getMargin(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v10, v4}, Lc8/HYf;->setMargin(IF)V

    goto/16 :goto_0

    .line 555
    :pswitch_12
    invoke-virtual {v2, v3}, Lc8/PYf;->getMarginLeft(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v5, v4}, Lc8/HYf;->setMargin(IF)V

    goto/16 :goto_0

    .line 558
    :pswitch_13
    invoke-virtual {v2, v3}, Lc8/PYf;->getMarginTop(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v7, v4}, Lc8/HYf;->setMargin(IF)V

    goto/16 :goto_0

    .line 561
    :pswitch_14
    invoke-virtual {v2, v3}, Lc8/PYf;->getMarginRight(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v8, v4}, Lc8/HYf;->setMargin(IF)V

    goto/16 :goto_0

    .line 564
    :pswitch_15
    invoke-virtual {v2, v3}, Lc8/PYf;->getMarginBottom(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v9, v4}, Lc8/HYf;->setMargin(IF)V

    goto/16 :goto_0

    .line 567
    :pswitch_16
    invoke-virtual {v2, v3}, Lc8/PYf;->getBorderWidth(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v10, v4}, Lc8/HYf;->setBorder(IF)V

    goto/16 :goto_0

    .line 570
    :pswitch_17
    invoke-virtual {v2, v3}, Lc8/PYf;->getBorderTopWidth(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v7, v4}, Lc8/HYf;->setBorder(IF)V

    goto/16 :goto_0

    .line 573
    :pswitch_18
    invoke-virtual {v2, v3}, Lc8/PYf;->getBorderRightWidth(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v8, v4}, Lc8/HYf;->setBorder(IF)V

    goto/16 :goto_0

    .line 576
    :pswitch_19
    invoke-virtual {v2, v3}, Lc8/PYf;->getBorderBottomWidth(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v9, v4}, Lc8/HYf;->setBorder(IF)V

    goto/16 :goto_0

    .line 579
    :pswitch_1a
    invoke-virtual {v2, v3}, Lc8/PYf;->getBorderLeftWidth(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v5, v4}, Lc8/HYf;->setBorder(IF)V

    goto/16 :goto_0

    .line 582
    :pswitch_1b
    invoke-virtual {v2, v3}, Lc8/PYf;->getPadding(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v10, v4}, Lc8/HYf;->setPadding(IF)V

    goto/16 :goto_0

    .line 585
    :pswitch_1c
    invoke-virtual {v2, v3}, Lc8/PYf;->getPaddingLeft(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v5, v4}, Lc8/HYf;->setPadding(IF)V

    goto/16 :goto_0

    .line 588
    :pswitch_1d
    invoke-virtual {v2, v3}, Lc8/PYf;->getPaddingTop(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v7, v4}, Lc8/HYf;->setPadding(IF)V

    goto/16 :goto_0

    .line 591
    :pswitch_1e
    invoke-virtual {v2, v3}, Lc8/PYf;->getPaddingRight(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v8, v4}, Lc8/HYf;->setPadding(IF)V

    goto/16 :goto_0

    .line 594
    :pswitch_1f
    invoke-virtual {v2, v3}, Lc8/PYf;->getPaddingBottom(I)F

    move-result v4

    invoke-static {v4, v3}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {p0, v9, v4}, Lc8/HYf;->setPadding(IF)V

    goto/16 :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        -0x757f89aa -> :sswitch_1a
        -0x597a2048 -> :sswitch_1e
        -0x56940a43 -> :sswitch_19
        -0x527265d5 -> :sswitch_12
        -0x5201456c -> :sswitch_6
        -0x4cec9971 -> :sswitch_1b
        -0x48c76ed9 -> :sswitch_b
        -0x40737a52 -> :sswitch_13
        -0x3f600445 -> :sswitch_0
        -0x3e464339 -> :sswitch_15
        -0x3a1ff07a -> :sswitch_3
        -0x36017855 -> :sswitch_9
        -0x300fc3ef -> :sswitch_1d
        -0x2737d7fb -> :sswitch_d
        -0x113c6e87 -> :sswitch_17
        -0xd59d8cd -> :sswitch_1c
        -0x7f661e7 -> :sswitch_7
        0x1c155 -> :sswitch_10
        0x2ffff9 -> :sswitch_2
        0x32a007 -> :sswitch_f
        0x55f4784 -> :sswitch_1f
        0x677c21c -> :sswitch_11
        0x6be2dc6 -> :sswitch_c
        0xc0fb19c -> :sswitch_21
        0x17dd56c2 -> :sswitch_8
        0x266ddec8 -> :sswitch_a
        0x2a8c788b -> :sswitch_20
        0x2c2c84fa -> :sswitch_18
        0x2c929929 -> :sswitch_e
        0x3a1ea90e -> :sswitch_16
        0x67f69fe3 -> :sswitch_5
        0x6953cff1 -> :sswitch_1
        0x6ee75fc9 -> :sswitch_4
        0x757a12d5 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public canRecycled()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    invoke-virtual {v0}, Lc8/xYf;->canRecycled()Z

    move-result v0

    goto :goto_0
.end method

.method public childCount()I
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public clearEvents()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->clear()V

    .line 185
    :cond_0
    return-void
.end method

.method public clone()Lc8/HYf;
    .locals 3

    .prologue
    .line 623
    iget-object v2, p0, Lc8/HYf;->sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 624
    const/4 p0, 0x0

    .line 639
    .end local p0    # "this":Lc8/HYf;
    :cond_0
    :goto_0
    return-object p0

    .line 626
    .restart local p0    # "this":Lc8/HYf;
    :cond_1
    iget-boolean v2, p0, Lc8/HYf;->cloneThis:Z

    if-nez v2, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "dom":Lc8/HYf;
    :try_start_0
    iget-object v2, p0, Lc8/HYf;->mType:Ljava/lang/String;

    invoke-static {v2}, Lc8/IYf;->newInstance(Ljava/lang/String;)Lc8/HYf;

    move-result-object v0

    .line 632
    invoke-virtual {p0, v0}, Lc8/HYf;->copyFields(Lc8/HYf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object p0, v0

    .line 639
    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    const-string/jumbo v2, "WXDomObject clone error: "

    invoke-static {v2, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lc8/HYf;->clone()Lc8/HYf;

    move-result-object v0

    return-object v0
.end method

.method public containsEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final copyFields(Lc8/HYf;)V
    .locals 3
    .param p1, "dest"    # Lc8/HYf;

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p1, Lc8/HYf;->cssstyle:Lc8/DZf;

    iget-object v2, p0, Lc8/HYf;->cssstyle:Lc8/DZf;

    invoke-virtual {v0, v2}, Lc8/DZf;->copy(Lc8/DZf;)V

    .line 207
    iget-object v0, p0, Lc8/HYf;->mRef:Ljava/lang/String;

    iput-object v0, p1, Lc8/HYf;->mRef:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lc8/HYf;->mType:Ljava/lang/String;

    iput-object v0, p1, Lc8/HYf;->mType:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p1, Lc8/HYf;->mStyles:Lc8/PYf;

    .line 210
    iget-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p1, Lc8/HYf;->mAttributes:Lc8/xYf;

    .line 211
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-nez v0, :cond_2

    :goto_2
    iput-object v1, p1, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    .line 212
    iget-object v0, p1, Lc8/HYf;->csslayout:Lc8/zZf;

    iget-object v1, p0, Lc8/HYf;->csslayout:Lc8/zZf;

    invoke-virtual {v0, v1}, Lc8/zZf;->copy(Lc8/zZf;)V

    .line 213
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    invoke-virtual {v0}, Lc8/PYf;->clone()Lc8/PYf;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    invoke-virtual {v0}, Lc8/xYf;->clone()Lc8/xYf;

    move-result-object v0

    goto :goto_1

    .line 211
    :cond_2
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->clone()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    goto :goto_2
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 643
    iget-object v2, p0, Lc8/HYf;->sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 644
    iget-object v2, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    invoke-virtual {v2}, Lc8/PYf;->clear()V

    .line 647
    :cond_0
    iget-object v2, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    if-eqz v2, :cond_1

    .line 648
    iget-object v2, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    invoke-virtual {v2}, Lc8/xYf;->clear()V

    .line 650
    :cond_1
    iget-object v2, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-eqz v2, :cond_2

    .line 651
    iget-object v2, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXEvent;->clear()V

    .line 653
    :cond_2
    iget-object v2, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 654
    iget-object v2, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 655
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 656
    iget-object v2, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/HYf;

    invoke-virtual {v2}, Lc8/HYf;->destroy()V

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_3
    iget-object v2, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 660
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/HYf;->mDomContext:Lc8/pYf;

    .line 661
    return-void
.end method

.method public dumpDomTree()Ljava/lang/String;
    .locals 2

    .prologue
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/HYf;->mRef:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/HYf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttrs()Lc8/xYf;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lc8/xYf;

    invoke-direct {v0}, Lc8/xYf;-><init>()V

    iput-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    .line 162
    :cond_0
    iget-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    return-object v0
.end method

.method public getChild(I)Lc8/HYf;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/HYf;->sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HYf;

    goto :goto_0
.end method

.method protected getDefaultStyle()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomContext()Lc8/pYf;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lc8/HYf;->mDomContext:Lc8/pYf;

    return-object v0
.end method

.method public getEvents()Lcom/taobao/weex/dom/WXEvent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    .line 170
    :cond_0
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFixedStyleRefs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lc8/HYf;->fixedStyleRefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lc8/HYf;->mRef:Ljava/lang/String;

    return-object v0
.end method

.method public getStyles()Lc8/PYf;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lc8/PYf;

    invoke-direct {v0}, Lc8/PYf;-><init>()V

    iput-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    .line 155
    :cond_0
    iget-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    return-object v0
.end method

.method public getTransition()Lc8/QZf;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lc8/HYf;->transition:Lc8/QZf;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lc8/HYf;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getViewPortWidth()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lc8/HYf;->mViewPortWidth:I

    return v0
.end method

.method public final hasUpdate()Z
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lc8/HYf;->hasNewLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/HYf;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/HYf;->setVisible(Z)V

    .line 607
    return-void
.end method

.method public index(Lc8/HYf;)I
    .locals 1
    .param p1, "child"    # Lc8/HYf;

    .prologue
    .line 354
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/HYf;->sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    const/4 v0, -0x1

    .line 357
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public isCloneThis()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lc8/HYf;->cloneThis:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    invoke-virtual {v0}, Lc8/PYf;->isFixed()Z

    move-result v0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 614
    invoke-super {p0}, Lc8/CZf;->isShow()Z

    move-result v0

    return v0
.end method

.method isYoung()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lc8/HYf;->mYoung:Z

    return v0
.end method

.method public layoutAfter()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public layoutBefore()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public final markUpdateSeen()V
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lc8/HYf;->hasNewLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lc8/HYf;->markLayoutSeen()V

    .line 313
    :cond_0
    return-void
.end method

.method old()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/HYf;->mYoung:Z

    .line 295
    return-void
.end method

.method public parseFromJson(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12
    .param p1, "map"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string/jumbo v11, "type"

    invoke-virtual {p1, v11}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 225
    .local v9, "type":Ljava/lang/String;
    iput-object v9, p0, Lc8/HYf;->mType:Ljava/lang/String;

    .line 226
    const-string/jumbo v11, "ref"

    invoke-virtual {p1, v11}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lc8/HYf;->mRef:Ljava/lang/String;

    .line 227
    const-string/jumbo v11, "style"

    invoke-virtual {p1, v11}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 228
    .local v7, "style":Ljava/lang/Object;
    if-eqz v7, :cond_2

    instance-of v11, v7, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v11, :cond_2

    .line 229
    new-instance v8, Lc8/PYf;

    invoke-direct {v8}, Lc8/PYf;-><init>()V

    .line 230
    .local v8, "styles":Lc8/PYf;
    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    .end local v7    # "style":Ljava/lang/Object;
    const/4 v11, 0x0

    invoke-virtual {v8, v7, v11}, Lc8/PYf;->putAll(Ljava/util/Map;Z)V

    .line 231
    iput-object v8, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    .line 232
    invoke-static {v8, p0}, Lc8/QZf;->fromMap(Ljava/util/Map;Lc8/HYf;)Lc8/QZf;

    move-result-object v11

    iput-object v11, p0, Lc8/HYf;->transition:Lc8/QZf;

    .line 234
    .end local v8    # "styles":Lc8/PYf;
    :cond_2
    const-string/jumbo v11, "attr"

    invoke-virtual {p1, v11}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "attr":Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v11, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v11, :cond_3

    .line 236
    new-instance v1, Lc8/xYf;

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "attr":Ljava/lang/Object;
    invoke-direct {v1, v0}, Lc8/xYf;-><init>(Ljava/util/Map;)V

    .line 238
    .local v1, "attrs":Lc8/xYf;
    iput-object v1, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    .line 240
    .end local v1    # "attrs":Lc8/xYf;
    :cond_3
    const-string/jumbo v11, "event"

    invoke-virtual {p1, v11}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, "event":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v11, v3, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v11, :cond_0

    .line 242
    new-instance v5, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v5}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    .local v5, "events":Lcom/taobao/weex/dom/WXEvent;
    move-object v4, v3

    .line 243
    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    .line 244
    .local v4, "eventArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 245
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    .line 246
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 247
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {v5, v10}, Lcom/taobao/weex/dom/WXEvent;->addEvent(Ljava/lang/Object;)V

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 249
    .end local v10    # "value":Ljava/lang/Object;
    :cond_4
    iput-object v5, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    goto :goto_0
.end method

.method public remove(Lc8/HYf;)V
    .locals 2
    .param p1, "child"    # Lc8/HYf;

    .prologue
    .line 329
    if-eqz p1, :cond_0

    iget-object v1, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/HYf;->sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v1, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 334
    .local v0, "index":I
    invoke-virtual {p0, p1}, Lc8/HYf;->removeFromDom(Lc8/HYf;)V

    .line 335
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 336
    invoke-super {p0, v0}, Lc8/CZf;->removeChildAt(I)Lc8/CZf;

    goto :goto_0
.end method

.method public removeEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lc8/HYf;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public removeFromDom(Lc8/HYf;)V
    .locals 3
    .param p1, "child"    # Lc8/HYf;

    .prologue
    .line 341
    if-eqz p1, :cond_0

    iget-object v1, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/HYf;->sDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 346
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 347
    const-string/jumbo v1, "[WXDomObject] remove function error"

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v1, p0, Lc8/HYf;->mDomChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/HYf;

    const/4 v2, 0x0

    iput-object v2, v1, Lc8/HYf;->parent:Lc8/HYf;

    goto :goto_0
.end method

.method public setCloneThis(Z)V
    .locals 0
    .param p1, "cloneThis"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lc8/HYf;->cloneThis:Z

    .line 760
    return-void
.end method

.method public setViewPortWidth(I)V
    .locals 0
    .param p1, "mViewPortWidth"    # I

    .prologue
    .line 139
    iput p1, p0, Lc8/HYf;->mViewPortWidth:I

    .line 140
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/HYf;->setVisible(Z)V

    .line 611
    return-void
.end method

.method public varargs traverseTree([Lc8/GYf;)V
    .locals 14
    .param p1, "consumers"    # [Lc8/GYf;

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 116
    .local v8, "startNanos":J
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 120
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lc8/GYf;
    array-length v6, p1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 121
    .local v2, "consumer":Lc8/GYf;
    invoke-interface {v2, p0}, Lc8/GYf;->accept(Lc8/HYf;)V

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    .end local v2    # "consumer":Lc8/GYf;
    :cond_1
    invoke-virtual {p0}, Lc8/HYf;->childCount()I

    move-result v3

    .line 126
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 127
    invoke-virtual {p0, v4}, Lc8/HYf;->getChild(I)Lc8/HYf;

    move-result-object v1

    .line 128
    .local v1, "child":Lc8/HYf;
    invoke-virtual {v1, p1}, Lc8/HYf;->traverseTree([Lc8/GYf;)V

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 130
    .end local v1    # "child":Lc8/HYf;
    :cond_2
    iget-wide v10, p0, Lc8/HYf;->mDomThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v10, v12

    iput-wide v10, p0, Lc8/HYf;->mDomThreadNanos:J

    goto :goto_0
.end method

.method public updateAttr(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    if-nez v0, :cond_2

    .line 448
    new-instance v0, Lc8/xYf;

    invoke-direct {v0}, Lc8/xYf;-><init>()V

    iput-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    .line 450
    :cond_2
    iget-object v0, p0, Lc8/HYf;->mAttributes:Lc8/xYf;

    invoke-virtual {v0, p1}, Lc8/xYf;->putAll(Ljava/util/Map;)V

    .line 451
    invoke-virtual {p0}, Lc8/HYf;->hasNewLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {p0}, Lc8/HYf;->markUpdateSeen()V

    .line 454
    :cond_3
    invoke-super {p0}, Lc8/CZf;->dirty()V

    goto :goto_0
.end method

.method public updateStyle(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/HYf;->updateStyle(Ljava/util/Map;Z)V

    .line 459
    return-void
.end method

.method public updateStyle(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lc8/HYf;->transition:Lc8/QZf;

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lc8/HYf;->transition:Lc8/QZf;

    invoke-virtual {v0, p1}, Lc8/QZf;->hasTransitionProperty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lc8/HYf;->transition:Lc8/QZf;

    invoke-virtual {v0, p1}, Lc8/QZf;->startTransition(Ljava/util/Map;)V

    .line 470
    :cond_2
    iget-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    if-nez v0, :cond_3

    .line 471
    new-instance v0, Lc8/PYf;

    invoke-direct {v0}, Lc8/PYf;-><init>()V

    iput-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    .line 473
    :cond_3
    iget-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    invoke-virtual {v0, p1, p2}, Lc8/PYf;->putAll(Ljava/util/Map;Z)V

    .line 474
    iget-object v0, p0, Lc8/HYf;->transition:Lc8/QZf;

    if-nez v0, :cond_4

    .line 475
    iget-object v0, p0, Lc8/HYf;->mStyles:Lc8/PYf;

    invoke-static {v0, p0}, Lc8/QZf;->fromMap(Ljava/util/Map;Lc8/HYf;)Lc8/QZf;

    move-result-object v0

    iput-object v0, p0, Lc8/HYf;->transition:Lc8/QZf;

    .line 477
    :cond_4
    invoke-super {p0}, Lc8/CZf;->dirty()V

    goto :goto_0
.end method

.method young()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/HYf;->mYoung:Z

    .line 288
    return-void
.end method
