.class public Lc8/KXf;
.super Ljava/lang/Object;
.source "WXJSExceptionInfo.java"


# instance fields
.field private mBundleUrl:Ljava/lang/String;

.field private mErrCode:Ljava/lang/String;

.field private mException:Ljava/lang/String;

.field private mExtParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFunction:Ljava/lang/String;

.field private mInstanceId:Ljava/lang/String;

.field private mJsFrameworkVersion:Ljava/lang/String;

.field private mWeexVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "bundleUrl"    # Ljava/lang/String;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "function"    # Ljava/lang/String;
    .param p5, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p6, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lc8/UUf;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v0, p0, Lc8/KXf;->mWeexVersion:Ljava/lang/String;

    .line 62
    sget-object v0, Lc8/UUf;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    iput-object v0, p0, Lc8/KXf;->mJsFrameworkVersion:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lc8/KXf;->mInstanceId:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lc8/KXf;->mBundleUrl:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lc8/KXf;->mErrCode:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lc8/KXf;->mFunction:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lc8/KXf;->mException:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lc8/KXf;->mExtParams:Ljava/util/Map;

    .line 72
    return-void
.end method


# virtual methods
.method public getBundleUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc8/KXf;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lc8/KXf;->mErrCode:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lc8/KXf;->mException:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lc8/KXf;->mExtParams:Ljava/util/Map;

    return-object v0
.end method

.method public getFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lc8/KXf;->mFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/KXf;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getJsFrameworkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lc8/KXf;->mJsFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWeexVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/KXf;->mWeexVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setBundleUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleUrl"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/KXf;->mBundleUrl:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/KXf;->mErrCode:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setException(Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lc8/KXf;->mException:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setExtParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/KXf;->mExtParams:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lc8/KXf;->mFunction:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lc8/KXf;->mInstanceId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "WeexSDKVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lc8/KXf;->mWeexVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " JSFrameworkVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lc8/KXf;->mJsFrameworkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " instanceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lc8/KXf;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " bundleUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lc8/KXf;->mBundleUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lc8/KXf;->mErrCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lc8/KXf;->mFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lc8/KXf;->mException:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " extParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lc8/KXf;->mExtParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
