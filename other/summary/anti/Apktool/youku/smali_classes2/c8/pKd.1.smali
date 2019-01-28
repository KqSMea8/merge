.class public Lc8/pKd;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static mFlymeNotification:Ljava/lang/reflect/Field;

.field private static mInternalApp:Ljava/lang/reflect/Field;

.field private static mReplyIntent:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 16
    sput-object v2, Lc8/pKd;->mFlymeNotification:Ljava/lang/reflect/Field;

    .line 17
    sput-object v2, Lc8/pKd;->mInternalApp:Ljava/lang/reflect/Field;

    .line 22
    :try_start_0
    const-class v2, Landroid/app/Notification;

    const-string/jumbo v3, "mFlymeNotification"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lc8/pKd;->mFlymeNotification:Ljava/lang/reflect/Field;

    .line 23
    const-string/jumbo v2, "android.app.NotificationExt"

    invoke-static {v2}, Lc8/pKd;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, "NotificationExt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "internalApp"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 25
    sput-object v2, Lc8/pKd;->mInternalApp:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    const-class v2, Landroid/app/Notification;

    const-string/jumbo v3, "replyIntent"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 27
    sput-object v2, Lc8/pKd;->mReplyIntent:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "NotificationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init NotificationUtils error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static setInternalApp(Landroid/app/Notification;Z)V
    .locals 5
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "internalApp"    # Z

    .prologue
    .line 46
    sget-object v2, Lc8/pKd;->mFlymeNotification:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    sget-object v2, Lc8/pKd;->mInternalApp:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    sget-object v2, Lc8/pKd;->mFlymeNotification:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "flymeNotification":Ljava/lang/Object;
    sget-object v3, Lc8/pKd;->mInternalApp:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "flymeNotification":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 49
    .restart local v1    # "flymeNotification":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 50
    .end local v1    # "flymeNotification":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "NotificationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInternalApp error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setReplyIntent(Landroid/app/Notification;Landroid/app/PendingIntent;)V
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 36
    sget-object v1, Lc8/pKd;->mReplyIntent:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 38
    :try_start_0
    sget-object v1, Lc8/pKd;->mReplyIntent:Ljava/lang/reflect/Field;

    invoke-static {v1, p0, p1}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v1, "NotificationUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setReplyIntent error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
