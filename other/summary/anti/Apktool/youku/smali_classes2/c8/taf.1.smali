.class public Lc8/taf;
.super Ljava/lang/Object;
.source "DinamicLog.java"


# static fields
.field private static logger:Lc8/uaf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
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

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p1}, Lc8/taf;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    if-eqz v1, :cond_0

    .line 42
    :try_start_0
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    invoke-interface {v1, p0, v0}, Lc8/uaf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    sget-object v0, Lc8/taf;->logger:Lc8/uaf;

    if-eqz v0, :cond_1

    .line 126
    :try_start_0
    sget-object v0, Lc8/taf;->logger:Lc8/uaf;

    invoke-interface {v0, p0, p1, p2}, Lc8/uaf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_0
    invoke-static {p1}, Lc8/taf;->showToast(Ljava/lang/String;)V

    .line 138
    return-void

    .line 128
    :catch_0
    move-exception v0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "content"    # [Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p2}, Lc8/taf;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    if-eqz v1, :cond_1

    .line 109
    :try_start_0
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    invoke-interface {v1, p0, v0, p1}, Lc8/uaf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    invoke-static {v0}, Lc8/taf;->showToast(Ljava/lang/String;)V

    .line 121
    return-void

    .line 111
    :catch_0
    move-exception v1

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Lc8/taf;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    invoke-interface {v1, p0, v0}, Lc8/uaf;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    invoke-static {v0}, Lc8/taf;->showToast(Ljava/lang/String;)V

    .line 103
    return-void

    .line 96
    :catch_0
    move-exception v1

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSystemApp()Landroid/app/Application;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 167
    :try_start_0
    const-string/jumbo v6, "android.app.ActivityThread"

    invoke-static {v6}, Lc8/taf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 168
    .local v2, "e":Ljava/lang/Class;
    const-string/jumbo v6, "currentActivityThread"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 170
    .local v4, "m_currentActivityThread":Ljava/lang/reflect/Method;
    const-string/jumbo v6, "mInitialApplication"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 171
    .local v3, "f_mInitialApplication":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v8}, Lc8/taf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "current":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "app":Ljava/lang/Object;
    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "app":Ljava/lang/Object;
    .end local v1    # "current":Ljava/lang/Object;
    .end local v3    # "f_mInitialApplication":Ljava/lang/reflect/Field;
    .end local v4    # "m_currentActivityThread":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v5

    .line 176
    .local v5, "var5":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v7

    .line 177
    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1}, Lc8/taf;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    invoke-interface {v1, p0, v0}, Lc8/uaf;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static varargs joinString([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "strings"    # [Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 142
    :cond_0
    const-string/jumbo v5, ""

    .line 153
    :goto_0
    return-object v5

    .line 145
    :cond_1
    array-length v5, p0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 146
    const/4 v5, 0x0

    aget-object v5, p0, v5

    goto :goto_0

    .line 149
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, p0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 151
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static setCustomerLogger(Lc8/uaf;)V
    .locals 0
    .param p0, "log"    # Lc8/uaf;

    .prologue
    .line 22
    sput-object p0, Lc8/taf;->logger:Lc8/uaf;

    .line 23
    return-void
.end method

.method private static showToast(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Lc8/VZe;->isDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-static {}, Lc8/taf;->getSystemApp()Landroid/app/Application;

    move-result-object v0

    .line 159
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 160
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 163
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p1}, Lc8/taf;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    if-eqz v1, :cond_0

    .line 29
    :try_start_0
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    invoke-interface {v1, p0, v0}, Lc8/uaf;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "content"    # [Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p2}, Lc8/taf;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    invoke-interface {v1, p0, v0, p1}, Lc8/uaf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Lc8/taf;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    if-eqz v1, :cond_0

    .line 68
    :try_start_0
    sget-object v1, Lc8/taf;->logger:Lc8/uaf;

    invoke-interface {v1, p0, v0}, Lc8/uaf;->logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
