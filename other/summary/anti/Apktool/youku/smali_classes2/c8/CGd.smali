.class public Lc8/CGd;
.super Ljava/lang/Object;
.source "PushMessageProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BGd;
    }
.end annotation


# static fields
.field static volatile singleton:Lc8/CGd;


# instance fields
.field private context:Landroid/content/Context;

.field private managerHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/fHd;",
            ">;"
        }
    .end annotation
.end field

.field private messageListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/dHd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lc8/CGd;->singleton:Lc8/CGd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/CGd;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lc8/fHd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "messageManagerList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/handler/MessageHandler;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/CGd;-><init>(Landroid/content/Context;Ljava/util/List;Lc8/dHd;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lc8/dHd;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "receiverLisener"    # Lc8/dHd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lc8/fHd;",
            ">;",
            "Lc8/dHd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "messageManagerList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/handler/MessageHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lc8/CGd;->managerHashMap:Ljava/util/Map;

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/CGd;->messageListenerMap:Ljava/util/Map;

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lc8/CGd;->context:Landroid/content/Context;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lc8/CGd;->messageListenerMap:Ljava/util/Map;

    .line 102
    new-instance v0, Lc8/BGd;

    invoke-direct {v0, p0}, Lc8/BGd;-><init>(Lc8/CGd;)V

    .line 103
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-nez p2, :cond_1

    .line 104
    new-instance v1, Lc8/kHd;

    invoke-direct {v1, p1, v0}, Lc8/kHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 105
    new-instance v1, Lc8/jHd;

    invoke-direct {v1, p1, v0}, Lc8/jHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 106
    new-instance v1, Lc8/mHd;

    invoke-direct {v1, p1, v0}, Lc8/mHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 107
    new-instance v1, Lc8/xHd;

    invoke-direct {v1, p1, v0}, Lc8/xHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 108
    new-instance v1, Lc8/lHd;

    invoke-direct {v1, p1, v0}, Lc8/lHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 109
    new-instance v1, Lc8/nHd;

    invoke-direct {v1, p1, v0}, Lc8/nHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 110
    new-instance v1, Lc8/yHd;

    invoke-direct {v1, p1, v0}, Lc8/yHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 111
    new-instance v1, Lc8/AHd;

    invoke-direct {v1, p1, v0}, Lc8/AHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 112
    new-instance v1, Lc8/CHd;

    invoke-direct {v1, p1, v0}, Lc8/CHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 113
    new-instance v1, Lc8/FHd;

    invoke-direct {v1, p1, v0}, Lc8/FHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 114
    new-instance v1, Lc8/DHd;

    invoke-direct {v1, p1, v0}, Lc8/DHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 115
    new-instance v1, Lc8/EHd;

    invoke-direct {v1, p1, v0}, Lc8/EHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 116
    new-instance v1, Lc8/GHd;

    invoke-direct {v1, p1, v0}, Lc8/GHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 117
    new-instance v1, Lc8/BHd;

    invoke-direct {v1, p1, v0}, Lc8/BHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 118
    new-instance v1, Lc8/zHd;

    invoke-direct {v1, p1, v0}, Lc8/zHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 119
    new-instance v1, Lc8/oHd;

    invoke-direct {v1, p1, v0}, Lc8/oHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    invoke-virtual {p0, v1}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0, p2}, Lc8/CGd;->addHandler(Ljava/util/List;)Lc8/CGd;

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/CGd;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/CGd;

    .prologue
    .line 80
    iget-object v0, p0, Lc8/CGd;->messageListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lc8/CGd;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sget-object v0, Lc8/CGd;->singleton:Lc8/CGd;

    if-nez v0, :cond_1

    .line 128
    const-class v1, Lc8/CGd;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lc8/CGd;->singleton:Lc8/CGd;

    if-nez v0, :cond_0

    .line 130
    const-string/jumbo v0, "PushMessageProxy"

    const-string/jumbo v2, "PushMessageProxy init"

    invoke-static {v0, v2}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lc8/CGd;

    invoke-direct {v0, p0}, Lc8/CGd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/CGd;->singleton:Lc8/CGd;

    .line 133
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_1
    sget-object v0, Lc8/CGd;->singleton:Lc8/CGd;

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addHandler(Lc8/fHd;)Lc8/CGd;
    .locals 2
    .param p1, "messageManager"    # Lc8/fHd;

    .prologue
    .line 153
    iget-object v0, p0, Lc8/CGd;->managerHashMap:Ljava/util/Map;

    invoke-interface {p1}, Lc8/fHd;->getProcessorType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-object p0
.end method

.method public addHandler(Ljava/util/List;)Lc8/CGd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/fHd;",
            ">;)",
            "Lc8/CGd;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "messageManagerList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/handler/MessageHandler;>;"
    if-nez p1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "messageManagerList must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fHd;

    .line 165
    .local v0, "messageManager":Lc8/fHd;
    invoke-virtual {p0, v0}, Lc8/CGd;->addHandler(Lc8/fHd;)Lc8/CGd;

    goto :goto_0

    .line 167
    .end local v0    # "messageManager":Lc8/fHd;
    :cond_1
    return-object p0
.end method

.method protected isOnMainThread()Z
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lc8/CGd;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processMessage(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 177
    const-string/jumbo v5, "PushMessageProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "is onMainThread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lc8/CGd;->isOnMainThread()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    const-string/jumbo v5, "method"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "method":Ljava/lang/String;
    const-string/jumbo v5, "PushMessageProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "receive action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v5, p0, Lc8/CGd;->managerHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 183
    .local v1, "iterator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/meizu/cloud/pushsdk/handler/MessageHandler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/fHd;

    .line 184
    .local v3, "messageManager":Lc8/fHd;
    invoke-interface {v3, p1}, Lc8/fHd;->sendMessage(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 185
    .local v2, "mathResult":Z
    if-eqz v2, :cond_0

    .line 194
    .end local v1    # "iterator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/meizu/cloud/pushsdk/handler/MessageHandler;>;"
    .end local v2    # "mathResult":Z
    .end local v3    # "messageManager":Lc8/fHd;
    .end local v4    # "method":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PushMessageProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processMessage error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiverListener(Ljava/lang/String;Lc8/dHd;)Lc8/CGd;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "abstractAppLogicListener"    # Lc8/dHd;

    .prologue
    .line 140
    iget-object v0, p0, Lc8/CGd;->messageListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object p0
.end method
