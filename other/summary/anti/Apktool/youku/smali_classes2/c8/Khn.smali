.class public final Lc8/Khn;
.super Lc8/SIj;
.source "PreCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Phn;->requestDownData(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$sid:Ljava/lang/String;

.field final synthetic val$vidNames:[Ljava/lang/String;

.field final synthetic val$vids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lc8/Khn;->val$sid:Ljava/lang/String;

    iput-object p2, p0, Lc8/Khn;->val$vids:[Ljava/lang/String;

    iput-object p3, p0, Lc8/Khn;->val$vidNames:[Ljava/lang/String;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lc8/TIj;)V
    .locals 12
    .param p1, "iHttpRequest"    # Lc8/TIj;

    .prologue
    const/4 v9, 0x1

    .line 181
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "jsonStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 184
    .local v7, "vip_down_flag":I
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "results"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 186
    .local v6, "resultsArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 187
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 188
    .local v2, "flagObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "vip_down_flag"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 194
    .end local v2    # "flagObject":Lorg/json/JSONObject;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "resultsArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    if-ne v7, v9, :cond_3

    .line 195
    const-string/jumbo v8, "push_vip_erro_data"

    invoke-static {v8}, Lc8/Phn;->getPreCacheVids(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "erroVidStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "save erroVidStr:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 198
    iget-object v8, p0, Lc8/Khn;->val$sid:Ljava/lang/String;

    iget-object v9, p0, Lc8/Khn;->val$vids:[Ljava/lang/String;

    iget-object v10, p0, Lc8/Khn;->val$vidNames:[Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lc8/Phn;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "push_vip_erro_data"

    invoke-static {v8, v9}, Lc8/Phn;->savePreCaheVidStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v1    # "erroVidStr":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Lc8/Ghn;->setAlarmSchedule()V

    .line 213
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "erroVidStr":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lc8/Khn;->val$sid:Ljava/lang/String;

    iget-object v9, p0, Lc8/Khn;->val$vids:[Ljava/lang/String;

    iget-object v10, p0, Lc8/Khn;->val$vidNames:[Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lc8/Phn;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "newErrorStr":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "push_vip_erro_data"

    invoke-static {v8, v9}, Lc8/Phn;->savePreCaheVidStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    .end local v1    # "erroVidStr":Ljava/lang/String;
    .end local v5    # "newErrorStr":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lc8/Khn;->val$sid:Ljava/lang/String;

    iget-object v9, p0, Lc8/Khn;->val$vids:[Ljava/lang/String;

    iget-object v10, p0, Lc8/Khn;->val$vidNames:[Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lc8/Phn;->access$200(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 209
    :catch_1
    move-exception v8

    const-string/jumbo v8, "PushReceiver"

    const-string/jumbo v9, "cache exception"

    invoke-static {v8, v9}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
