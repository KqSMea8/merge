.class public final Lc8/CYb;
.super Ljava/lang/Object;
.source "Operator.java"


# instance fields
.field private final mTmpLocation:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/CYb;->mTmpLocation:[I

    return-void
.end method

.method private executeViewsFilter(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "cachedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p2, "selectedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "dirtyViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p4, "edenViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "retains":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-interface {v0, p2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 115
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-interface {p3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 120
    :cond_0
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    invoke-interface {p4, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 125
    :cond_1
    return-void
.end method


# virtual methods
.method operInfo(Ljava/lang/String;[Landroid/view/View;Lc8/NYb;)V
    .locals 10
    .param p1, "operationEventType"    # Ljava/lang/String;
    .param p2, "selectedViews"    # [Landroid/view/View;
    .param p3, "task"    # Lc8/NYb;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 21
    aget-object v3, p2, v8

    .line 22
    .local v3, "view":Landroid/view/View;
    iget-object v7, p0, Lc8/CYb;->mTmpLocation:[I

    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 23
    const/4 v2, 0x0

    .line 25
    .local v2, "statusHeight":I
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/poplayer/utils/Utils;->getStatusBarHeight(Landroid/content/res/Resources;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 29
    :goto_0
    iget-object v7, p0, Lc8/CYb;->mTmpLocation:[I

    aget v5, v7, v8

    .local v5, "x":I
    iget-object v7, p0, Lc8/CYb;->mTmpLocation:[I

    aget v7, v7, v9

    sub-int v6, v7, v2

    .local v6, "y":I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .local v4, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 31
    .local v1, "height":I
    const/4 v7, 0x1

    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "y"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "width"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "height"

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "statusHeight"

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {p3, p1, v7, v8}, Lc8/NYb;->sendTaskExecutionEventToMasterView(Ljava/lang/String;ZLjava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    :goto_1
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "height":I
    .end local v4    # "width":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method operStatusUpdate(Ljava/lang/String;[Landroid/view/View;Lc8/NYb;)V
    .locals 12
    .param p1, "operationEventType"    # Ljava/lang/String;
    .param p2, "targetViews"    # [Landroid/view/View;
    .param p3, "task"    # Lc8/NYb;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 39
    iget-boolean v8, p3, Lc8/NYb;->selectFromCache:Z

    if-eqz v8, :cond_1

    if-eqz p2, :cond_1

    if-eqz p2, :cond_1

    array-length v8, p2

    if-eqz v8, :cond_1

    array-length v8, p2

    invoke-virtual {p3}, Lc8/NYb;->getCacheSelectedViews()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v8, v11, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v6, "selectedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :goto_1
    invoke-virtual {p3}, Lc8/NYb;->getCacheSelectedViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    .local v0, "cacheViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "dirtyViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v3, "edenViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0, v0, v6, v1, v3}, Lc8/CYb;->executeViewsFilter(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 56
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_5

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 58
    .local v7, "v":Landroid/view/View;
    iget-object v11, p3, Lc8/NYb;->invokeListener:Lc8/MYb;

    iget-boolean v8, p3, Lc8/NYb;->selectFromCache:Z

    if-nez v8, :cond_3

    move v8, v9

    :goto_3
    invoke-interface {v11, v7, p3, v8}, Lc8/MYb;->OnTargetViewRemoved(Landroid/view/View;Lc8/NYb;Z)V

    goto :goto_2

    .line 46
    .end local v0    # "cacheViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v1    # "dirtyViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v3    # "edenViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "selectedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v7    # "v":Landroid/view/View;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .restart local v0    # "cacheViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v1    # "dirtyViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v3    # "edenViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "selectedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v7    # "v":Landroid/view/View;
    :cond_3
    move v8, v10

    .line 58
    goto :goto_3

    .line 61
    .end local v7    # "v":Landroid/view/View;
    :cond_4
    const-string/jumbo v5, ""

    .line 63
    .local v5, "params":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v9, "taskHandle"

    iget-object v10, p3, Lc8/NYb;->taskHandle:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "info"

    const-string/jumbo v10, "Trackee.Lost"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "remainTrackeeSize"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 70
    :goto_4
    const-string/jumbo v8, "PopLayer.SOTask.SilentAutoStart"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lc8/NYb;->sendTaskExecutionEventToMasterView(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "params":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_6

    .line 75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 76
    .restart local v7    # "v":Landroid/view/View;
    iget-object v8, p3, Lc8/NYb;->invokeListener:Lc8/MYb;

    invoke-interface {v8, v7, p3}, Lc8/MYb;->OnTargetViewAdded(Landroid/view/View;Lc8/NYb;)V

    goto :goto_5

    .line 80
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "v":Landroid/view/View;
    :cond_6
    invoke-virtual {p3, v6}, Lc8/NYb;->cacheSelectedViews(Ljava/util/List;)V

    .line 83
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p3, Lc8/NYb;->expectedViewSize:I

    if-ne v8, v9, :cond_7

    .line 85
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p3, p1, v8, v9}, Lc8/NYb;->sendTaskExecutionEventToMasterView(Ljava/lang/String;ZLjava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 89
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_7
    iget-boolean v8, p3, Lc8/NYb;->continuousSelect:Z

    if-nez v8, :cond_0

    .line 92
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {p3, p1, v8, v9}, Lc8/NYb;->sendTaskExecutionEventToMasterView(Ljava/lang/String;ZLjava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 93
    :catch_1
    move-exception v2

    .line 94
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "params":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_4
.end method
