.class public Lc8/HXo;
.super Lc8/MXf;
.source "YouKuNavigatorModule.java"


# static fields
.field public static final ACTION_CANCAL_BACK:Ljava/lang/String; = "action_cancel_back"

.field private static final KEY_ANDROID:Ljava/lang/String; = "android"

.field private static final KEY_SHARE_RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "PWNavigatorModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 112
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v2, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getUIContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 108
    goto :goto_0

    .line 111
    :cond_1
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 112
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 114
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "PWNavigatorModule.mWXSDKInstance.getUiContext is not Activity"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseJsonToIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "result"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    :cond_0
    return-object v0

    .line 158
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 159
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public cancelBack()V
    .locals 3
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_cancel_back"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 148
    return-void
.end method

.method public closeCurrentPage()V
    .locals 1
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lc8/HXo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 123
    :cond_0
    return-void
.end method

.method public closeCurrentPage(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lc8/HXo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lc8/HXo;->setResult(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 134
    :cond_1
    return-void
.end method

.method public isAppInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 170
    .local v2, "isInstalled":Z
    :try_start_0
    invoke-static {p1}, Lc8/ZXo;->parseParamStrToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 171
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lc8/YXo;

    invoke-direct {v6, v3}, Lc8/YXo;-><init>(Lorg/json/JSONObject;)V

    .line 173
    .local v6, "paramBuilder":Lc8/YXo;
    const-string/jumbo v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lc8/YXo;->getParamString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v10}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 175
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    .line 176
    .local v7, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v7, :cond_0

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 178
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v8, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 179
    .local v8, "pn":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    .line 180
    const/4 v2, 0x1

    .line 189
    .end local v1    # "i":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "paramBuilder":Lc8/YXo;
    .end local v7    # "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "pn":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v9, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v10, "result"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v10

    iget-object v11, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v11}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2, v9}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    return-void

    .line 177
    .end local v9    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "i":I
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "paramBuilder":Lc8/YXo;
    .restart local v7    # "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "pn":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "paramBuilder":Lc8/YXo;
    .end local v7    # "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "pn":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public navigate(Ljava/lang/String;)V
    .locals 1
    .param p1, "schemeURL"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/HXo;->navigateForResult(Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public navigateForResult(Ljava/lang/String;I)V
    .locals 4
    .param p1, "schemeURL"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lc8/HXo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 88
    invoke-static {v0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v2

    .line 89
    .local v2, "nav":Lc8/Ybf;
    if-eqz p2, :cond_2

    .line 90
    invoke-virtual {v2, p2}, Lc8/Ybf;->forResult(I)Lc8/Ybf;

    .line 92
    :cond_2
    invoke-virtual {v2, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "nav":Lc8/Ybf;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lc8/MXf;->onActivityResult(IILandroid/content/Intent;)V

    .line 50
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 51
    const/4 v3, 0x0

    .line 57
    .local v3, "weexResultCode":I
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "requestCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v4, "resultCode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 61
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 63
    .local v2, "serializableExtra":Ljava/io/Serializable;
    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    .end local v0    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "serializableExtra":Ljava/io/Serializable;
    .end local v3    # "weexResultCode":I
    :cond_1
    if-nez p2, :cond_2

    .line 53
    const/4 v3, -0x1

    .restart local v3    # "weexResultCode":I
    goto :goto_0

    .line 55
    .end local v3    # "weexResultCode":I
    :cond_2
    move v3, p2

    .restart local v3    # "weexResultCode":I
    goto :goto_0

    .line 69
    .restart local v0    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v4, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    if-eqz v4, :cond_4

    .line 70
    iget-object v4, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    iget-object v5, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v5}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v5

    invoke-virtual {v5}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "navigateResult"

    invoke-virtual {v4, v5, v6, v0}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    :cond_4
    return-void
.end method

.method public openApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "schemaUrl"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 198
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 202
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v2

    iget-object v3, p0, Lc8/HXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, p2, v4}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lc8/HXo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lc8/HXo;->parseJsonToIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 142
    :cond_0
    return-void
.end method
