.class public Lc8/PC;
.super Ljava/lang/Object;
.source "ApiUrlManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUploadTokenUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uniqueKey"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lc8/fC;

    invoke-direct {v0}, Lc8/fC;-><init>()V

    .line 23
    .local v0, "request":Lc8/fC;
    const-string/jumbo v1, "api"

    const-string/jumbo v2, "com.taobao.mtop.getUploadFileToken"

    invoke-virtual {v0, v1, v2}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v1, "v"

    const-string/jumbo v2, "2.0"

    invoke-virtual {v0, v1, v2}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v1, "uniqueKey"

    invoke-virtual {v0, v1, p0}, Lc8/fC;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-class v1, Lc8/QC;

    invoke-static {v0, v1}, Lc8/iC;->formatUrl(Lc8/fC;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUploadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uniqueKey"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lc8/fC;

    invoke-direct {v0}, Lc8/fC;-><init>()V

    .line 31
    .local v0, "request":Lc8/fC;
    const-string/jumbo v1, "api"

    const-string/jumbo v2, "com.taobao.mtop.uploadFile"

    invoke-virtual {v0, v1, v2}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v1, "v"

    const-string/jumbo v2, "2.0"

    invoke-virtual {v0, v1, v2}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v1, "uniqueKey"

    invoke-virtual {v0, v1, p0}, Lc8/fC;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v1, "accessToken"

    invoke-virtual {v0, v1, p1}, Lc8/fC;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-class v1, Lc8/QC;

    invoke-static {v0, v1}, Lc8/iC;->formatUrl(Lc8/fC;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
