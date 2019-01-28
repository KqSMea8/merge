.class public Lc8/Ehn;
.super Ljava/lang/Object;
.source "WakeUpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dhn;
    }
.end annotation


# static fields
.field private static final CHECK_CLASS:Ljava/lang/String; = "CC"

.field private static final CHECK_PROCESS:Ljava/lang/String; = "CP"

.field private static final INTENT_TYPE:Ljava/lang/String; = "IT"

.field private static final TAG:Ljava/lang/String; = "WakeUp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lc8/Ehn;->isRunning(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lc8/Ehn;->startIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$200(ZZ)I
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-static {p0, p1}, Lc8/Ehn;->getStatus(ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lc8/Ehn;->sendPushServiceUTFeedback(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static cmsWakeUpJsonText(Ljava/lang/String;)V
    .locals 9
    .param p0, "jsonText"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {p0}, Lc8/Ehn;->preProcessJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    :try_start_0
    const-class v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-static {p0, v6}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 67
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONArray;>;"
    if-eqz v4, :cond_0

    .line 70
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 71
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v2, 0x0

    .line 72
    .local v2, "isInstalled":Z
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 73
    .local v5, "obj":Ljava/lang/Object;
    const-class v8, Lcom/youku/service/push/WakeUpItem;

    invoke-static {v5, v8}, Lc8/RJb;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/service/push/WakeUpItem;

    .line 74
    .local v3, "item":Lcom/youku/service/push/WakeUpItem;
    invoke-static {v3}, Lc8/Ehn;->wakeUpFriend(Lcom/youku/service/push/WakeUpItem;)Z
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    or-int/2addr v2, v8

    .line 75
    goto :goto_2

    .line 76
    .end local v3    # "item":Lcom/youku/service/push/WakeUpItem;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_2
    if-nez v2, :cond_0

    goto :goto_1

    .line 79
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "isInstalled":Z
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONArray;>;"
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static cmsWakeUpNetwork()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method private static generateIntent(Lcom/youku/service/push/WakeUpItem;)Landroid/content/Intent;
    .locals 9
    .param p0, "item"    # Lcom/youku/service/push/WakeUpItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 111
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->action:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 114
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :cond_0
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->className:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 117
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/service/push/WakeUpItem;->className:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :cond_1
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->extra:Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 120
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->extra:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 121
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 124
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->extraInt:Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 125
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->extraInt:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 126
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 129
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->extraBoolean:Ljava/util/Map;

    if-eqz v6, :cond_4

    .line 130
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->extraBoolean:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 131
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 135
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_4
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->checkClass:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 136
    const-string/jumbo v6, "CC"

    iget-object v7, p0, Lcom/youku/service/push/WakeUpItem;->checkClass:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_5
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->checkProcess:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 140
    const-string/jumbo v6, "CP"

    iget-object v7, p0, Lcom/youku/service/push/WakeUpItem;->checkProcess:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :cond_6
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->flags:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 143
    const/4 v4, 0x0

    .line 145
    .local v4, "flags":I
    :try_start_0
    iget-object v6, p0, Lcom/youku/service/push/WakeUpItem;->flags:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 149
    :goto_3
    if-eqz v4, :cond_7

    .line 150
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    .end local v4    # "flags":I
    :cond_7
    const-string/jumbo v6, "IT"

    iget v7, p0, Lcom/youku/service/push/WakeUpItem;->type:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    return-object v5

    .line 146
    .restart local v4    # "flags":I
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    goto :goto_3
.end method

.method private static getRepeatIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    const-class v2, Lc8/zhn;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "local":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.phone.wakeup.cms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string/jumbo v1, "OI"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getStatus(ZZ)I
    .locals 1
    .param p0, "beforeRunning"    # Z
    .param p1, "afterRunning"    # Z

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    .line 392
    :cond_0
    if-eqz p0, :cond_1

    .line 393
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lc8/Ehn;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isProcessRunning(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "exactly"    # Z

    .prologue
    const/4 v6, 0x0

    .line 315
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v6

    .line 348
    :cond_1
    :goto_0
    return v2

    .line 319
    :cond_2
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-ge v7, v8, :cond_3

    .line 320
    invoke-static {p1, p2}, Lc8/Ehn;->isProcessRunningCommand(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isProcessRunning "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    .line 326
    .local v2, "isRunning":Z
    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 327
    .local v5, "manager":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v5, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 328
    .local v3, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    move v2, v6

    .line 329
    goto :goto_0

    .line 331
    :cond_5
    if-eqz p2, :cond_7

    .line 332
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 333
    .local v1, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 334
    .local v4, "mName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 335
    const/4 v2, 0x1

    .line 336
    goto :goto_0

    .line 340
    .end local v1    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v4    # "mName":Ljava/lang/String;
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 341
    .restart local v1    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 342
    .restart local v4    # "mName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 343
    const/4 v2, 0x1

    .line 344
    goto :goto_0
.end method

.method private static isProcessRunningCommand(Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "exactly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 355
    const/4 v3, 0x0

    .line 357
    .local v3, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v8, Ljava/lang/ProcessBuilder;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "ps"

    aput-object v11, v9, v10

    .line 358
    invoke-virtual {v8, v9}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v8

    const/4 v9, 0x1

    .line 359
    invoke-virtual {v8, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v8

    .line 360
    invoke-virtual {v8}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 362
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 363
    .local v5, "stdInput":Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "^(u\\d+_a\\d+)\\s+(\\d+)\\s+(\\d+).+("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\\."

    const-string/jumbo v10, "\\\\."

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "reg":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 365
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 370
    .local v2, "pattern":Ljava/util/regex/Pattern;
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 371
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 372
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 377
    if-eqz v3, :cond_2

    .line 378
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 381
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_2
    :goto_0
    return v6

    .line 377
    :cond_3
    if-eqz v3, :cond_4

    .line 378
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_4
    move v6, v7

    .line 381
    goto :goto_0

    .line 377
    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "reg":Ljava/lang/String;
    .end local v5    # "stdInput":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_5

    .line 378
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_5
    throw v6
.end method

.method private static isRunning(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 274
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    .line 276
    :cond_1
    if-nez p2, :cond_2

    .line 277
    invoke-static {p0, p1}, Lc8/Ehn;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 279
    :cond_2
    invoke-static {p0, p2}, Lc8/Ehn;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 291
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v5

    .line 306
    :cond_1
    :goto_0
    return v1

    .line 293
    :cond_2
    const/4 v1, 0x0

    .line 294
    .local v1, "isRunning":Z
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 295
    .local v4, "manager":Landroid/app/ActivityManager;
    const v6, 0x7fffffff

    invoke-virtual {v4, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 296
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v1, v5

    .line 297
    goto :goto_0

    .line 299
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 300
    .local v0, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "mName":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 302
    const/4 v1, 0x1

    .line 303
    goto :goto_0
.end method

.method static postWakedInfo(Ljava/lang/String;Z)V
    .locals 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "isActive"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 403
    new-instance v3, Lc8/RIj;

    invoke-direct {v3}, Lc8/RIj;-><init>()V

    new-instance v4, Lcom/youku/network/HttpIntent;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lc8/lSh;->getWakeUpUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "POST"

    invoke-direct {v4, v0, v5, v6, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4, v7}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 404
    if-eqz p1, :cond_1

    :goto_1
    invoke-static {p0, v6, v7, v1}, Lc8/Ehn;->sendPushServiceUTFeedback(Ljava/lang/String;ILjava/lang/String;I)V

    .line 405
    return-void

    :cond_0
    move v0, v2

    .line 403
    goto :goto_0

    :cond_1
    move v1, v2

    .line 404
    goto :goto_1
.end method

.method private static preProcessJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "oriJson"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string/jumbo v0, "Youku\\.GUID"

    sget-object v1, Lc8/VLj;->GUID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static processWakeUp(Landroid/content/Context;Landroid/content/Intent;J)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "waitTime"    # J

    .prologue
    .line 173
    const-string/jumbo v1, "IT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 174
    .local v9, "type":I
    if-nez v9, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 248
    :goto_0
    return v1

    .line 177
    :cond_0
    const-string/jumbo v1, "IT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 180
    .local v10, "mComponent":Landroid/content/ComponentName;
    const-string/jumbo v1, "CC"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v1, "CP"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "checkProcess":Ljava/lang/String;
    const-string/jumbo v1, "CC"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v1, "CP"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 184
    if-nez v10, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 187
    const/4 v1, 0x0

    goto :goto_0

    .line 189
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 190
    .restart local v4    # "packageName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 191
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_2
    move-object v7, v0

    .line 194
    .local v7, "checkName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5c1d\u8bd5\u5524\u8d77 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 197
    new-instance v11, Ljava/lang/Thread;

    new-instance v1, Lc8/Chn;

    move-wide v2, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v9}, Lc8/Chn;-><init>(JLjava/lang/String;Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v1, 0x1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u672a\u5b89\u88c5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sendPushServiceUTFeedback(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .param p0, "appname"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "unionname"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    .line 419
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 420
    .local v5, "aHitMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "push"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "pushservice"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string/jumbo v0, "appname"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v0, "type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    const-string/jumbo v0, "unionname"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_0
    const-string/jumbo v0, "status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v0, ""

    const/16 v1, 0x2ef5

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 429
    return-void
.end method

.method private static startIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # I

    .prologue
    .line 260
    packed-switch p2, :pswitch_data_0

    .line 271
    :goto_0
    return-void

    .line 262
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 268
    :pswitch_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static startPushWithStats(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    return-void
.end method

.method private static validateItem(Lcom/youku/service/push/WakeUpItem;)Z
    .locals 1
    .param p0, "item"    # Lcom/youku/service/push/WakeUpItem;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/youku/service/push/WakeUpItem;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static wakeUpFriend(Lcom/youku/service/push/WakeUpItem;)Z
    .locals 9
    .param p0, "item"    # Lcom/youku/service/push/WakeUpItem;

    .prologue
    .line 89
    if-eqz p0, :cond_0

    invoke-static {p0}, Lc8/Ehn;->validateItem(Lcom/youku/service/push/WakeUpItem;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    :cond_0
    const/4 v8, 0x0

    .line 101
    :cond_1
    :goto_0
    return v8

    .line 91
    :cond_2
    invoke-static {p0}, Lc8/Ehn;->generateIntent(Lcom/youku/service/push/WakeUpItem;)Landroid/content/Intent;

    move-result-object v7

    .line 92
    .local v7, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    iget v2, p0, Lcom/youku/service/push/WakeUpItem;->delay:I

    int-to-long v2, v2

    invoke-static {v1, v7, v2, v3}, Lc8/Ehn;->processWakeUp(Landroid/content/Context;Landroid/content/Intent;J)Z

    move-result v8

    .line 93
    .local v8, "isInstalled":Z
    if-eqz v8, :cond_1

    iget v1, p0, Lcom/youku/service/push/WakeUpItem;->interval:I

    if-eqz v1, :cond_1

    .line 94
    iget v1, p0, Lcom/youku/service/push/WakeUpItem;->interval:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    .line 95
    .local v4, "WAKE_UP_INTERVAL":J
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/yAg;->checkIsXiaomiDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 97
    .local v0, "manager":Landroid/app/AlarmManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set AlarmManager to Wake up ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/service/push/WakeUpItem;->interval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-static {v7}, Lc8/Ehn;->getRepeatIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static wakeUpMiPush()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    return-void
.end method
