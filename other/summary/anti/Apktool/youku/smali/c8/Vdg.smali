.class public Lc8/Vdg;
.super Lc8/ZUf;
.source "WXModalUIModule.java"


# static fields
.field public static final CANCEL:Ljava/lang/String; = "Cancel"

.field public static final CANCEL_TITLE:Ljava/lang/String; = "cancelTitle"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final OK_TITLE:Ljava/lang/String; = "okTitle"

.field public static final RESULT:Ljava/lang/String; = "result"


# instance fields
.field private activeDialog:Landroid/app/Dialog;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lc8/ZUf;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lc8/Vdg;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lc8/Vdg;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 48
    iput-object p1, p0, Lc8/Vdg;->activeDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private tracking(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/Vdg;->activeDialog:Landroid/app/Dialog;

    .line 256
    new-instance v0, Lc8/Udg;

    invoke-direct {v0, p0}, Lc8/Udg;-><init>(Lc8/Vdg;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 262
    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Lc8/EWf;)V
    .locals 8
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
        uiThread = true
    .end annotation

    .prologue
    .line 100
    iget-object v7, p0, Lc8/Vdg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v7}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Landroid/app/Activity;

    if-eqz v7, :cond_3

    .line 102
    const-string/jumbo v4, ""

    .line 103
    .local v4, "message":Ljava/lang/String;
    const-string/jumbo v5, "OK"

    .line 104
    .local v5, "okTitle":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 106
    :try_start_0
    const-string/jumbo v7, "utf-8"

    invoke-static {p1, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 108
    .local v3, "jsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "message"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string/jumbo v7, "okTitle"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 114
    .end local v3    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    const-string/jumbo v4, ""

    .line 117
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lc8/Vdg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v7}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v6, "OK"

    .line 121
    .local v6, "okTitle_f":Ljava/lang/String;
    :goto_1
    new-instance v7, Lc8/Pdg;

    invoke-direct {v7, p0, p2, v6}, Lc8/Pdg;-><init>(Lc8/Vdg;Lc8/EWf;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 130
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    invoke-direct {p0, v0}, Lc8/Vdg;->tracking(Landroid/app/Dialog;)V

    .line 136
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "okTitle":Ljava/lang/String;
    .end local v6    # "okTitle_f":Ljava/lang/String;
    :goto_2
    return-void

    .line 110
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "okTitle":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "[WXModalUIModule] alert param parse error "

    invoke-static {v7, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    move-object v6, v5

    .line 120
    goto :goto_1

    .line 134
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "okTitle":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "[WXModalUIModule] when call alert mWXSDKInstance.getContext() must instanceof Activity"

    invoke-static {v7}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public confirm(Ljava/lang/String;Lc8/EWf;)V
    .locals 10
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
        uiThread = true
    .end annotation

    .prologue
    .line 141
    iget-object v9, p0, Lc8/Vdg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v9}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_4

    .line 142
    const-string/jumbo v6, ""

    .line 143
    .local v6, "message":Ljava/lang/String;
    const-string/jumbo v7, "OK"

    .line 144
    .local v7, "okTitle":Ljava/lang/String;
    const-string/jumbo v2, "Cancel"

    .line 146
    .local v2, "cancelTitle":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 148
    :try_start_0
    const-string/jumbo v9, "utf-8"

    invoke-static {p1, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 150
    .local v5, "jsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "message"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    const-string/jumbo v9, "okTitle"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    const-string/jumbo v9, "cancelTitle"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 157
    .end local v5    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 158
    const-string/jumbo v6, ""

    .line 160
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lc8/Vdg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v9}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v8, "OK"

    .line 164
    .local v8, "okTitleFinal":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v3, "Cancel"

    .line 166
    .local v3, "cancelTitleFinal":Ljava/lang/String;
    :goto_2
    new-instance v9, Lc8/Qdg;

    invoke-direct {v9, p0, p2, v8}, Lc8/Qdg;-><init>(Lc8/Vdg;Lc8/EWf;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    new-instance v9, Lc8/Rdg;

    invoke-direct {v9, p0, p2, v3}, Lc8/Rdg;-><init>(Lc8/Vdg;Lc8/EWf;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 183
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 185
    invoke-direct {p0, v0}, Lc8/Vdg;->tracking(Landroid/app/Dialog;)V

    .line 189
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancelTitle":Ljava/lang/String;
    .end local v3    # "cancelTitleFinal":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "okTitle":Ljava/lang/String;
    .end local v8    # "okTitleFinal":Ljava/lang/String;
    :goto_3
    return-void

    .line 153
    .restart local v2    # "cancelTitle":Ljava/lang/String;
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v7    # "okTitle":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 154
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "[WXModalUIModule] confirm param parse error "

    invoke-static {v9, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    move-object v8, v7

    .line 163
    goto :goto_1

    .restart local v8    # "okTitleFinal":Ljava/lang/String;
    :cond_3
    move-object v3, v2

    .line 164
    goto :goto_2

    .line 187
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancelTitle":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "okTitle":Ljava/lang/String;
    .end local v8    # "okTitleFinal":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "[WXModalUIModule] when call confirm mWXSDKInstance.getContext() must instanceof Activity"

    invoke-static {v9}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lc8/Vdg;->activeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Vdg;->activeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string/jumbo v0, "Dismiss the active dialog"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lc8/Vdg;->activeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 270
    :cond_0
    return-void
.end method

.method public prompt(Ljava/lang/String;Lc8/EWf;)V
    .locals 13
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
        uiThread = true
    .end annotation

    .prologue
    .line 193
    iget-object v11, p0, Lc8/Vdg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v11}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v11

    instance-of v11, v11, Landroid/app/Activity;

    if-eqz v11, :cond_4

    .line 194
    const-string/jumbo v8, ""

    .line 195
    .local v8, "message":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 196
    .local v4, "defaultValue":Ljava/lang/String;
    const-string/jumbo v9, "OK"

    .line 197
    .local v9, "okTitle":Ljava/lang/String;
    const-string/jumbo v2, "Cancel"

    .line 199
    .local v2, "cancelTitle":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 201
    :try_start_0
    const-string/jumbo v11, "utf-8"

    invoke-static {p1, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 203
    .local v7, "jsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "message"

    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 204
    const-string/jumbo v11, "okTitle"

    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 205
    const-string/jumbo v11, "cancelTitle"

    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string/jumbo v11, "default"

    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 212
    .end local v7    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 213
    const-string/jumbo v8, ""

    .line 215
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lc8/Vdg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v11}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    new-instance v6, Landroid/widget/EditText;

    iget-object v11, p0, Lc8/Vdg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v11}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 219
    .local v6, "editText":Landroid/widget/EditText;
    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v10, "OK"

    .line 222
    .local v10, "okTitleFinal":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v3, "Cancel"

    .line 223
    .local v3, "cancelTitleFinal":Ljava/lang/String;
    :goto_2
    new-instance v11, Lc8/Tdg;

    invoke-direct {v11, p0, p2, v10, v6}, Lc8/Tdg;-><init>(Lc8/Vdg;Lc8/EWf;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lc8/Sdg;

    invoke-direct {v12, p0, p2, v3, v6}, Lc8/Sdg;-><init>(Lc8/Vdg;Lc8/EWf;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v11, v3, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 246
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 248
    invoke-direct {p0, v0}, Lc8/Vdg;->tracking(Landroid/app/Dialog;)V

    .line 252
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancelTitle":Ljava/lang/String;
    .end local v3    # "cancelTitleFinal":Ljava/lang/String;
    .end local v4    # "defaultValue":Ljava/lang/String;
    .end local v6    # "editText":Landroid/widget/EditText;
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "okTitle":Ljava/lang/String;
    .end local v10    # "okTitleFinal":Ljava/lang/String;
    :goto_3
    return-void

    .line 207
    .restart local v2    # "cancelTitle":Ljava/lang/String;
    .restart local v4    # "defaultValue":Ljava/lang/String;
    .restart local v8    # "message":Ljava/lang/String;
    .restart local v9    # "okTitle":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 208
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "[WXModalUIModule] confirm param parse error "

    invoke-static {v11, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v6    # "editText":Landroid/widget/EditText;
    :cond_2
    move-object v10, v9

    .line 221
    goto :goto_1

    .restart local v10    # "okTitleFinal":Ljava/lang/String;
    :cond_3
    move-object v3, v2

    .line 222
    goto :goto_2

    .line 250
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancelTitle":Ljava/lang/String;
    .end local v4    # "defaultValue":Ljava/lang/String;
    .end local v6    # "editText":Landroid/widget/EditText;
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "okTitle":Ljava/lang/String;
    .end local v10    # "okTitleFinal":Ljava/lang/String;
    :cond_4
    const-string/jumbo v11, "when call prompt mWXSDKInstance.getContext() must instanceof Activity"

    invoke-static {v11}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public toast(Ljava/lang/String;)V
    .locals 7
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = true
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 65
    const-string/jumbo v3, ""

    .line 66
    .local v3, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 67
    .local v0, "duration":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    :try_start_0
    const-string/jumbo v4, "utf-8"

    invoke-static {p1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 71
    .local v2, "jsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "message"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    const-string/jumbo v4, "duration"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    .end local v2    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const-string/jumbo v4, "[WXModalUIModule] toast param parse is null "

    invoke-static {v4}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 95
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXModalUIModule] alert param parse error "

    invoke-static {v4, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x3

    if-le v0, v4, :cond_2

    .line 83
    const/4 v0, 0x1

    .line 87
    :goto_2
    iget-object v4, p0, Lc8/Vdg;->toast:Landroid/widget/Toast;

    if-nez v4, :cond_3

    .line 88
    iget-object v4, p0, Lc8/Vdg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lc8/Vdg;->toast:Landroid/widget/Toast;

    .line 93
    :goto_3
    iget-object v4, p0, Lc8/Vdg;->toast:Landroid/widget/Toast;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 94
    iget-object v4, p0, Lc8/Vdg;->toast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 85
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 90
    :cond_3
    iget-object v4, p0, Lc8/Vdg;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 91
    iget-object v4, p0, Lc8/Vdg;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
