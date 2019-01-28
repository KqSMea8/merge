.class public Lc8/rF;
.super Lc8/RD;
.source "WVUIActionSheet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUIActionSheet"


# instance fields
.field private _index:Ljava/lang/String;

.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mPopupWindowController:Lc8/jI;

.field private popupClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/rF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 97
    new-instance v0, Lc8/qF;

    invoke-direct {v0, p0}, Lc8/qF;-><init>(Lc8/rF;)V

    iput-object v0, p0, Lc8/rF;->popupClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lc8/rF;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/rF;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/rF;->_index:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/rF;)Lc8/jI;
    .locals 1
    .param p0, "x0"    # Lc8/rF;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/rF;->mPopupWindowController:Lc8/jI;

    return-object v0
.end method

.method static synthetic access$200(Lc8/rF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .param p0, "x0"    # Lc8/rF;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/rF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 35
    const-string/jumbo v0, "show"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, p3, p2}, Lc8/rF;->show(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/rF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 95
    return-void
.end method

.method public declared-synchronized show(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 11
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 47
    monitor-enter p0

    const/4 v3, 0x0

    .line 48
    .local v3, "title":Ljava/lang/String;
    const/4 v4, 0x0

    .line 49
    .local v4, "mPopupMenuTags":[Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v9, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v0, "title"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    const-string/jumbo v0, "_index"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/rF;->_index:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "buttons"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 55
    .local v8, "jsArr":Lorg/json/JSONArray;
    if-eqz v8, :cond_1

    .line 56
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 57
    const-string/jumbo v0, "WVUIActionSheet"

    const-string/jumbo v1, "WVUIDialog: ActionSheet is too long, limit 8"

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v10, Lc8/kE;

    invoke-direct {v10}, Lc8/kE;-><init>()V

    .line 59
    .local v10, "result":Lc8/kE;
    const-string/jumbo v0, "HY_PARAM_ERR"

    invoke-virtual {v10, v0}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "msg"

    const-string/jumbo v1, "ActionSheet is too long. limit 8"

    invoke-virtual {v10, v0, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v8    # "jsArr":Lorg/json/JSONArray;
    .end local v9    # "jsObj":Lorg/json/JSONObject;
    .end local v10    # "result":Lc8/kE;
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    .restart local v8    # "jsArr":Lorg/json/JSONArray;
    .restart local v9    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 65
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 66
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 70
    .end local v7    # "i":I
    .end local v8    # "jsArr":Lorg/json/JSONArray;
    .end local v9    # "jsObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v0, "WVUIActionSheet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WVUIDialog: param parse to JSON error, param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v10, Lc8/kE;

    invoke-direct {v10}, Lc8/kE;-><init>()V

    .line 72
    .restart local v10    # "result":Lc8/kE;
    const-string/jumbo v0, "HY_PARAM_ERR"

    invoke-virtual {v10, v0}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 47
    .end local v10    # "result":Lc8/kE;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_1
    :try_start_4
    iput-object p1, p0, Lc8/rF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :try_start_5
    new-instance v0, Lc8/jI;

    iget-object v1, p0, Lc8/rF;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/rF;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v2}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lc8/rF;->popupClickListener:Landroid/view/View$OnClickListener;

    invoke-direct/range {v0 .. v5}, Lc8/jI;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lc8/rF;->mPopupWindowController:Lc8/jI;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    :try_start_6
    iget-object v0, p0, Lc8/rF;->mPopupWindowController:Lc8/jI;

    invoke-virtual {v0}, Lc8/jI;->show()V

    .line 89
    const-string/jumbo v0, "WVUIActionSheet"

    const-string/jumbo v1, "ActionSheet: show"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :catch_1
    move-exception v6

    .line 81
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "WVUIActionSheet"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v10, Lc8/kE;

    invoke-direct {v10}, Lc8/kE;-><init>()V

    .line 83
    .restart local v10    # "result":Lc8/kE;
    const-string/jumbo v0, "errMsg"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method
