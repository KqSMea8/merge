.class public final Lc8/DYb;
.super Ljava/lang/Object;
.source "Selector.java"


# instance fields
.field private final PATTERN_PROPERTY:Ljava/util/regex/Pattern;

.field private final mCacheBySelector:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClassNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpLocation:[I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/DYb;->mTmpRect:Landroid/graphics/Rect;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/DYb;->mTmpLocation:[I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/DYb;->mCacheBySelector:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/DYb;->mClassNameMap:Ljava/util/Map;

    .line 133
    const-string/jumbo v0, "\\[.*?\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lc8/DYb;->PATTERN_PROPERTY:Ljava/util/regex/Pattern;

    .line 32
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private backUpon(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "backCounts"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "view":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 111
    .restart local p1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object p1
.end method

.method private filterByPath([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "element"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "outputViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 119
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "element":[Ljava/lang/String;
    check-cast p1, [Ljava/lang/String;

    .line 120
    .restart local p1    # "element":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .local v5, "xxx":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 122
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Lc8/DYb;->getHierachy(Landroid/view/View;)[Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "hierachy":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_0

    .line 124
    aget-object v6, p1, v1

    aget-object v7, v0, v1

    invoke-direct {p0, v6, v7}, Lc8/DYb;->isMatch(Ljava/lang/String;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "hierachy":[Landroid/view/View;
    .end local v1    # "i":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method private findClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 57
    iget-object v1, p0, Lc8/DYb;->mClassNameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lc8/DYb;->mClassNameMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    return-object v0
.end method

.method private getHierachy(Landroid/view/View;)[Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "hierachy":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    move-object v2, p1

    .line 242
    .local v2, "tmp":Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 243
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 245
    check-cast v2, Landroid/view/View;

    .line 246
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/view/View;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/View;

    return-object v3
.end method

.method private getViewProperty(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string/jumbo v14, "id"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 163
    .local v4, "id":I
    const/4 v14, -0x1

    if-eq v14, v4, :cond_0

    if-nez v4, :cond_1

    .line 164
    :cond_0
    const/4 v9, 0x0

    .line 233
    .end local v4    # "id":I
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object v9

    .line 165
    .restart local v4    # "id":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 168
    .local v8, "r":Landroid/content/res/Resources;
    const/high16 v14, -0x1000000

    and-int/2addr v14, v4

    sparse-switch v14, :sswitch_data_0

    .line 176
    :try_start_0
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "pkgname":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "typename":Ljava/lang/String;
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "entryname":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v6, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v14, ":"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v14, "/"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 170
    .end local v3    # "entryname":Ljava/lang/String;
    .end local v6    # "out":Ljava/lang/StringBuilder;
    .end local v7    # "pkgname":Ljava/lang/String;
    .end local v13    # "typename":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v7, "app"

    .line 171
    .restart local v7    # "pkgname":Ljava/lang/String;
    goto :goto_1

    .line 173
    .end local v7    # "pkgname":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v7, "android"
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .restart local v7    # "pkgname":Ljava/lang/String;
    goto :goto_1

    .line 189
    .end local v7    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v14, "Selector.getID.error"

    invoke-static {v14, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    const/4 v9, 0x0

    goto :goto_0

    .line 194
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "id":I
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_2
    const-string/jumbo v14, "text"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/widget/TextView;

    if-eqz v14, :cond_4

    .line 195
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    .line 196
    .local v12, "text":Ljava/lang/CharSequence;
    if-nez v12, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 198
    .end local v12    # "text":Ljava/lang/CharSequence;
    .restart local p1    # "view":Landroid/view/View;
    :cond_4
    const-string/jumbo v14, "contentDescription"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 200
    .local v1, "description":Ljava/lang/CharSequence;
    if-nez v1, :cond_5

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 202
    .end local v1    # "description":Ljava/lang/CharSequence;
    :cond_6
    const-string/jumbo v14, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 204
    .local v10, "tag":Ljava/lang/Object;
    if-nez v10, :cond_7

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 209
    .end local v10    # "tag":Ljava/lang/Object;
    :cond_8
    :try_start_1
    const-string/jumbo v14, "Selector.getViewProperty:getPropertyWithMethod:%s."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    invoke-static {v14, v15}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 213
    .local v11, "tempClazz":Ljava/lang/Class;
    :cond_9
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 214
    .local v5, "method":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_a

    .line 215
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 216
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v14}, Lc8/DYb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, "result":Ljava/lang/String;
    const-string/jumbo v14, "Selector.getViewProperty:find - method key:%s,value:%s."

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    const/16 v16, 0x1

    aput-object v9, v15, v16

    invoke-static {v14, v15}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 231
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "result":Ljava/lang/String;
    .end local v11    # "tempClazz":Ljava/lang/Class;
    :catch_1
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v14, "Selector.getViewProperty.error"

    invoke-static {v14, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 221
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v11    # "tempClazz":Ljava/lang/Class;
    :cond_a
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    .line 223
    const-class v14, Ljava/lang/Object;

    if-ne v11, v14, :cond_9

    .line 224
    const-string/jumbo v14, "Selector.getViewProperty:not find "

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_1
        0x7f000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private getViewRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 277
    iget-object v0, p0, Lc8/DYb;->mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 278
    iget-object v0, p0, Lc8/DYb;->mTmpLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 279
    iget-object v0, p0, Lc8/DYb;->mTmpLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 280
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 281
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 282
    return-void
.end method

.method private internalSelectViewContainsPosition(Landroid/view/View;IILjava/util/List;)V
    .locals 4
    .param p1, "node"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p4, "outputViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 265
    check-cast v2, Landroid/view/ViewGroup;

    .line 266
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 267
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 268
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lc8/DYb;->internalSelectViewContainsPosition(Landroid/view/View;IILjava/util/List;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Lc8/DYb;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Lc8/DYb;->getViewRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 271
    iget-object v3, p0, Lc8/DYb;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_1
    return-void
.end method

.method private internalSelectViewsByType(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "node"    # Landroid/view/View;
    .param p2, "eleTypeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p3, "outputViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lc8/DYb;->findClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 254
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    .line 261
    :cond_1
    return-void

    :cond_2
    move-object v2, p1

    .line 257
    check-cast v2, Landroid/view/ViewGroup;

    .line 258
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 259
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 260
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lc8/DYb;->internalSelectViewsByType(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isMatch(Ljava/lang/String;Landroid/view/View;)Z
    .locals 13
    .param p1, "elementWithProp"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 137
    const/16 v11, 0x5b

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 138
    .local v5, "propertyStart":I
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11}, Lc8/DYb;->findClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "className":Ljava/lang/String;
    const/4 v11, -0x1

    if-ne v11, v5, :cond_1

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 157
    :cond_0
    :goto_0
    return v9

    .line 142
    :cond_1
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "elementName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 146
    iget-object v11, p0, Lc8/DYb;->PATTERN_PROPERTY:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 147
    .local v4, "matcher":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 148
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "xxx":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "keyValue":[Ljava/lang/String;
    aget-object v2, v3, v9

    .line 151
    .local v2, "key":Ljava/lang/String;
    aget-object v6, v3, v10

    .line 152
    .local v6, "value":Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lc8/DYb;->getViewProperty(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "viewValue":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyValue":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "viewValue":Ljava/lang/String;
    .end local v8    # "xxx":Ljava/lang/String;
    :cond_3
    move v9, v10

    .line 157
    goto :goto_0
.end method

.method private viewArrayToWeakViewArray([Landroid/view/View;)[Ljava/lang/ref/WeakReference;
    .locals 4
    .param p1, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/View;",
            ")[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/ref/WeakReference;

    .line 298
    .local v1, "weakViews":[Ljava/lang/ref/WeakReference;, "[Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 299
    new-instance v2, Ljava/lang/ref/WeakReference;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-object v1
.end method

.method private weakViewArrayToViewArray([Ljava/lang/ref/WeakReference;)[Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;)[",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "weakViews":[Ljava/lang/ref/WeakReference;, "[Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 285
    if-nez p1, :cond_1

    move-object v1, v3

    .line 293
    :cond_0
    :goto_0
    return-object v1

    .line 287
    :cond_1
    array-length v2, p1

    new-array v1, v2, [Landroid/view/View;

    .line 288
    .local v1, "views":[Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 289
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    aput-object v2, v1, v0

    .line 290
    aget-object v2, v1, v0

    if-nez v2, :cond_2

    move-object v1, v3

    .line 291
    goto :goto_0

    .line 288
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/DYb;->mCacheBySelector:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    iget-object v0, p0, Lc8/DYb;->mClassNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    return-void
.end method

.method public selectViewContainsPosition(II)[Landroid/view/View;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 42
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/poplayer/PopLayer;->internalGetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/poplayer/utils/Utils;->getTopView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 43
    .local v1, "topView":Landroid/view/View;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "outputViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0, v1, p1, p2, v0}, Lc8/DYb;->internalSelectViewContainsPosition(Landroid/view/View;IILjava/util/List;)V

    .line 45
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    return-object v2
.end method

.method public selectViewsBySelector(Ljava/lang/String;Z)[Landroid/view/View;
    .locals 16
    .param p1, "selector"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/DYb;->mCacheBySelector:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lc8/DYb;->weakViewArrayToViewArray([Ljava/lang/ref/WeakReference;)[Landroid/view/View;

    move-result-object v10

    .line 71
    .local v10, "results":[Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_1

    move-object v12, v10

    .line 107
    :goto_1
    return-object v12

    .line 69
    .end local v10    # "results":[Landroid/view/View;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 75
    .restart local v10    # "results":[Landroid/view/View;
    :cond_1
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v8

    .line 76
    .local v8, "popLayer":Lcom/alibaba/poplayer/PopLayer;
    if-nez v8, :cond_2

    .line 77
    const-string/jumbo v12, "Selector.selectViewsBySelector{%s}.popLayer is not setup.error"

    invoke-static {v12}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    .line 78
    const/4 v12, 0x0

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v8}, Lcom/alibaba/poplayer/PopLayer;->internalGetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 81
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_3

    .line 82
    const-string/jumbo v12, "Selector.selectViewsBySelector{%s}.activityIsNull.error"

    invoke-static {v12}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    .line 83
    const/4 v12, 0x0

    goto :goto_1

    .line 86
    :cond_3
    const/16 v12, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 87
    .local v3, "backPos":I
    const/4 v12, -0x1

    if-ne v12, v3, :cond_4

    move-object/from16 v11, p1

    .line 88
    .local v11, "selectorX":Ljava/lang/String;
    :goto_2
    const-string/jumbo v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "elements":[Ljava/lang/String;
    array-length v12, v4

    add-int/lit8 v12, v12, -0x1

    aget-object v6, v4, v12

    .line 90
    .local v6, "lastEle":Ljava/lang/String;
    const/16 v12, 0x5b

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 91
    .local v9, "propertyStart":I
    const/4 v12, -0x1

    if-ne v12, v9, :cond_5

    .line 92
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v7, "outputViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v1}, Lcom/alibaba/poplayer/utils/Utils;->getTopView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v7}, Lc8/DYb;->internalSelectViewsByType(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V

    .line 94
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lc8/DYb;->filterByPath([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Landroid/view/View;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "results":[Landroid/view/View;
    check-cast v10, [Landroid/view/View;

    .line 95
    .restart local v10    # "results":[Landroid/view/View;
    array-length v12, v10

    if-nez v12, :cond_6

    move-object v12, v10

    .line 96
    goto :goto_1

    .line 87
    .end local v4    # "elements":[Ljava/lang/String;
    .end local v6    # "lastEle":Ljava/lang/String;
    .end local v7    # "outputViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v9    # "propertyStart":I
    .end local v11    # "selectorX":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 91
    .restart local v4    # "elements":[Ljava/lang/String;
    .restart local v6    # "lastEle":Ljava/lang/String;
    .restart local v9    # "propertyStart":I
    .restart local v11    # "selectorX":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 98
    .restart local v7    # "outputViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_6
    const/4 v12, -0x1

    if-eq v12, v3, :cond_7

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    .line 100
    .local v2, "backCounts":I
    const-string/jumbo v12, "Selector.selectViewsBySelector.backupon.counts{%s}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v12, v10

    if-ge v5, v12, :cond_7

    .line 102
    aget-object v12, v10, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lc8/DYb;->backUpon(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    aput-object v12, v10, v5

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 104
    .end local v2    # "backCounts":I
    .end local v5    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/DYb;->mCacheBySelector:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lc8/DYb;->viewArrayToWeakViewArray([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v10

    .line 107
    goto/16 :goto_1
.end method
