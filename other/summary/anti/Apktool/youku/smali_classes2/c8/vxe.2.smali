.class public Lc8/vxe;
.super Landroid/os/AsyncTask;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wxe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lc8/uxe",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHttpMethod:Ljava/lang/String;

.field private final mListener:Lc8/Exe;

.field private final mParams:Lc8/Fxe;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lc8/Fxe;
    .param p4, "httpMethod"    # Ljava/lang/String;
    .param p5, "listener"    # Lc8/Exe;

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 202
    iput-object p1, p0, Lc8/vxe;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Lc8/vxe;->mUrl:Ljava/lang/String;

    .line 204
    iput-object p3, p0, Lc8/vxe;->mParams:Lc8/Fxe;

    .line 205
    iput-object p4, p0, Lc8/vxe;->mHttpMethod:Ljava/lang/String;

    .line 206
    iput-object p5, p0, Lc8/vxe;->mListener:Lc8/Exe;

    .line 207
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lc8/uxe;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lc8/uxe",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    iget-object v2, p0, Lc8/vxe;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lc8/vxe;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lc8/vxe;->mHttpMethod:Ljava/lang/String;

    iget-object v5, p0, Lc8/vxe;->mParams:Lc8/Fxe;

    invoke-static {v2, v3, v4, v5}, Lc8/yxe;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lc8/uxe;

    invoke-direct {v2, v1}, Lc8/uxe;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    new-instance v2, Lc8/uxe;

    invoke-direct {v2, v0}, Lc8/uxe;-><init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/vxe;->doInBackground([Ljava/lang/Void;)Lc8/uxe;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lc8/uxe;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/uxe",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "result":Lc8/uxe;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lc8/uxe;->getError()Lcom/sina/weibo/sdk/exception/WeiboException;

    move-result-object v0

    .line 227
    .local v0, "exception":Lcom/sina/weibo/sdk/exception/WeiboException;
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lc8/vxe;->mListener:Lc8/Exe;

    invoke-interface {v1, v0}, Lc8/Exe;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v2, p0, Lc8/vxe;->mListener:Lc8/Exe;

    invoke-virtual {p1}, Lc8/uxe;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lc8/Exe;->onComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Lc8/uxe;

    invoke-virtual {p0, p1}, Lc8/vxe;->onPostExecute(Lc8/uxe;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method
