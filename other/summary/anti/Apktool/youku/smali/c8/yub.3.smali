.class public Lc8/yub;
.super Ljava/lang/Object;
.source "WXMtopRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Dub;->send(Landroid/content/Context;Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dub;

.field final synthetic val$callback:Lc8/EWf;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$failure:Lc8/EWf;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Dub;Ljava/lang/String;Lc8/EWf;Lc8/EWf;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Dub;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/yub;->this$0:Lc8/Dub;

    iput-object p2, p0, Lc8/yub;->val$params:Ljava/lang/String;

    iput-object p3, p0, Lc8/yub;->val$callback:Lc8/EWf;

    iput-object p4, p0, Lc8/yub;->val$failure:Lc8/EWf;

    iput-object p5, p0, Lc8/yub;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 124
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    iget-object v1, p0, Lc8/yub;->val$params:Ljava/lang/String;

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lc8/yub;->this$0:Lc8/Dub;

    invoke-static {v1, v9}, Lc8/Dub;->access$100(Lc8/Dub;Lorg/json/JSONObject;)Lc8/vub;

    move-result-object v10

    .line 126
    .local v10, "paramObj":Lc8/vub;
    if-nez v10, :cond_0

    .line 127
    new-instance v12, Lc8/uub;

    iget-object v1, p0, Lc8/yub;->val$callback:Lc8/EWf;

    iget-object v2, p0, Lc8/yub;->val$failure:Lc8/EWf;

    invoke-direct {v12, v1, v2}, Lc8/uub;-><init>(Lc8/EWf;Lc8/EWf;)V

    .line 128
    .local v12, "result":Lc8/uub;
    const-string/jumbo v1, "ret"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v3, "HY_PARAM_ERR"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lc8/uub;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 129
    iget-object v1, p0, Lc8/yub;->this$0:Lc8/Dub;

    invoke-static {v1, v12}, Lc8/Dub;->access$200(Lc8/Dub;Lc8/uub;)V

    .line 149
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "paramObj":Lc8/vub;
    .end local v12    # "result":Lc8/uub;
    :goto_0
    return-void

    .line 133
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "paramObj":Lc8/vub;
    :cond_0
    iget-object v1, p0, Lc8/yub;->this$0:Lc8/Dub;

    invoke-static {v1, v10}, Lc8/Dub;->access$300(Lc8/Dub;Lc8/vub;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v11

    .line 134
    .local v11, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v1, p0, Lc8/yub;->val$context:Landroid/content/Context;

    invoke-static {}, Lc8/UUf;->getConfig()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/cag;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 135
    .local v13, "useragent":Ljava/lang/String;
    iget-object v1, p0, Lc8/yub;->this$0:Lc8/Dub;

    invoke-static {v1, v11, v10, v13}, Lc8/Dub;->access$400(Lc8/Dub;Lmtopsdk/mtop/domain/MtopRequest;Lc8/vub;Ljava/lang/String;)Lc8/HMf;

    move-result-object v5

    .line 136
    .local v5, "remoteBusiness":Lc8/HMf;
    iget-object v1, p0, Lc8/yub;->this$0:Lc8/Dub;

    invoke-static {v1}, Lc8/Dub;->access$500(Lc8/Dub;)Lc8/gxb;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lc8/yub;->this$0:Lc8/Dub;

    invoke-static {v1}, Lc8/Dub;->access$500(Lc8/Dub;)Lc8/gxb;

    move-result-object v1

    invoke-virtual {v1, v5}, Lc8/gxb;->preRequest(Lc8/HMf;)V

    .line 140
    :cond_1
    new-instance v0, Lc8/Cub;

    iget-object v1, p0, Lc8/yub;->this$0:Lc8/Dub;

    iget-object v2, p0, Lc8/yub;->this$0:Lc8/Dub;

    invoke-static {v2}, Lc8/Dub;->access$500(Lc8/Dub;)Lc8/gxb;

    move-result-object v2

    iget-object v3, p0, Lc8/yub;->val$callback:Lc8/EWf;

    iget-object v4, p0, Lc8/yub;->val$failure:Lc8/EWf;

    iget-wide v6, v10, Lc8/vub;->timer:J

    invoke-direct/range {v0 .. v7}, Lc8/Cub;-><init>(Lc8/Dub;Lc8/gxb;Lc8/EWf;Lc8/EWf;Lc8/HMf;J)V

    .line 141
    .local v0, "rbListener":Lc8/Cub;
    invoke-virtual {v5, v0}, Lc8/HMf;->registeListener(Lc8/QNp;)Lc8/HMf;

    .line 142
    invoke-virtual {v5}, Lc8/HMf;->startRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v0    # "rbListener":Lc8/Cub;
    .end local v5    # "remoteBusiness":Lc8/HMf;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "paramObj":Lc8/vub;
    .end local v11    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    .end local v13    # "useragent":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 144
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WXMtopRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send Request failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v12, Lc8/uub;

    iget-object v1, p0, Lc8/yub;->val$callback:Lc8/EWf;

    iget-object v2, p0, Lc8/yub;->val$failure:Lc8/EWf;

    invoke-direct {v12, v1, v2}, Lc8/uub;-><init>(Lc8/EWf;Lc8/EWf;)V

    .line 146
    .restart local v12    # "result":Lc8/uub;
    const-string/jumbo v1, "ret"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v3, "HY_FAILED"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lc8/uub;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 147
    iget-object v1, p0, Lc8/yub;->this$0:Lc8/Dub;

    invoke-static {v1, v12}, Lc8/Dub;->access$200(Lc8/Dub;Lc8/uub;)V

    goto :goto_0
.end method
