.class public final Lc8/mgg;
.super Ljava/lang/Object;
.source "TypefaceUtil.java"

# interfaces
.implements Lc8/CVf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ngg;->downloadFontByNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$fontFamily:Ljava/lang/String;

.field final synthetic val$fullPath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lc8/mgg;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lc8/mgg;->val$fullPath:Ljava/lang/String;

    iput-object p3, p0, Lc8/mgg;->val$fontFamily:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .locals 0
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public onHttpFinish(Lc8/SXf;)V
    .locals 6
    .param p1, "response"    # Lc8/SXf;

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "statusCode":I
    iget-object v3, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    :try_start_0
    iget-object v3, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 189
    :cond_0
    :goto_0
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_4

    const/16 v3, 0x12b

    if-gt v2, v3, :cond_4

    iget-object v3, p1, Lc8/SXf;->originalData:[B

    if-eqz v3, :cond_4

    .line 190
    iget-object v3, p0, Lc8/mgg;->val$fullPath:Ljava/lang/String;

    iget-object v4, p1, Lc8/SXf;->originalData:[B

    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc8/qgg;->saveFile(Ljava/lang/String;[BLandroid/content/Context;)Z

    move-result v1

    .line 191
    .local v1, "result":Z
    if-eqz v1, :cond_3

    .line 192
    iget-object v3, p0, Lc8/mgg;->val$fullPath:Ljava/lang/String;

    iget-object v4, p0, Lc8/mgg;->val$fontFamily:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/ngg;->access$000(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 202
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 203
    invoke-static {}, Lc8/ngg;->access$100()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lc8/mgg;->val$fontFamily:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Tfg;

    .line 204
    .local v0, "fontDO":Lc8/Tfg;
    if-eqz v0, :cond_2

    .line 205
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lc8/Tfg;->setState(I)V

    .line 208
    .end local v0    # "fontDO":Lc8/Tfg;
    :cond_2
    return-void

    .line 184
    .end local v1    # "result":Z
    :catch_0
    move-exception v3

    const/4 v2, 0x0

    .line 185
    const-string/jumbo v3, "TypefaceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IWXHttpAdapter onHttpFinish statusCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .restart local v1    # "result":Z
    :cond_3
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const-string/jumbo v3, "TypefaceUtil"

    const-string/jumbo v4, "downloadFontByNetwork() onHttpFinish success, but save file failed."

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 199
    .end local v1    # "result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_1
.end method

.method public onHttpResponseProgress(I)V
    .locals 0
    .param p1, "loadedLength"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onHttpStart()V
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "TypefaceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadFontByNetwork begin url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/mgg;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .locals 0
    .param p1, "uploadProgress"    # I

    .prologue
    .line 170
    return-void
.end method
