.class public Lc8/YHg;
.super Ljava/lang/Object;
.source "UtSdkTools.java"


# static fields
.field public static final SPMCNT:Ljava/lang/String; = "spm-cnt"

.field public static final SPMURL:Ljava/lang/String; = "spm-url"

.field public static final UTPARAM_CNT:Ljava/lang/String; = "utparam-cnt"

.field public static final UTPARAM_URL:Ljava/lang/String; = "utparam-url"

.field private static mLastControlArgsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPageForVV:Ljava/lang/String;

.field private static mPreLastControlArgsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUtparamCnt:Ljava/lang/String;

.field private static vvlink:Ljava/lang/String;

.field public static whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    .line 20
    const-string/jumbo v0, ""

    sput-object v0, Lc8/YHg;->mPageForVV:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    sput-object v0, Lc8/YHg;->mUtparamCnt:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    sput-object v0, Lc8/YHg;->vvlink:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/youku/analytics/utils/UtSdkTools$1;

    invoke-direct {v0}, Lcom/youku/analytics/utils/UtSdkTools$1;-><init>()V

    sput-object v0, Lc8/YHg;->whiteList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLastControlArgsMap()V
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 392
    return-void
.end method

.method public static getCntSpmFromSpmUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    sget-object v2, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v3, "spm-url"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "spmUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const-string/jumbo v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "spmArray":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .end local v0    # "spmArray":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getHashMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 404
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 405
    .local v1, "extendBuilder":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 406
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 408
    .local v0, "entry":Ljava/util/Map$Entry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 410
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 411
    .local v3, "length":I
    if-lez v3, :cond_1

    .line 412
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 415
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    .end local v1    # "extendBuilder":Ljava/lang/StringBuffer;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "length":I
    :goto_1
    return-object v4

    :cond_2
    const-string/jumbo v4, ""

    goto :goto_1
.end method

.method public static getLastControlArgsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getPageForVV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lc8/YHg;->mPageForVV:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreLastControlArgsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    sget-object v0, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getRefercodeForSpm(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "refercode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 213
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "refercodeArray":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    aget-object v1, v0, v3

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUtparamCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lc8/YHg;->mUtparamCnt:Ljava/lang/String;

    return-object v0
.end method

.method public static getVvlink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lc8/YHg;->vvlink:Ljava/lang/String;

    return-object v0
.end method

.method public static isRefercodeRight(Ljava/lang/String;)Z
    .locals 3
    .param p0, "refercode"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "refercodeArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 199
    :cond_0
    const-string/jumbo v1, "refercode\u5408\u6cd5"

    invoke-static {v1}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x1

    .line 203
    :goto_0
    return v1

    .line 202
    :cond_1
    const-string/jumbo v1, "refercode\u4e0d\u5408\u6cd5,\u4e0d\u4e0a\u62a5ut\u57cb\u70b9"

    invoke-static {v1}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static printUtControlData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;)V
    .locals 4
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "controlName"    # Ljava/lang/String;
    .param p3, "builder"    # Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
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
            "Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "Youku_Analytics_UT"

    const-string/jumbo v1, "\u5f00\u59cb\u6253\u5370ut\u63a7\u4ef6\u57cb\u70b9\u53c2\u6570"

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "args:[spm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "spm"

    .line 427
    invoke-virtual {p3, v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",object_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "object_type"

    .line 428
    invoke-virtual {p3, v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",object_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "object_id"

    .line 429
    invoke-virtual {p3, v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",object_num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "object_num"

    .line 430
    invoke-virtual {p3, v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",object_title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "object_title"

    .line 431
    invoke-virtual {p3, v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",group_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "group_id"

    .line 432
    invoke-virtual {p3, v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",group_num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "group_num"

    .line 433
    invoke-virtual {p3, v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    const-string/jumbo v3, "guid"

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTTracker;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",rguid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    const-string/jumbo v3, "rguid"

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTTracker;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",bext:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    invoke-static {p2}, Lc8/YHg;->getHashMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string/jumbo v0, "Youku_Analytics_UT"

    const-string/jumbo v1, "\u7ed3\u675f\u6253\u5370ut\u63a7\u4ef6\u57cb\u70b9\u53c2\u6570"

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method public static printUtCustomData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "aPage"    # Ljava/lang/String;
    .param p1, "aEventId"    # I
    .param p2, "aArg1"    # Ljava/lang/String;
    .param p3, "aArg2"    # Ljava/lang/String;
    .param p4, "aArg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p5, "aHitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "Youku_Analytics_UT"

    const-string/jumbo v1, "\u5f00\u59cb\u6253\u5370ut\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u57cb\u70b9\u53c2\u6570"

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aEventId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aArg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aArg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aArg3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aHitMap:[guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 470
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    const-string/jumbo v3, "guid"

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTTracker;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",rguid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    const-string/jumbo v3, "rguid"

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTTracker;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",bext:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 472
    invoke-static {p5}, Lc8/YHg;->getHashMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string/jumbo v0, "Youku_Analytics_UT"

    const-string/jumbo v1, "\u7ed3\u675f\u6253\u5370ut\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u57cb\u70b9\u53c2\u6570"

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method public static printUtPageData(Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "lastControlArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "Youku_Analytics_UT"

    const-string/jumbo v1, "\u5f00\u59cb\u6253\u5370ut\u9875\u9762\u57cb\u70b9\u53c2\u6570"

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string/jumbo v1, "Youku_Analytics_UT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "args:[spm-cnt:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "spm-cnt"

    .line 446
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",spm-url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "spm-url"

    .line 447
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",r_object_type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "r_object_type"

    .line 448
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",r_object_id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "r_object_id"

    .line 449
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",r_object_num:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "r_object_num"

    .line 450
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",r_group_id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "r_group_id"

    .line 451
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",r_group_num:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "r_group_num"

    .line 452
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",pid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "pid"

    .line 453
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",guid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 454
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    const-string/jumbo v3, "guid"

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTTracker;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",rguid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    const-string/jumbo v3, "rguid"

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTTracker;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",bext:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    invoke-static {p2}, Lc8/YHg;->getHashMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v1, v0}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string/jumbo v0, "Youku_Analytics_UT"

    const-string/jumbo v1, "\u7ed3\u675f\u6253\u5370ut\u9875\u9762\u57cb\u70b9\u53c2\u6570"

    invoke-static {v0, v1}, Lc8/SHg;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method public static setLastControlArgsMap(Ljava/lang/String;)V
    .locals 14
    .param p0, "refercode"    # Ljava/lang/String;

    .prologue
    .line 222
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "spm-url"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "spm-url"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "vvlink"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "vvlink"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "track_info"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "track_info"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "scg_id"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "scg_id"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "scm"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "scm"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string/jumbo v6, ""

    .line 229
    .local v6, "r_object_type":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 230
    .local v4, "r_object_id":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 231
    .local v5, "r_object_num":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 232
    .local v2, "r_group_id":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 234
    .local v3, "r_group_num":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 235
    const-string/jumbo v10, "\\."

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, "refercodeArray":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u5f53\u524d\u7684refercode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u5f53\u524d\u7684refercode\u6bb5\u6570="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 238
    array-length v10, v7

    const/4 v11, 0x4

    if-ne v10, v11, :cond_b

    .line 239
    const-string/jumbo v10, "refercode\u4e3a\u56db\u6bb5"

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 240
    const/4 v10, 0x3

    aget-object v10, v7, v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "objectArray":[Ljava/lang/String;
    array-length v10, v1

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    .line 242
    const/4 v10, 0x0

    aget-object v6, v1, v10

    .line 243
    const/4 v10, 0x1

    aget-object v4, v1, v10

    .line 244
    const/4 v10, 0x2

    aget-object v5, v1, v10

    .line 251
    :cond_0
    :goto_0
    const/4 v10, 0x2

    aget-object v10, v7, v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "groupArray":[Ljava/lang/String;
    array-length v10, v0

    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    .line 253
    const/4 v10, 0x1

    aget-object v2, v0, v10

    .line 254
    const/4 v10, 0x2

    aget-object v3, v0, v10

    .line 271
    .end local v0    # "groupArray":[Ljava/lang/String;
    .end local v1    # "objectArray":[Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u622a\u53d6\u524d\u7684refercode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 272
    invoke-static {p0}, Lc8/YHg;->getRefercodeForSpm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, "splitRefercode":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u622a\u53d6\u540e\u7684refercode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 274
    sget-object v10, Lc8/XHg;->spmMap:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 275
    .local v9, "spm_url":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u5bf9\u5e94\u7684spm-url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 277
    invoke-static {}, Lc8/YHg;->clearLastControlArgsMap()V

    .line 279
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 280
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "spm-url"

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v7    # "refercodeArray":[Ljava/lang/String;
    .end local v8    # "splitRefercode":Ljava/lang/String;
    .end local v9    # "spm_url":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 285
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_object_type"

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 288
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_object_id"

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 291
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_object_num"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 294
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_group_id"

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 297
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_group_num"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_7
    invoke-static {}, Lc8/YHg;->getVvlink()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 301
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "vvlink"

    invoke-static {}, Lc8/YHg;->getVvlink()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v10, ""

    invoke-static {v10}, Lc8/YHg;->setVvlink(Ljava/lang/String;)V

    .line 306
    :cond_8
    :goto_2
    return-void

    .line 245
    .restart local v1    # "objectArray":[Ljava/lang/String;
    .restart local v7    # "refercodeArray":[Ljava/lang/String;
    :cond_9
    array-length v10, v1

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 246
    const/4 v10, 0x0

    aget-object v6, v1, v10

    .line 247
    const/4 v10, 0x1

    aget-object v4, v1, v10

    .line 248
    const-string/jumbo v10, "r_object_num\u65e0\u5e8f\u53f7,\u4e0d\u53d1"

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 255
    .restart local v0    # "groupArray":[Ljava/lang/String;
    :cond_a
    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 256
    const/4 v10, 0x1

    aget-object v2, v0, v10

    .line 257
    const-string/jumbo v10, "r_group_num\u65e0\u5e8f\u53f7,\u4e0d\u53d1"

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 260
    .end local v0    # "groupArray":[Ljava/lang/String;
    .end local v1    # "objectArray":[Ljava/lang/String;
    :cond_b
    array-length v10, v7

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 261
    const-string/jumbo v10, "refercode\u4e3a\u4e09\u6bb5"

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 262
    const/4 v10, 0x2

    aget-object v10, v7, v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 263
    .restart local v0    # "groupArray":[Ljava/lang/String;
    array-length v10, v0

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    .line 264
    const/4 v10, 0x1

    aget-object v2, v0, v10

    .line 265
    const/4 v10, 0x2

    aget-object v3, v0, v10

    goto/16 :goto_1

    .line 266
    :cond_c
    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 267
    const/4 v10, 0x1

    aget-object v2, v0, v10

    .line 268
    const-string/jumbo v10, "r_group_num\u65e0\u5e8f\u53f7,\u4e0d\u53d1"

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    .end local v0    # "groupArray":[Ljava/lang/String;
    .end local v7    # "refercodeArray":[Ljava/lang/String;
    :cond_d
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "vvlink"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 304
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "vvlink"

    sget-object v12, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v13, "vvlink"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static setLastControlArgsMap(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "spmMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "spm-url"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "spm-url"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "vvlink"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "vvlink"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "track_info"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "track_info"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "scg_id"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "scg_id"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "scm"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "scm"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "utparam-url"

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v12

    const-string/jumbo v13, "utparam-url"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v7, ""

    .line 318
    .local v7, "spm_url":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 319
    .local v4, "r_object_type":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 320
    .local v2, "r_object_id":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 321
    .local v3, "r_object_num":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 322
    .local v0, "r_group_id":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 323
    .local v1, "r_group_num":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 324
    .local v8, "track_info":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 325
    .local v5, "scg_id":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 326
    .local v6, "scm":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 327
    .local v9, "utparam_url":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 328
    const-string/jumbo v10, "spm"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "spm_url":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 329
    .restart local v7    # "spm_url":Ljava/lang/String;
    const-string/jumbo v10, "object_type"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r_object_type":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 330
    .restart local v4    # "r_object_type":Ljava/lang/String;
    const-string/jumbo v10, "object_id"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "r_object_id":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 331
    .restart local v2    # "r_object_id":Ljava/lang/String;
    const-string/jumbo v10, "object_num"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "r_object_num":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 332
    .restart local v3    # "r_object_num":Ljava/lang/String;
    const-string/jumbo v10, "group_id"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "r_group_id":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 333
    .restart local v0    # "r_group_id":Ljava/lang/String;
    const-string/jumbo v10, "group_num"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r_group_num":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 334
    .restart local v1    # "r_group_num":Ljava/lang/String;
    const-string/jumbo v10, "track_info"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "track_info":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 335
    .restart local v8    # "track_info":Ljava/lang/String;
    const-string/jumbo v10, "scg_id"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "scg_id":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 336
    .restart local v5    # "scg_id":Ljava/lang/String;
    const-string/jumbo v10, "scm"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "scm":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 337
    .restart local v6    # "scm":Ljava/lang/String;
    const-string/jumbo v10, "utparam"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "utparam_url":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 340
    .restart local v9    # "utparam_url":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/YHg;->clearLastControlArgsMap()V

    .line 342
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 343
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "spm-url"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 347
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_object_type"

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 350
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_object_id"

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 353
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_object_num"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 356
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_group_id"

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 359
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "r_group_num"

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 362
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "track_info"

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 365
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "scg_id"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 368
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "scm"

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 371
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "utparam-url"

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_a
    invoke-static {}, Lc8/YHg;->getVvlink()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 375
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "vvlink"

    invoke-static {}, Lc8/YHg;->getVvlink()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v10, ""

    invoke-static {v10}, Lc8/YHg;->setVvlink(Ljava/lang/String;)V

    .line 380
    :cond_b
    :goto_0
    return-void

    .line 377
    :cond_c
    sget-object v10, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "vvlink"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 378
    sget-object v10, Lc8/YHg;->mLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "vvlink"

    sget-object v12, Lc8/YHg;->mPreLastControlArgsMap:Ljava/util/HashMap;

    const-string/jumbo v13, "vvlink"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setPageForVV(Ljava/lang/String;)V
    .locals 0
    .param p0, "pageForVV"    # Ljava/lang/String;

    .prologue
    .line 60
    sput-object p0, Lc8/YHg;->mPageForVV:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static setUtparamCnt(Ljava/lang/String;)V
    .locals 0
    .param p0, "mUtparamCnt"    # Ljava/lang/String;

    .prologue
    .line 68
    sput-object p0, Lc8/YHg;->mUtparamCnt:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static setVvlink(Ljava/lang/String;)V
    .locals 0
    .param p0, "vvlink"    # Ljava/lang/String;

    .prologue
    .line 33
    sput-object p0, Lc8/YHg;->vvlink:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static transferFromMap2Builder(Ljava/util/HashMap;Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "spmMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    goto :goto_0

    .line 188
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static transferYoukuPageClickRefercodeAndExtend2UtArgs(Ljava/lang/String;Ljava/util/HashMap;Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;)V
    .locals 13
    .param p0, "refercode"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "transferYoukuPageClickRefercodeAndExtend2UtArgs"

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 97
    const-string/jumbo v7, ""

    .line 98
    .local v7, "object_type":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 99
    .local v4, "object_id":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 100
    .local v5, "object_num":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 101
    .local v6, "object_title":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 102
    .local v1, "group_id":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 104
    .local v2, "group_num":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 105
    const-string/jumbo v11, "\\."

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "refercodeArray":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u5f53\u524d\u7684refercode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u5f53\u524d\u7684refercode\u6bb5\u6570="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 108
    array-length v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_c

    .line 109
    const-string/jumbo v11, "refercode\u4e3a\u56db\u6bb5"

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 110
    const/4 v11, 0x3

    aget-object v11, v8, v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "objectArray":[Ljava/lang/String;
    array-length v11, v3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_a

    .line 112
    const/4 v11, 0x0

    aget-object v7, v3, v11

    .line 113
    const/4 v11, 0x1

    aget-object v4, v3, v11

    .line 114
    const/4 v11, 0x2

    aget-object v5, v3, v11

    .line 121
    :cond_0
    :goto_0
    const/4 v11, 0x2

    aget-object v11, v8, v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "groupArray":[Ljava/lang/String;
    array-length v11, v0

    const/4 v12, 0x3

    if-ne v11, v12, :cond_b

    .line 123
    const/4 v11, 0x1

    aget-object v1, v0, v11

    .line 124
    const/4 v11, 0x2

    aget-object v2, v0, v11

    .line 142
    .end local v0    # "groupArray":[Ljava/lang/String;
    .end local v3    # "objectArray":[Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u622a\u53d6\u524d\u7684refercode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 143
    invoke-static {p0}, Lc8/YHg;->getRefercodeForSpm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, "splitRefercode":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u622a\u53d6\u540e\u7684refercode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 145
    sget-object v11, Lc8/XHg;->spmMap:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 146
    .local v10, "spm":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u5bf9\u5e94\u7684spm:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 148
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 149
    const-string/jumbo v11, "spm"

    invoke-virtual {p2, v11, v10}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 153
    .end local v8    # "refercodeArray":[Ljava/lang/String;
    .end local v9    # "splitRefercode":Ljava/lang/String;
    .end local v10    # "spm":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 154
    const-string/jumbo v11, "title"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "object_title":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 157
    .restart local v6    # "object_title":Ljava/lang/String;
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 158
    const-string/jumbo v11, "object_type"

    invoke-virtual {p2, v11, v7}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 160
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 161
    const-string/jumbo v11, "object_id"

    invoke-virtual {p2, v11, v4}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 163
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 164
    const-string/jumbo v11, "object_num"

    invoke-virtual {p2, v11, v5}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 166
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 167
    const-string/jumbo v11, "object_title"

    invoke-virtual {p2, v11, v6}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 169
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 170
    const-string/jumbo v11, "group_id"

    invoke-virtual {p2, v11, v1}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 172
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 173
    const-string/jumbo v11, "group_num"

    invoke-virtual {p2, v11, v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 177
    :cond_9
    invoke-static {p1, p2}, Lc8/YHg;->transferFromMap2Builder(Ljava/util/HashMap;Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;)V

    .line 178
    return-void

    .line 115
    .restart local v3    # "objectArray":[Ljava/lang/String;
    .restart local v8    # "refercodeArray":[Ljava/lang/String;
    :cond_a
    array-length v11, v3

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 116
    const/4 v11, 0x0

    aget-object v7, v3, v11

    .line 117
    const/4 v11, 0x1

    aget-object v4, v3, v11

    .line 118
    const-string/jumbo v11, "object_num\u65e0\u5e8f\u53f7,\u4e0d\u53d1"

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    .restart local v0    # "groupArray":[Ljava/lang/String;
    :cond_b
    array-length v11, v0

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 126
    const/4 v11, 0x1

    aget-object v1, v0, v11

    .line 127
    const-string/jumbo v11, "group_num\u65e0\u5e8f\u53f7,\u4e0d\u53d1"

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 130
    .end local v0    # "groupArray":[Ljava/lang/String;
    .end local v3    # "objectArray":[Ljava/lang/String;
    :cond_c
    array-length v11, v8

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    .line 131
    const-string/jumbo v11, "refercode\u4e3a\u4e09\u6bb5"

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 132
    const/4 v11, 0x2

    aget-object v11, v8, v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "groupArray":[Ljava/lang/String;
    array-length v11, v0

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d

    .line 134
    const/4 v11, 0x1

    aget-object v1, v0, v11

    .line 135
    const/4 v11, 0x2

    aget-object v2, v0, v11

    goto/16 :goto_1

    .line 136
    :cond_d
    array-length v11, v0

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 137
    const/4 v11, 0x1

    aget-object v1, v0, v11

    .line 138
    const-string/jumbo v11, "group_num\u65e0\u5e8f\u53f7,\u4e0d\u53d1"

    invoke-static {v11}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto/16 :goto_1
.end method
