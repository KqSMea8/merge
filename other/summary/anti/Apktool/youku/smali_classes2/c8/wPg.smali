.class public Lc8/wPg;
.super Ljava/lang/Object;
.source "FontFamilyManager.java"

# interfaces
.implements Lc8/Dmf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zPg;->downloadFontFamily(Lc8/uPg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zPg;

.field final synthetic val$downloadQueue:Ljava/util/HashMap;

.field final synthetic val$fontFamily:Lc8/uPg;


# direct methods
.method constructor <init>(Lc8/zPg;Ljava/util/HashMap;Lc8/uPg;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zPg;

    .prologue
    .line 147
    iput-object p1, p0, Lc8/wPg;->this$0:Lc8/zPg;

    iput-object p2, p0, Lc8/wPg;->val$downloadQueue:Ljava/util/HashMap;

    iput-object p3, p0, Lc8/wPg;->val$fontFamily:Lc8/uPg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "s1"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v1, p0, Lc8/wPg;->val$downloadQueue:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/EPg;

    .line 162
    .local v0, "typefaceInfo":Lc8/EPg;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p2}, Lc8/EPg;->setTypefaceFilePath(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onDownloadStateChange(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 170
    return-void
.end method

.method public onFinish(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 174
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/wPg;->this$0:Lc8/zPg;

    invoke-static {v0}, Lc8/zPg;->access$100(Lc8/zPg;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/wPg;->val$fontFamily:Lc8/uPg;

    invoke-static {v0, v1}, Lc8/APg;->storeInfo(Landroid/content/Context;Lc8/uPg;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "param"    # Lcom/taobao/downloader/request/Param;
    .param p3, "networkLimitCallback"    # Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;

    .prologue
    .line 180
    return-void
.end method
