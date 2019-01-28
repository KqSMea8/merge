.class public Lc8/Odg;
.super Lc8/MXf;
.source "WXMetaModule.java"


# static fields
.field public static final DEVICE_WIDTH:Ljava/lang/String; = "device-width"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewport(Ljava/lang/String;)V
    .locals 6
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    :try_start_0
    const-string/jumbo v4, "utf-8"

    invoke-static {p1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 48
    .local v2, "jsObj":Lcom/alibaba/fastjson/JSONObject;
    iget-object v4, p0, Lc8/Odg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    .local v0, "cxt":Landroid/content/Context;
    const-string/jumbo v4, "device-width"

    const-string/jumbo v5, "width"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-static {v0}, Lc8/Jgg;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Lc8/Jgg;->getScreenDensity(Landroid/content/Context;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 51
    .local v3, "width":I
    iget-object v4, p0, Lc8/Odg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4, v3}, Lc8/nVf;->setViewPortWidth(I)V

    .line 52
    iget-object v4, p0, Lc8/Odg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4, v3}, Lc8/nVf;->setInstanceViewPortWidth(I)V

    .line 64
    .end local v0    # "cxt":Landroid/content/Context;
    .end local v2    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v0    # "cxt":Landroid/content/Context;
    .restart local v2    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const-string/jumbo v4, "width"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 55
    .restart local v3    # "width":I
    if-lez v3, :cond_0

    .line 56
    iget-object v4, p0, Lc8/Odg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4, v3}, Lc8/nVf;->setViewPortWidth(I)V

    .line 57
    iget-object v4, p0, Lc8/Odg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4, v3}, Lc8/nVf;->setInstanceViewPortWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "cxt":Landroid/content/Context;
    .end local v2    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "width":I
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXModalUIModule] alert param parse error "

    invoke-static {v4, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
