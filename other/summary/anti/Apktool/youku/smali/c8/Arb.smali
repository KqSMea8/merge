.class public abstract Lc8/Arb;
.super Ljava/lang/Object;
.source "AbstractEventHandler.java"

# interfaces
.implements Lc8/Isb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ExpressionBinding"


# instance fields
.field mAnchorInstanceId:Ljava/lang/String;

.field mCachedExpressionMap:Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache",
            "<",
            "Ljava/lang/String;",
            "Lc8/Hrb;",
            ">;"
        }
    .end annotation
.end field

.field mCallback:Lc8/EWf;

.field mExitExpressionPair:Lc8/ysb;

.field volatile mExpressionHoldersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Lrb;",
            ">;>;"
        }
    .end annotation
.end field

.field mInstanceId:Ljava/lang/String;

.field final mScope:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/nVf;)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Arb;->mScope:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;-><init>(I)V

    iput-object v0, p0, Lc8/Arb;->mCachedExpressionMap:Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;

    .line 47
    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Arb;->mInstanceId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private applyFunctionsToScope()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/Arb;->mScope:Ljava/util/Map;

    invoke-static {v0}, Lc8/otb;->applyToScope(Ljava/util/Map;)V

    .line 71
    iget-object v0, p0, Lc8/Arb;->mScope:Ljava/util/Map;

    invoke-static {v0}, Lc8/eub;->applyToScope(Ljava/util/Map;)V

    .line 72
    return-void
.end method

.method private transformArgs(Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "originalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v5, p0, Lc8/Arb;->mExpressionHoldersMap:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 76
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lc8/Arb;->mExpressionHoldersMap:Ljava/util/Map;

    .line 78
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 79
    .local v7, "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "element"

    invoke-static {v7, v5}, Lc8/fub;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "targetRef":Ljava/lang/String;
    const-string/jumbo v5, "instanceId"

    invoke-static {v7, v5}, Lc8/fub;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "targetInstanceId":Ljava/lang/String;
    const-string/jumbo v5, "property"

    invoke-static {v7, v5}, Lc8/fub;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "property":Ljava/lang/String;
    const-string/jumbo v5, "expression"

    invoke-static {v7, v5}, Lc8/fub;->getExpressionPair(Ljava/util/Map;Ljava/lang/String;)Lc8/ysb;

    move-result-object v3

    .line 85
    .local v3, "expressionPair":Lc8/ysb;
    const-string/jumbo v5, "config"

    invoke-static {v7, v5}, Lc8/fub;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "config":Ljava/lang/String;
    const/4 v6, 0x0

    .line 87
    .local v6, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    :try_start_0
    invoke-static {v8}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 95
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_4

    .line 96
    :cond_3
    const-string/jumbo v5, "ExpressionBinding"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skip illegal binding args["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :catch_0
    move-exception v9

    .line 91
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ExpressionBinding"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parse config failed.\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v0, Lc8/Lrb;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lc8/Lrb;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/ysb;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    .local v0, "holder":Lc8/Lrb;
    iget-object v5, p0, Lc8/Arb;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 102
    .local v10, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/module/expression/ExpressionHolder;>;"
    if-nez v10, :cond_5

    .line 103
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "holders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/module/expression/ExpressionHolder;>;"
    const/4 v5, 0x4

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .restart local v10    # "holders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/module/expression/ExpressionHolder;>;"
    iget-object v5, p0, Lc8/Arb;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v5, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 106
    :cond_5
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 110
    .end local v0    # "holder":Lc8/Lrb;
    .end local v1    # "targetRef":Ljava/lang/String;
    .end local v2    # "targetInstanceId":Ljava/lang/String;
    .end local v3    # "expressionPair":Lc8/ysb;
    .end local v4    # "property":Ljava/lang/String;
    .end local v6    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "config":Ljava/lang/String;
    .end local v10    # "holders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/module/expression/ExpressionHolder;>;"
    :cond_6
    return-void
.end method


# virtual methods
.method clearExpressions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    const-string/jumbo v0, "ExpressionBinding"

    const-string/jumbo v1, "all expression are cleared"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lc8/Arb;->mExpressionHoldersMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lc8/Arb;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    iput-object v2, p0, Lc8/Arb;->mExpressionHoldersMap:Ljava/util/Map;

    .line 228
    :cond_0
    iput-object v2, p0, Lc8/Arb;->mExitExpressionPair:Lc8/ysb;

    .line 229
    return-void
.end method

.method consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 14
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentState"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Lrb;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/aliweex/adapter/module/expression/ExpressionHolder;>;>;"
    .local p2, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 165
    const-string/jumbo v9, "ExpressionBinding"

    const-string/jumbo v10, "expression args is null"

    invoke-static {v9, v10}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 169
    const-string/jumbo v9, "ExpressionBinding"

    const-string/jumbo v10, "no expression need consumed"

    invoke-static {v9, v10}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 175
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v10, "consume expression with %d tasks. event type is %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p3, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 178
    .local v4, "holderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/module/expression/ExpressionHolder;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Lrb;

    .line 179
    .local v3, "holder":Lc8/Lrb;
    iget-object v11, v3, Lc8/Lrb;->eventType:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 180
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 181
    const-string/jumbo v11, "ExpressionBinding"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skip expression with wrong event type.[expected:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",found:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lc8/Lrb;->eventType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_6
    iget-object v11, v3, Lc8/Lrb;->targetInstanceId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v5, p0, Lc8/Arb;->mInstanceId:Ljava/lang/String;

    .line 186
    .local v5, "instanceId":Ljava/lang/String;
    :goto_2
    iget-object v11, v3, Lc8/Lrb;->targetRef:Ljava/lang/String;

    invoke-static {v5, v11}, Lc8/Cyb;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;

    move-result-object v7

    .line 187
    .local v7, "targetComponent":Lc8/tbg;
    if-nez v7, :cond_8

    .line 188
    const-string/jumbo v11, "ExpressionBinding"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to execute expression,target component not found.[ref:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lc8/Lrb;->targetRef:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    .end local v5    # "instanceId":Ljava/lang/String;
    .end local v7    # "targetComponent":Lc8/tbg;
    :cond_7
    iget-object v5, v3, Lc8/Lrb;->targetInstanceId:Ljava/lang/String;

    goto :goto_2

    .line 191
    .restart local v5    # "instanceId":Ljava/lang/String;
    .restart local v7    # "targetComponent":Lc8/tbg;
    :cond_8
    invoke-virtual {v7}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v8

    .line 192
    .local v8, "targetView":Landroid/view/View;
    if-nez v8, :cond_9

    .line 193
    const-string/jumbo v11, "ExpressionBinding"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to execute expression,target view not found.[ref:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lc8/Lrb;->targetRef:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    :cond_9
    iget-object v2, v3, Lc8/Lrb;->expressionPair:Lc8/ysb;

    .line 198
    .local v2, "expressionPair":Lc8/ysb;
    if-eqz v2, :cond_5

    iget-object v11, v2, Lc8/ysb;->transformed:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 201
    iget-object v11, p0, Lc8/Arb;->mCachedExpressionMap:Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;

    iget-object v12, v2, Lc8/ysb;->transformed:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Hrb;

    .line 202
    .local v1, "expression":Lc8/Hrb;
    if-nez v1, :cond_a

    .line 203
    new-instance v1, Lc8/Hrb;

    .end local v1    # "expression":Lc8/Hrb;
    iget-object v11, v2, Lc8/ysb;->transformed:Ljava/lang/String;

    invoke-direct {v1, v11}, Lc8/Hrb;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v1    # "expression":Lc8/Hrb;
    iget-object v11, p0, Lc8/Arb;->mCachedExpressionMap:Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;

    iget-object v12, v2, Lc8/ysb;->transformed:Ljava/lang/String;

    invoke-virtual {v11, v12, v1}, Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lc8/Hrb;->execute(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    .line 208
    .local v6, "obj":Ljava/lang/Object;
    if-nez v6, :cond_b

    .line 209
    const-string/jumbo v11, "ExpressionBinding"

    const-string/jumbo v12, "failed to execute expression,expression result is null"

    invoke-static {v11, v12}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 214
    :cond_b
    iget-object v11, v3, Lc8/Lrb;->prop:Ljava/lang/String;

    invoke-static {v11}, Lc8/vsb;->findInvoker(Ljava/lang/String;)Lc8/Lsb;

    move-result-object v11

    iget-object v12, v3, Lc8/Lrb;->config:Ljava/util/Map;

    invoke-interface {v11, v7, v8, v6, v12}, Lc8/Lsb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method evaluateExitExpression(Lc8/ysb;Ljava/util/Map;)Z
    .locals 6
    .param p1, "exitExpression"    # Lc8/ysb;
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ysb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 122
    .local v1, "exit":Z
    if-eqz p1, :cond_0

    iget-object v3, p1, Lc8/ysb;->transformed:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    new-instance v2, Lc8/Hrb;

    iget-object v3, p1, Lc8/ysb;->transformed:Ljava/lang/String;

    invoke-direct {v2, v3}, Lc8/Hrb;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, "expression":Lc8/Hrb;
    :try_start_0
    invoke-virtual {v2, p2}, Lc8/Hrb;->execute(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    .end local v2    # "expression":Lc8/Hrb;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {p0}, Lc8/Arb;->clearExpressions()V

    .line 136
    :try_start_1
    invoke-virtual {p0, p2}, Lc8/Arb;->onExit(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :cond_1
    :goto_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    .line 148
    :cond_2
    return v1

    .line 126
    .restart local v2    # "expression":Lc8/Hrb;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string/jumbo v3, "ExpressionBinding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "evaluateExitExpression failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "expression":Lc8/Hrb;
    :catch_1
    move-exception v0

    .line 138
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    const-string/jumbo v3, "ExpressionBinding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "execute exit expression failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpressionPair"    # Lc8/ysb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/ysb;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lc8/Arb;->clearExpressions()V

    .line 59
    invoke-direct {p0, p1, p4}, Lc8/Arb;->transformArgs(Ljava/lang/String;Ljava/util/List;)V

    .line 60
    iput-object p5, p0, Lc8/Arb;->mCallback:Lc8/EWf;

    .line 61
    iput-object p3, p0, Lc8/Arb;->mExitExpressionPair:Lc8/ysb;

    .line 63
    iget-object v0, p0, Lc8/Arb;->mScope:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/Arb;->mScope:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    :cond_0
    invoke-direct {p0}, Lc8/Arb;->applyFunctionsToScope()V

    .line 67
    return-void
.end method

.method protected abstract onExit(Ljava/util/Map;)V
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
.end method

.method public setAnchorInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "anchorInstanceId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/Arb;->mAnchorInstanceId:Ljava/lang/String;

    .line 53
    return-void
.end method
