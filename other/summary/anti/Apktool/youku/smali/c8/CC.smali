.class public Lc8/CC;
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


# direct methods
.method constructor <init>(Lc8/FC;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lc8/CC;->this$0:Lc8/FC;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lc8/CC;->this$0:Lc8/FC;

    invoke-static {v0}, Lc8/FC;->access$200(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    const-string/jumbo v1, "WV.Event.Package.PreviewProgress"

    const-string/jumbo v2, "{\"msg\":\"app-prefix \u4e0b\u8f7d\u5931\u8d25\"}"

    invoke-interface {v0, v1, v2}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-super {p0, p1, p2}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 220
    return-void
.end method

.method public onFinish(Lc8/ZB;I)V
    .locals 6
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    .line 198
    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v0

    .line 199
    .local v0, "bytes":[B
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 204
    .local v1, "content":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lc8/uG;->getInstance()Lc8/uG;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lc8/uG;->preViewMode:Z

    .line 206
    invoke-static {}, Lc8/uG;->getInstance()Lc8/uG;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc8/uG;->parseConfig(Ljava/lang/String;)Z

    move-result v2

    .line 207
    .local v2, "ok":Z
    if-eqz v2, :cond_2

    .line 208
    iget-object v3, p0, Lc8/CC;->this$0:Lc8/FC;

    invoke-static {v3}, Lc8/FC;->access$000(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v3

    const-string/jumbo v4, "WV.Event.Package.PreviewProgress"

    const-string/jumbo v5, "{\"msg\":\"app-prefix \u89e3\u6790\u6210\u529f\"}"

    invoke-interface {v3, v4, v5}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "ok":Z
    :catch_0
    move-exception v3

    .line 213
    :cond_2
    iget-object v3, p0, Lc8/CC;->this$0:Lc8/FC;

    invoke-static {v3}, Lc8/FC;->access$100(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v3

    const-string/jumbo v4, "WV.Event.Package.PreviewProgress"

    const-string/jumbo v5, "{\"msg\":\"app-prefix \u89e3\u6790\u5931\u8d25\"}"

    invoke-interface {v3, v4, v5}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 195
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/CC;->onFinish(Lc8/ZB;I)V

    return-void
.end method
