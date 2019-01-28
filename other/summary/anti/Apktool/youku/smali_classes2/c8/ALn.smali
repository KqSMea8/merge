.class public abstract Lc8/ALn;
.super Ljava/lang/Object;
.source "MtopBaseLoadRequest.java"

# interfaces
.implements Lc8/dOp;


# instance fields
.field public API_NAME:Ljava/lang/String;

.field public NEED_ECODE:Z

.field public NEED_SESSION:Z

.field public ParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public VERSION:Ljava/lang/String;

.field public channel_id:J

.field public debug:I

.field public final device:Ljava/lang/String;

.field public filter:Ljava/lang/String;

.field public layout_ver:J

.field public root:Ljava/lang/String;

.field public system_info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lc8/ALn;->NEED_ECODE:Z

    .line 51
    iput-boolean v1, p0, Lc8/ALn;->NEED_SESSION:Z

    .line 55
    iput-object v2, p0, Lc8/ALn;->filter:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lc8/ALn;->system_info:Ljava/lang/String;

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/ALn;->channel_id:J

    .line 69
    const-string/jumbo v2, "ANDROID"

    iput-object v2, p0, Lc8/ALn;->device:Ljava/lang/String;

    .line 74
    const-wide/32 v2, 0x186a0

    iput-wide v2, p0, Lc8/ALn;->layout_ver:J

    .line 79
    const-string/jumbo v2, "MAIN"

    iput-object v2, p0, Lc8/ALn;->root:Ljava/lang/String;

    .line 83
    sget-boolean v2, Lc8/KWc;->DEBUG:Z

    if-ne v2, v0, :cond_0

    :goto_0
    iput v0, p0, Lc8/ALn;->debug:I

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/ALn;->ParamsMap:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v1

    .line 83
    goto :goto_0
.end method


# virtual methods
.method protected buildRequestParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "ApiParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method public abstract doMtopRequest(Ljava/util/HashMap;Lc8/JNp;)Lc8/ENp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/JNp;",
            ")",
            "Lc8/ENp;"
        }
    .end annotation
.end method

.method protected getMtopHeader()Lcom/alibaba/fastjson/JSONObject;
    .locals 21

    .prologue
    .line 134
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 135
    .local v7, "header":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, ""

    .line 136
    .local v4, "callId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 137
    .local v3, "appId":I
    const-string/jumbo v8, ""

    .line 139
    .local v8, "language":Ljava/lang/String;
    sget-object v5, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    .line 140
    .local v5, "ch":Ljava/lang/String;
    const/4 v9, 0x2

    .line 143
    .local v9, "network":I
    :try_start_0
    sget-object v19, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 144
    .local v18, "utdid":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lc8/Iin;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 149
    :goto_0
    const-string/jumbo v16, ""

    .line 150
    .local v16, "resolution":Ljava/lang/String;
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 151
    .local v12, "osVersion":Ljava/lang/String;
    const-wide/16 v10, -0x1

    .line 157
    .local v10, "openId":J
    const-string/jumbo v15, ""

    .line 158
    .local v15, "remoteIp":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 159
    .local v2, "accessToken":Ljava/lang/String;
    const-string/jumbo v17, ""

    .line 161
    .local v17, "spm":Ljava/lang/String;
    invoke-static {}, Lc8/ELn;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 162
    const-string/jumbo v13, "android_pad"

    .line 166
    .local v13, "platformId":Ljava/lang/String;
    :goto_1
    const/4 v14, 0x0

    .line 168
    .local v14, "proxy":Z
    :try_start_1
    const-string/jumbo v19, "callId"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v19, "appId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v19, "language"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v19, "appVersion"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v19, "ch"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v19, "network"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v19, "utdid"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v19, "resolution"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v19, "osVersion"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v19, "openId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v19, "remoteIp"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v19, "accessToken"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v19, "spm"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v19, "platformId"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v19, "proxy"

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :goto_2
    return-object v7

    .line 145
    .end local v2    # "accessToken":Ljava/lang/String;
    .end local v10    # "openId":J
    .end local v12    # "osVersion":Ljava/lang/String;
    .end local v13    # "platformId":Ljava/lang/String;
    .end local v14    # "proxy":Z
    .end local v15    # "remoteIp":Ljava/lang/String;
    .end local v16    # "resolution":Ljava/lang/String;
    .end local v17    # "spm":Ljava/lang/String;
    .end local v18    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 146
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    const-string/jumbo v18, ""

    .restart local v18    # "utdid":Ljava/lang/String;
    goto/16 :goto_0

    .line 164
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "accessToken":Ljava/lang/String;
    .restart local v10    # "openId":J
    .restart local v12    # "osVersion":Ljava/lang/String;
    .restart local v15    # "remoteIp":Ljava/lang/String;
    .restart local v16    # "resolution":Ljava/lang/String;
    .restart local v17    # "spm":Ljava/lang/String;
    :cond_0
    const-string/jumbo v13, "android_phone"

    .restart local v13    # "platformId":Ljava/lang/String;
    goto/16 :goto_1

    .line 183
    .restart local v14    # "proxy":Z
    :catch_1
    move-exception v6

    .line 184
    .local v6, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_2
.end method
