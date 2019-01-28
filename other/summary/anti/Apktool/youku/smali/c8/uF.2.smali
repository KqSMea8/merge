.class public Lc8/uF;
.super Lc8/RD;
.source "WVUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tF;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUIDialog"


# instance fields
.field private _index:Ljava/lang/String;

.field private cancelBtnText:Ljava/lang/String;

.field protected confirmClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private identifier:Ljava/lang/String;

.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private okBtnText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/uF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/uF;->okBtnText:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/uF;->cancelBtnText:Ljava/lang/String;

    .line 126
    new-instance v0, Lc8/sF;

    invoke-direct {v0, p0}, Lc8/sF;-><init>(Lc8/uF;)V

    iput-object v0, p0, Lc8/uF;->confirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lc8/uF;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/uF;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/uF;->okBtnText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/uF;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/uF;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/uF;->cancelBtnText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/uF;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/uF;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/uF;->_index:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/uF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .param p0, "x0"    # Lc8/uF;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/uF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method

.method static synthetic access$400(Lc8/uF;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/uF;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/uF;->identifier:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized alert(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lc8/uF;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 60
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "title"

    const-string/jumbo v5, "\u63d0\u793a"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    const-string/jumbo v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    const-string/jumbo v4, "okbutton"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/uF;->okBtnText:Ljava/lang/String;

    .line 65
    const-string/jumbo v4, "identifier"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/uF;->identifier:Ljava/lang/String;

    .line 66
    iget-object v4, p0, Lc8/uF;->okBtnText:Ljava/lang/String;

    new-instance v5, Lc8/tF;

    invoke-direct {v5, p0}, Lc8/tF;-><init>(Lc8/uF;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    iput-object p1, p0, Lc8/uF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :try_start_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 78
    .local v0, "ad":Landroid/app/AlertDialog;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .end local v0    # "ad":Landroid/app/AlertDialog;
    :goto_0
    :try_start_4
    const-string/jumbo v4, "WVUIDialog"

    const-string/jumbo v5, "alert: show"

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :goto_1
    monitor-exit p0

    return-void

    .line 68
    :catch_0
    move-exception v4

    :try_start_5
    const-string/jumbo v4, "WVUIDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WVUIDialog: param parse to JSON error, param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 70
    .local v3, "result":Lc8/kE;
    const-string/jumbo v4, "HY_PARAM_ERR"

    invoke-virtual {v3, v4}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 57
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "result":Lc8/kE;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public declared-synchronized confirm(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lc8/uF;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 93
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "title"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 95
    const-string/jumbo v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    const-string/jumbo v4, "okbutton"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/uF;->okBtnText:Ljava/lang/String;

    .line 97
    iget-object v4, p0, Lc8/uF;->okBtnText:Ljava/lang/String;

    iget-object v5, p0, Lc8/uF;->confirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    const-string/jumbo v4, "canclebutton"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/uF;->cancelBtnText:Ljava/lang/String;

    .line 99
    iget-object v4, p0, Lc8/uF;->cancelBtnText:Ljava/lang/String;

    iget-object v5, p0, Lc8/uF;->confirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    const-string/jumbo v4, "_index"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/uF;->_index:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    iput-object p1, p0, Lc8/uF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :try_start_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 112
    .local v0, "ad":Landroid/app/AlertDialog;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .end local v0    # "ad":Landroid/app/AlertDialog;
    :goto_0
    :try_start_4
    const-string/jumbo v4, "WVUIDialog"

    const-string/jumbo v5, "confirm: show"

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    :goto_1
    monitor-exit p0

    return-void

    .line 102
    :catch_0
    move-exception v4

    :try_start_5
    const-string/jumbo v4, "WVUIDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WVUIDialog: param parse to JSON error, param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 104
    .local v3, "result":Lc8/kE;
    const-string/jumbo v4, "HY_PARAM_ERR"

    invoke-virtual {v3, v4}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 90
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "result":Lc8/kE;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 36
    iget-object v1, p0, Lc8/uF;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 37
    iput-object p3, p0, Lc8/uF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 38
    const-string/jumbo v1, "alert"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0, p3, p2}, Lc8/uF;->alert(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 50
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 40
    :cond_0
    const-string/jumbo v1, "confirm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0, p3, p2}, Lc8/uF;->confirm(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 46
    :cond_2
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 47
    .local v0, "result":Lc8/kE;
    const-string/jumbo v1, "error"

    const-string/jumbo v2, "Context must be Activity!!!"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p3, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/uF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/uF;->cancelBtnText:Ljava/lang/String;

    iput-object v0, p0, Lc8/uF;->okBtnText:Ljava/lang/String;

    .line 124
    return-void
.end method
