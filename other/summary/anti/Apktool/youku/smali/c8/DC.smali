.class public Lc8/DC;
.super Lc8/WB;
.source "WVPackageAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/FC;->previewApp(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/WB",
        "<",
        "Lc8/ZB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/FC;

.field final synthetic val$config:Lc8/WG;


# direct methods
.method constructor <init>(Lc8/FC;Lc8/WG;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lc8/DC;->this$0:Lc8/FC;

    iput-object p2, p0, Lc8/DC;->val$config:Lc8/WG;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lc8/DC;->this$0:Lc8/FC;

    invoke-static {v0}, Lc8/FC;->access$600(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    const-string/jumbo v1, "WV.Event.Package.PreviewProgress"

    const-string/jumbo v2, "{\"msg\":\"app.json \u4e0b\u8f7d\u5931\u8d25\"}"

    invoke-interface {v0, v1, v2}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-super {p0, p1, p2}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 272
    return-void
.end method

.method public onFinish(Lc8/ZB;I)V
    .locals 10
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    .line 227
    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v3

    .line 228
    .local v3, "bytes":[B
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v7, "utf-8"

    invoke-direct {v4, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 233
    .local v4, "content":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    .local v2, "appName":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 236
    .local v1, "appInfoObj":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 239
    const-string/jumbo v7, "v"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "v":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 243
    iget-object v7, p0, Lc8/DC;->val$config:Lc8/WG;

    invoke-virtual {v7, v2}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    .line 244
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-nez v0, :cond_2

    .line 245
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .end local v0    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-direct {v0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;-><init>()V

    .line 246
    .restart local v0    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    iget-object v7, p0, Lc8/DC;->val$config:Lc8/WG;

    invoke-virtual {v7, v2, v0}, Lc8/WG;->putAppInfo2Table(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V

    .line 248
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    .line 249
    iput-object v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    .line 250
    iput-object v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    .line 251
    sget v7, Lc8/dH;->ZIP_NEWEST:I

    iput v7, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 252
    const-string/jumbo v7, "s"

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    .line 253
    const-string/jumbo v7, "f"

    const-wide/16 v8, 0x5

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    .line 254
    const-string/jumbo v7, "t"

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    .line 255
    const-string/jumbo v7, "z"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 256
    const-wide/16 v8, 0x0

    iput-wide v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    .line 257
    const-string/jumbo v7, "0.0"

    iput-object v7, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    .line 258
    iget-object v7, p0, Lc8/DC;->this$0:Lc8/FC;

    invoke-static {v7}, Lc8/FC;->access$300(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v7

    const-string/jumbo v8, "WV.Event.Package.PreviewProgress"

    const-string/jumbo v9, "{\"msg\":\"app.json \u89e3\u6790\u6210\u529f\"}"

    invoke-interface {v7, v8, v9}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v7, p0, Lc8/DC;->this$0:Lc8/FC;

    invoke-static {v7}, Lc8/FC;->access$400(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v7

    const-string/jumbo v8, "WV.Event.Package.PreviewProgress"

    const-string/jumbo v9, "{\"msg\":\"\u51c6\u5907\u4e0b\u8f7d(\u5982\u957f\u65f6\u95f4\u672a\u5f00\u59cb\u4e0b\u8f7d\uff0c\u8bf7\u5237\u65b0\u672c\u9875\u9762)\"}"

    invoke-interface {v7, v8, v9}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v7

    invoke-virtual {v7}, Lc8/KB;->resetConfig()V

    .line 261
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v7

    sget-object v8, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeCustom:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v7, v8}, Lc8/KB;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 265
    .end local v0    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v1    # "appInfoObj":Lorg/json/JSONObject;
    .end local v2    # "appName":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "v":Ljava/lang/String;
    :catch_0
    move-exception v7

    iget-object v7, p0, Lc8/DC;->this$0:Lc8/FC;

    invoke-static {v7}, Lc8/FC;->access$500(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v7

    const-string/jumbo v8, "WV.Event.Package.PreviewProgress"

    const-string/jumbo v9, "{\"msg\":\"app.json \u89e3\u6790\u5931\u8d25\"}"

    invoke-interface {v7, v8, v9}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 224
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/DC;->onFinish(Lc8/ZB;I)V

    return-void
.end method
