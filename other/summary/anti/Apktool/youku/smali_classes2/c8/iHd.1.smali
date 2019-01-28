.class public abstract Lc8/iHd;
.super Ljava/lang/Object;
.source "AbstractMessageHandler.java"

# interfaces
.implements Lc8/fHd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/fHd;"
    }
.end annotation


# static fields
.field public static final MESSAGE_TYPE_NOTIFICATION_CLICK:I = 0x40

.field public static final MESSAGE_TYPE_NOTIFICATION_DELETE:I = 0x80

.field public static final MESSAGE_TYPE_NOTIFICATION_STATE:I = 0x8000

.field public static final MESSAGE_TYPE_PUSH_REGISTER_STATUS:I = 0x200

.field public static final MESSAGE_TYPE_PUSH_SERVICE_V2:I = 0x2

.field public static final MESSAGE_TYPE_PUSH_SERVICE_V3:I = 0x4

.field public static final MESSAGE_TYPE_PUSH_SUBALIAS_STATUS:I = 0x1000

.field public static final MESSAGE_TYPE_PUSH_SUBTAGS_STATUS:I = 0x800

.field public static final MESSAGE_TYPE_PUSH_SWITCH_STATUS:I = 0x100

.field public static final MESSAGE_TYPE_PUSH_UNREGISTER_STATUS:I = 0x400

.field public static final MESSAGE_TYPE_RECEIVE_NOTIFY_MESSAGE:I = 0x4000

.field public static final MESSAGE_TYPE_REGISTER:I = 0x10

.field public static final MESSAGE_TYPE_SCHEDULE_NOTIFICATION:I = 0x2000

.field public static final MESSAGE_TYPE_THROUGH:I = 0x8

.field public static final MESSAGE_TYPE_UNREGISTER:I = 0x20

.field public static final MESSAGE_TYPE_UPLOAD_FILE_LOG:I = 0x10000

.field public static final SCHEDULE_OFF:I = 0x0

.field public static final SCHEDULE_ON_DELAY:I = 0x3

.field public static final SCHEDULE_ON_EXPIRE:I = 0x1

.field public static final SCHEDULE_ON_TIME:I = 0x2


# instance fields
.field private abstractAppLogicListener:Lc8/dHd;

.field private context:Landroid/content/Context;

.field private messageHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/iHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lc8/dHd;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abstractAppLogicListener"    # Lc8/dHd;

    .prologue
    .line 58
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/iHd;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lc8/iHd;->abstractAppLogicListener:Lc8/dHd;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    .line 65
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_PUSH_SERVICE_V2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_PUSH_SERVICE_V3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_REGISTER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_UNREGISTER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_THROUGH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_NOTIFICATION_CLICK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_NOTIFICATION_DELETE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_PUSH_SWITCH_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_PUSH_REGISTER_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_PUSH_SUBTAGS_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_PUSH_UNREGISTER_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_PUSH_SUBALIAS_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_SCHEDULE_NOTIFICATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_RECEIVE_NOTIFY_MESSAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_NOTIFICATION_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_TYPE_UPLOAD_FILE_LOG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method private getMessageHandlerType(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 280
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    iget-object v0, p0, Lc8/iHd;->messageHandlerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public appLogicListener()Lc8/dHd;
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    iget-object v0, p0, Lc8/iHd;->abstractAppLogicListener:Lc8/dHd;

    return-object v0
.end method

.method protected canReceiveMessage(ILjava/lang/String;)Z
    .locals 4
    .param p1, "pushType"    # I
    .param p2, "destPackageName"    # Ljava/lang/String;

    .prologue
    .line 284
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const/4 v0, 0x1

    .line 285
    .local v0, "flag":Z
    if-nez p1, :cond_1

    .line 286
    invoke-virtual {p0}, Lc8/iHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lc8/ELd;->getNotificationMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 290
    :cond_0
    :goto_0
    const-string/jumbo v2, "AbstractMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_2

    const-string/jumbo v1, " canNotificationMessage "

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return v0

    .line 287
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lc8/iHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lc8/ELd;->getThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 290
    :cond_2
    const-string/jumbo v1, " canThroughMessage "

    goto :goto_1
.end method

.method protected canSendMessage(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method

.method public context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    iget-object v0, p0, Lc8/iHd;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeskTopNotificationPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "deskTopNotificationJson"    # Ljava/lang/String;

    .prologue
    .line 249
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const-string/jumbo v2, ""

    .line 251
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "deskTopNotificationJsonObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "launcher"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 253
    .local v1, "launcherObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 259
    .end local v0    # "deskTopNotificationJsonObj":Lorg/json/JSONObject;
    .end local v1    # "launcherObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 257
    :catch_0
    move-exception v3

    const-string/jumbo v3, "AbstractMessageHandler"

    const-string/jumbo v4, "parse desk top json error"

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getDeviceId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const/4 v0, 0x0

    .line 136
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 137
    const-string/jumbo v1, "statistics_imei_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lc8/iHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/DLd;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "AbstractMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "force get deviceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_1
    return-object v0
.end method

.method public getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const-string/jumbo v0, "method"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation
.end method

.method protected getPushServiceDefaultPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const-string/jumbo v1, "extra_app_push_service_default_package_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "defaultPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lc8/iHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    return-object v0
.end method

.method protected getPushTimestamp(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const-string/jumbo v1, "extra_app_push_task_timestamp"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "pushTimestamp":Ljava/lang/String;
    const-string/jumbo v1, "AbstractMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive push timestamp from pushservice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    return-object v0
.end method

.method protected getSeqId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const-string/jumbo v0, "extra_app_push_seq_Id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTaskId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const-string/jumbo v0, "extra_app_push_task_Id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotificationJson(Ljava/lang/String;)Z
    .locals 3
    .param p1, "notificationJson"    # Ljava/lang/String;

    .prologue
    .line 236
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "pushMessageObj":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lc8/iHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "appId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    .end local v0    # "pushMessageObj":Lorg/json/JSONObject;
    :goto_0
    return v1

    .line 240
    :catch_0
    move-exception v1

    const-string/jumbo v1, "AbstractMessageHandler"

    const-string/jumbo v2, "parse notification error"

    invoke-static {v1, v2}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAfterEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    .local p1, "Message":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected onBeforeEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected onCreateNotification(Ljava/lang/Object;)Lc8/WJd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/WJd;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected scheduleNotificationStatus(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method protected scheduleShowNotification(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public selfDefineContentString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 267
    .local v0, "selfJson":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    move-object v0, p1

    .line 275
    :cond_0
    :goto_0
    const-string/jumbo v1, "AbstractMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "self json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-object v0

    .line 269
    :cond_1
    if-eqz p2, :cond_0

    .line 270
    const-string/jumbo v1, "sk"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selfJson":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 271
    .restart local v0    # "selfJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-static {p2}, Lc8/ALd;->mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendMessage(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    .local p0, "this":Lc8/iHd;, "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler<TT;>;"
    const/4 v1, 0x0

    .line 175
    .local v1, "flag":Z
    invoke-virtual {p0, p1}, Lc8/iHd;->messageMatch(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    const-string/jumbo v4, "AbstractMessageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current message Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lc8/iHd;->getProcessorType()I

    move-result v6

    invoke-direct {p0, v6}, Lc8/iHd;->getMessageHandlerType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1}, Lc8/iHd;->getMessage(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    .local v3, "message":Ljava/lang/Object;, "TT;"
    const-string/jumbo v4, "AbstractMessageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current Handler message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v3}, Lc8/iHd;->onBeforeEvent(Ljava/lang/Object;)V

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "isCustomSend":Z
    invoke-virtual {p0, v3}, Lc8/iHd;->scheduleNotificationStatus(Ljava/lang/Object;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 203
    :goto_0
    invoke-virtual {p0, v3}, Lc8/iHd;->canSendMessage(Ljava/lang/Object;)Z

    move-result v0

    .line 204
    .local v0, "canSend":Z
    const-string/jumbo v4, "AbstractMessageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "can send message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, v3}, Lc8/iHd;->onCreateNotification(Ljava/lang/Object;)Lc8/WJd;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lc8/iHd;->unsafeSend(Ljava/lang/Object;Lc8/WJd;)V

    .line 207
    invoke-virtual {p0, v3}, Lc8/iHd;->onAfterEvent(Ljava/lang/Object;)V

    .line 208
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "send message end "

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v0    # "canSend":Z
    .end local v2    # "isCustomSend":Z
    .end local v3    # "message":Ljava/lang/Object;, "TT;"
    :cond_0
    return v1

    .line 184
    .restart local v2    # "isCustomSend":Z
    .restart local v3    # "message":Ljava/lang/Object;, "TT;"
    :pswitch_0
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "schedule send message off, send message directly"

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v2, 0x1

    .line 186
    const/4 v1, 0x1

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "expire notification, dont show message"

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    .line 191
    goto :goto_0

    .line 193
    :pswitch_2
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "notification on time ,show message"

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x1

    .line 195
    const/4 v1, 0x1

    .line 196
    goto :goto_0

    .line 198
    :pswitch_3
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "schedule notification"

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v3}, Lc8/iHd;->scheduleShowNotification(Ljava/lang/Object;)V

    .line 200
    const/4 v1, 0x1

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract unsafeSend(Ljava/lang/Object;Lc8/WJd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/WJd;",
            ")V"
        }
    .end annotation
.end method
