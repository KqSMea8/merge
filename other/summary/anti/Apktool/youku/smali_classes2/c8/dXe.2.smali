.class public final Lc8/dXe;
.super Ljava/lang/Object;
.source "AliyunRegister.java"


# static fields
.field static final PREFERENCES:Ljava/lang/String; = "Agoo_AppStore"

.field protected static final TAG:Ljava/lang/String; = "AliyunRegister"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static clickMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 122
    :try_start_0
    sget-object v6, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v6}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    const-string/jumbo v6, "AliyunRegister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clickMessage,messageId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_0
    const-string/jumbo v4, "accs"

    .line 126
    .local v4, "source":Ljava/lang/String;
    const-string/jumbo v2, "8"

    .line 127
    .local v2, "msgStatus":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    const-string/jumbo v6, "AliyunRegister"

    const-string/jumbo v7, "messageId == null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .end local v2    # "msgStatus":Ljava/lang/String;
    .end local v4    # "source":Ljava/lang/String;
    :goto_0
    return-void

    .line 131
    .restart local v2    # "msgStatus":Ljava/lang/String;
    .restart local v4    # "source":Ljava/lang/String;
    :cond_1
    new-instance v3, Lc8/UWp;

    invoke-direct {v3}, Lc8/UWp;-><init>()V

    .line 132
    .local v3, "notifyManager":Lc8/UWp;
    invoke-virtual {v3, p0}, Lc8/UWp;->init(Landroid/content/Context;)V

    .line 133
    new-instance v0, Lc8/QWp;

    invoke-direct {v0}, Lc8/QWp;-><init>()V

    .line 134
    .local v0, "agooFactory":Lc8/QWp;
    const/4 v6, 0x0

    invoke-virtual {v0, p0, v3, v6}, Lc8/QWp;->init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V

    .line 136
    const-string/jumbo v6, "8"

    invoke-virtual {v0, p1, v6}, Lc8/QWp;->updateNotifyMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Lc8/DWp;

    invoke-direct {v1}, Lc8/DWp;-><init>()V

    .line 138
    .local v1, "msg":Lc8/DWp;
    iput-object p1, v1, Lc8/DWp;->msgIds:Ljava/lang/String;

    .line 139
    iput-object v4, v1, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 140
    iput-object v2, v1, Lc8/DWp;->msgStatus:Ljava/lang/String;

    .line 141
    invoke-virtual {v3, v1}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0    # "agooFactory":Lc8/QWp;
    .end local v1    # "msg":Lc8/DWp;
    .end local v2    # "msgStatus":Ljava/lang/String;
    .end local v3    # "notifyManager":Lc8/UWp;
    .end local v4    # "source":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 143
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "AliyunRegister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clickMessage,error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static dismissMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 155
    :try_start_0
    sget-object v6, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v6}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    const-string/jumbo v6, "AliyunRegister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clickMessage,messageId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_0
    const-string/jumbo v4, "accs"

    .line 159
    .local v4, "source":Ljava/lang/String;
    const-string/jumbo v2, "9"

    .line 160
    .local v2, "msgStatus":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    const-string/jumbo v6, "AliyunRegister"

    const-string/jumbo v7, "messageId == null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .end local v2    # "msgStatus":Ljava/lang/String;
    .end local v4    # "source":Ljava/lang/String;
    :goto_0
    return-void

    .line 165
    .restart local v2    # "msgStatus":Ljava/lang/String;
    .restart local v4    # "source":Ljava/lang/String;
    :cond_1
    new-instance v3, Lc8/UWp;

    invoke-direct {v3}, Lc8/UWp;-><init>()V

    .line 166
    .local v3, "notifyManager":Lc8/UWp;
    invoke-virtual {v3, p0}, Lc8/UWp;->init(Landroid/content/Context;)V

    .line 167
    new-instance v0, Lc8/QWp;

    invoke-direct {v0}, Lc8/QWp;-><init>()V

    .line 168
    .local v0, "agooFactory":Lc8/QWp;
    const/4 v6, 0x0

    invoke-virtual {v0, p0, v3, v6}, Lc8/QWp;->init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V

    .line 170
    const-string/jumbo v6, "9"

    invoke-virtual {v0, p1, v6}, Lc8/QWp;->updateNotifyMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v1, Lc8/DWp;

    invoke-direct {v1}, Lc8/DWp;-><init>()V

    .line 172
    .local v1, "msg":Lc8/DWp;
    iput-object p1, v1, Lc8/DWp;->msgIds:Ljava/lang/String;

    .line 173
    iput-object v4, v1, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 174
    iput-object v2, v1, Lc8/DWp;->msgStatus:Ljava/lang/String;

    .line 175
    invoke-virtual {v3, v1}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v0    # "agooFactory":Lc8/QWp;
    .end local v1    # "msg":Lc8/DWp;
    .end local v2    # "msgStatus":Ljava/lang/String;
    .end local v3    # "notifyManager":Lc8/UWp;
    .end local v4    # "source":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 177
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "AliyunRegister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clickMessage,error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/IAliyunAppReceiver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appCallback"    # Lcom/taobao/accs/IAliyunAppReceiver;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, p1, v0, p2}, Lc8/dXe;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAliyunAppReceiver;)V

    .line 40
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAliyunAppReceiver;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configTag"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;
    .param p4, "appCallback"    # Lcom/taobao/accs/IAliyunAppReceiver;

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :catch_0
    move-exception v0

    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "appkey==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    invoke-static {p0, p2}, Lc8/BWp;->setAgooAppKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    sput-object p3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mAgooAppSecret:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "AliyunRegister"

    const-string/jumbo v1, "aliyun register"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "appkey"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {p0, p2, p1}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    const-string/jumbo v4, "aliyun"

    new-instance v5, Lc8/cXe;

    invoke-direct {v5, p4}, Lc8/cXe;-><init>(Lcom/taobao/accs/IAliyunAppReceiver;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/IACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static switchDaily(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/taobao/accs/ACCSManager;->setMode(Landroid/content/Context;I)V

    .line 183
    return-void
.end method

.method public static switchPreview(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/taobao/accs/ACCSManager;->setMode(Landroid/content/Context;I)V

    .line 187
    return-void
.end method

.method public static switchRelease(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/accs/ACCSManager;->setMode(Landroid/content/Context;I)V

    .line 191
    return-void
.end method
