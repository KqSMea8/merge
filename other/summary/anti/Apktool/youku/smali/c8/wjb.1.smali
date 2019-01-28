.class public Lc8/wjb;
.super Landroid/os/AsyncTask;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadUrlTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lc8/wjb;->this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/wjb;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lc8/wjb;->url:Ljava/lang/String;

    .line 177
    sget-object v0, Lc8/Dgb;->INSTANCE:Lc8/Dgb;

    invoke-virtual {v0}, Lc8/Dgb;->refreshCookie()V

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 172
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/wjb;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 184
    invoke-static {}, Lc8/Shb;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const-string/jumbo v0, "com_taobao_tae_sdk_network_not_available_message"

    invoke-static {v0}, Lc8/Shb;->toast(Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/wjb;->this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v0}, Lc8/sjb;->resumeTimers()V

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lc8/wjb;->this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v0}, Lc8/sjb;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_1
    :goto_1
    iget-object v0, p0, Lc8/wjb;->this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    iget-object v1, p0, Lc8/wjb;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/sjb;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
