.class public Lc8/nZm;
.super Lc8/RD;
.source "UIToastWVPlugin.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lc8/jXb;)V
    .locals 1
    .param p1, "popLayerView"    # Lc8/jXb;

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 24
    invoke-virtual {p1}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/nZm;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private jsToast(Ljava/lang/String;)Z
    .locals 8
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 44
    .local v3, "xxx":Lorg/json/JSONObject;
    const-string/jumbo v4, "message"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "message":Ljava/lang/String;
    const-string/jumbo v4, "duration"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "duration":I
    iget-object v4, p0, Lc8/nZm;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "duration":I
    .end local v1    # "jsonParser":Lorg/json/JSONTokener;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "xxx":Lorg/json/JSONObject;
    :goto_0
    return v7

    .line 49
    :catch_0
    move-exception v4

    iget-object v4, p0, Lc8/nZm;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v1, 0x0

    .line 30
    :try_start_0
    const-string/jumbo v2, "toast"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-direct {p0, p2}, Lc8/nZm;->jsToast(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "PopLayerWindVaneExtraPlugin.execute.error"

    invoke-static {v2, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
