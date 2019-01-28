.class public Lc8/sRf;
.super Ljava/lang/Object;
.source "UpdateDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yRf;->addUpdateInfo(Ljava/lang/String;Ljava/lang/String;Lc8/oRf;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yRf;

.field final synthetic val$addUpdateCallback:Lc8/oRf;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$extData:[Ljava/lang/String;

.field final synthetic val$from:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/yRf;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lc8/oRf;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lc8/sRf;->this$0:Lc8/yRf;

    iput-object p2, p0, Lc8/sRf;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lc8/sRf;->val$from:Ljava/lang/String;

    iput-object p4, p0, Lc8/sRf;->val$extData:[Ljava/lang/String;

    iput-object p5, p0, Lc8/sRf;->val$addUpdateCallback:Lc8/oRf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v3, "updateTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lc8/sRf;->this$0:Lc8/yRf;

    invoke-static {v4}, Lc8/yRf;->access$000(Lc8/yRf;)Lc8/ARf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ARf;->startReceivePush()V

    .line 116
    iget-object v4, p0, Lc8/sRf;->val$content:Ljava/lang/String;

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 118
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 155
    :cond_0
    iget-object v4, p0, Lc8/sRf;->val$addUpdateCallback:Lc8/oRf;

    if-eqz v4, :cond_1

    .line 156
    iget-object v4, p0, Lc8/sRf;->val$addUpdateCallback:Lc8/oRf;

    invoke-interface {v4, v3}, Lc8/oRf;->onAdded(Ljava/util/List;)Z

    .line 158
    :cond_1
    iget-object v4, p0, Lc8/sRf;->this$0:Lc8/yRf;

    invoke-static {v4}, Lc8/yRf;->access$000(Lc8/yRf;)Lc8/ARf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ARf;->finishReceivePush()V

    .line 159
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 122
    .restart local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 124
    const-string/jumbo v4, "hasUpdate"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    iget-object v4, p0, Lc8/sRf;->this$0:Lc8/yRf;

    const-string/jumbo v5, "hasUpdate"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, v5}, Lc8/yRf;->access$102(Lc8/yRf;Z)Z

    .line 128
    :cond_3
    iget-object v4, p0, Lc8/sRf;->val$from:Ljava/lang/String;

    invoke-static {v0, v4}, Lc8/BRf;->convert2UpdateInfo(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v2

    .line 130
    .local v2, "updateInfo":Lcom/taobao/update/datasource/local/UpdateInfo;
    iget-object v4, v2, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    const-string/jumbo v5, "dynamic"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    const-string/jumbo v4, "dynamic"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_4
    iget-object v4, v2, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    const-string/jumbo v5, "hotpatch"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 134
    const-string/jumbo v4, "hotpatch"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_5
    iget-object v4, p0, Lc8/sRf;->this$0:Lc8/yRf;

    invoke-static {v4}, Lc8/yRf;->access$100(Lc8/yRf;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 139
    sget-object v4, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v4}, Lc8/ERf;->getInstance(Landroid/content/Context;)Lc8/ERf;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc8/ERf;->updateData(Lcom/taobao/update/datasource/local/UpdateInfo;)V

    .line 142
    :cond_6
    iget-object v4, p0, Lc8/sRf;->val$extData:[Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lc8/sRf;->val$extData:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_7

    .line 143
    sget-object v4, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    const-string/jumbo v5, "update_center_accs"

    const-string/jumbo v6, "dispatch_message"

    iget-object v7, p0, Lc8/sRf;->val$extData:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lc8/aQf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_7
    iget-object v4, p0, Lc8/sRf;->val$from:Ljava/lang/String;

    sget-object v5, Lc8/rRf;->ACCS_SOURCE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 147
    iget-object v4, p0, Lc8/sRf;->this$0:Lc8/yRf;

    const/4 v5, 0x1

    iget-object v6, p0, Lc8/sRf;->val$extData:[Ljava/lang/String;

    invoke-static {v4, v2, v5, v6}, Lc8/yRf;->access$200(Lc8/yRf;Lcom/taobao/update/datasource/local/UpdateInfo;Z[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :goto_1
    iget-object v4, p0, Lc8/sRf;->val$addUpdateCallback:Lc8/oRf;

    if-eqz v4, :cond_8

    .line 156
    iget-object v4, p0, Lc8/sRf;->val$addUpdateCallback:Lc8/oRf;

    invoke-interface {v4, v3}, Lc8/oRf;->onAdded(Ljava/util/List;)Z

    .line 158
    :cond_8
    iget-object v4, p0, Lc8/sRf;->this$0:Lc8/yRf;

    invoke-static {v4}, Lc8/yRf;->access$000(Lc8/yRf;)Lc8/ARf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ARf;->finishReceivePush()V

    goto/16 :goto_0

    .line 149
    :cond_9
    :try_start_2
    iget-object v4, p0, Lc8/sRf;->this$0:Lc8/yRf;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/sRf;->val$extData:[Ljava/lang/String;

    invoke-static {v4, v2, v5, v6}, Lc8/yRf;->access$200(Lc8/yRf;Lcom/taobao/update/datasource/local/UpdateInfo;Z[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 152
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "updateInfo":Lcom/taobao/update/datasource/local/UpdateInfo;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v4, "UPDATE-DS"

    const-string/jumbo v5, " addUpdateInfo exception "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    iget-object v4, p0, Lc8/sRf;->val$addUpdateCallback:Lc8/oRf;

    if-eqz v4, :cond_a

    .line 156
    iget-object v4, p0, Lc8/sRf;->val$addUpdateCallback:Lc8/oRf;

    invoke-interface {v4, v3}, Lc8/oRf;->onAdded(Ljava/util/List;)Z

    .line 158
    :cond_a
    iget-object v4, p0, Lc8/sRf;->this$0:Lc8/yRf;

    invoke-static {v4}, Lc8/yRf;->access$000(Lc8/yRf;)Lc8/ARf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ARf;->finishReceivePush()V

    goto/16 :goto_0

    .line 155
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/sRf;->val$addUpdateCallback:Lc8/oRf;

    if-eqz v5, :cond_b

    .line 156
    iget-object v5, p0, Lc8/sRf;->val$addUpdateCallback:Lc8/oRf;

    invoke-interface {v5, v3}, Lc8/oRf;->onAdded(Ljava/util/List;)Z

    .line 158
    :cond_b
    iget-object v5, p0, Lc8/sRf;->this$0:Lc8/yRf;

    invoke-static {v5}, Lc8/yRf;->access$000(Lc8/yRf;)Lc8/ARf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/ARf;->finishReceivePush()V

    throw v4
.end method
