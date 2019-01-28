.class public Lc8/Vqb;
.super Lc8/MXf;
.source "WXWindVaneModule.java"

# interfaces
.implements Lc8/uXf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Uqb;,
        Lc8/Tqb;
    }
.end annotation


# static fields
.field private static sMtopRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/gxb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEntryManager:Lc8/hE;

.field private mEventListener:Lc8/Uqb;

.field private mIWVWebView:Lc8/Wqb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/Vqb;->sMtopRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 33
    iput-object v0, p0, Lc8/Vqb;->mEntryManager:Lc8/hE;

    .line 34
    iput-object v0, p0, Lc8/Vqb;->mIWVWebView:Lc8/Wqb;

    .line 39
    new-instance v0, Lc8/Uqb;

    invoke-direct {v0}, Lc8/Uqb;-><init>()V

    iput-object v0, p0, Lc8/Vqb;->mEventListener:Lc8/Uqb;

    .line 40
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    iget-object v1, p0, Lc8/Vqb;->mEventListener:Lc8/Uqb;

    invoke-virtual {v0, v1}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 41
    return-void
.end method

.method private filterMtopRequest(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "MtopWVPlugin"

    const-string/jumbo v2, "class"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lc8/gxb;->newInstance()Lc8/gxb;

    move-result-object v0

    .line 138
    .local v0, "tracker":Lc8/gxb;
    sget-object v1, Lc8/Vqb;->sMtopRequests:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/gxb;->preRequest(Lcom/alibaba/fastjson/JSONObject;)V

    .line 141
    .end local v0    # "tracker":Lc8/gxb;
    :cond_0
    return-void
.end method

.method static popMtopTracker(Ljava/lang/String;)Lc8/gxb;
    .locals 1
    .param p0, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lc8/Vqb;->sMtopRequests:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gxb;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 45
    iget-object v2, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 46
    iget-object v2, p0, Lc8/Vqb;->mEntryManager:Lc8/hE;

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Lc8/Wqb;

    iget-object v3, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-direct {v2, v3}, Lc8/Wqb;-><init>(Lc8/nVf;)V

    iput-object v2, p0, Lc8/Vqb;->mIWVWebView:Lc8/Wqb;

    .line 48
    new-instance v2, Lc8/hE;

    iget-object v3, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lc8/Vqb;->mIWVWebView:Lc8/Wqb;

    invoke-direct {v2, v3, v4}, Lc8/hE;-><init>(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v2, p0, Lc8/Vqb;->mEntryManager:Lc8/hE;

    .line 51
    :cond_0
    iget-object v2, p0, Lc8/Vqb;->mEventListener:Lc8/Uqb;

    if-eqz v2, :cond_1

    .line 52
    iget-object v2, p0, Lc8/Vqb;->mEventListener:Lc8/Uqb;

    iget-object v3, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2, v3}, Lc8/Uqb;->setWXSDKInstance(Lc8/nVf;)V

    .line 55
    :cond_1
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;-><init>()V

    .line 56
    .local v1, "wvCallMethodContext":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 57
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v0, p2}, Lc8/Vqb;->filterMtopRequest(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 58
    if-eqz v0, :cond_2

    .line 59
    iget-object v2, p0, Lc8/Vqb;->mIWVWebView:Lc8/Wqb;

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 60
    const-string/jumbo v2, "class"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    .line 61
    const-string/jumbo v2, "method"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    .line 62
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 65
    :cond_2
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v2

    iget-object v3, p0, Lc8/Vqb;->mEntryManager:Lc8/hE;

    new-instance v4, Lc8/Sqb;

    iget-object v5, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    .line 66
    invoke-virtual {v5}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p2, v7}, Lc8/Sqb;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v5, Lc8/Sqb;

    iget-object v6, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    .line 67
    invoke-virtual {v6}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p2, v7}, Lc8/Sqb;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    invoke-virtual {v2, v3, v1, v4, v5}, Lc8/fE;->exCallMethod(Lc8/hE;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Lc8/OD;Lc8/PD;)V

    .line 69
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "wvCallMethodContext":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    :cond_3
    return-void
.end method

.method public call2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "successCallback"    # Ljava/lang/String;
    .param p4, "errorCallback"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 73
    iget-object v4, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 74
    iget-object v4, p0, Lc8/Vqb;->mEntryManager:Lc8/hE;

    if-nez v4, :cond_0

    .line 75
    new-instance v4, Lc8/Wqb;

    iget-object v5, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-direct {v4, v5}, Lc8/Wqb;-><init>(Lc8/nVf;)V

    iput-object v4, p0, Lc8/Vqb;->mIWVWebView:Lc8/Wqb;

    .line 76
    new-instance v4, Lc8/hE;

    iget-object v5, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v5}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lc8/Vqb;->mIWVWebView:Lc8/Wqb;

    invoke-direct {v4, v5, v6}, Lc8/hE;-><init>(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v4, p0, Lc8/Vqb;->mEntryManager:Lc8/hE;

    .line 79
    :cond_0
    iget-object v4, p0, Lc8/Vqb;->mEventListener:Lc8/Uqb;

    if-eqz v4, :cond_1

    .line 80
    iget-object v4, p0, Lc8/Vqb;->mEventListener:Lc8/Uqb;

    iget-object v5, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4, v5}, Lc8/Uqb;->setWXSDKInstance(Lc8/nVf;)V

    .line 83
    :cond_1
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;-><init>()V

    .line 86
    .local v3, "wvCallMethodContext":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    :try_start_0
    invoke-static {p2}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v1, p3}, Lc8/Vqb;->filterMtopRequest(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    iget-object v5, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v5}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p4, v7}, Lc8/pVf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "wvCallMethodContext":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    :cond_2
    :goto_0
    return-void

    .line 87
    .restart local v3    # "wvCallMethodContext":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "Invalid param"

    invoke-static {v4, v2}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    iget-object v5, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v5}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p4, v7}, Lc8/pVf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 98
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "index":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 100
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    iget-object v5, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v5}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p4, v7}, Lc8/pVf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 103
    :cond_4
    iget-object v4, p0, Lc8/Vqb;->mIWVWebView:Lc8/Wqb;

    iput-object v4, v3, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 104
    const/4 v4, 0x0

    const-string/jumbo v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    .line 105
    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    .line 107
    iput-object p2, v3, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 109
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v4

    iget-object v5, p0, Lc8/Vqb;->mEntryManager:Lc8/hE;

    new-instance v6, Lc8/Sqb;

    iget-object v7, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    .line 110
    invoke-virtual {v7}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p4, v9}, Lc8/Sqb;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v7, Lc8/Sqb;

    iget-object v8, p0, Lc8/Vqb;->mWXSDKInstance:Lc8/nVf;

    .line 111
    invoke-virtual {v8}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p3, v9}, Lc8/Sqb;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {v4, v5, v3, v6, v7}, Lc8/fE;->exCallMethod(Lc8/hE;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Lc8/OD;Lc8/PD;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lc8/Vqb;->mEventListener:Lc8/Uqb;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lc8/Vqb;->mEventListener:Lc8/Uqb;

    invoke-virtual {v0}, Lc8/Uqb;->destroy()V

    .line 120
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    iget-object v1, p0, Lc8/Vqb;->mEventListener:Lc8/Uqb;

    invoke-virtual {v0, v1}, Lc8/qH;->removeEventListener(Lc8/pH;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lc8/Vqb;->mIWVWebView:Lc8/Wqb;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lc8/Vqb;->mIWVWebView:Lc8/Wqb;

    invoke-virtual {v0}, Lc8/Wqb;->destroy()V

    .line 125
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 129
    iget-object v0, p0, Lc8/Vqb;->mEntryManager:Lc8/hE;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/Vqb;->mEntryManager:Lc8/hE;

    invoke-virtual {v0, p1, p2, p3}, Lc8/hE;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lc8/MXf;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    return-void
.end method
