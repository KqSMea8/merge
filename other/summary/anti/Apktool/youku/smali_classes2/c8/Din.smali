.class public Lc8/Din;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Cin;,
        Lc8/Bin;
    }
.end annotation


# static fields
.field private static INSTANCE:Lc8/Din; = null

.field public static final MANAGER_DOWN_FAIL:I = 0x4

.field public static final MANAGER_DOWN_OVER:I = 0x3

.field public static final MANAGER_DOWN_START:I = 0x2

.field public static final MANAGER_PROGERESS_UPDATE:I = 0x1

.field public static final MANAGER__STATE_INIT:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private isBindService:Z

.field private isDownLoading:Z

.field private isStateReturned:Z

.field private mApkType:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private messenger:Landroid/os/Messenger;

.field public onProgressListener:Lc8/Cin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "update_tag"

    sput-object v0, Lc8/Din;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lc8/Din;->INSTANCE:Lc8/Din;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Din;->messenger:Landroid/os/Messenger;

    .line 193
    new-instance v2, Lc8/Ain;

    invoke-direct {v2, p0}, Lc8/Ain;-><init>(Lc8/Din;)V

    iput-object v2, p0, Lc8/Din;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 64
    sput-object p1, Lc8/Din;->mContext:Landroid/content/Context;

    .line 66
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lc8/Din;->mContext:Landroid/content/Context;

    const-class v3, Lcom/youku/service/update/UpdateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v1, "serviceIntent":Landroid/content/Intent;
    sget-object v2, Lc8/Din;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/Din;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lc8/Din;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/Din;->messenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$002(Lc8/Din;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lc8/Din;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 30
    iput-object p1, p0, Lc8/Din;->messenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lc8/Din;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Din;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Din;

    .prologue
    .line 30
    iget-boolean v0, p0, Lc8/Din;->isDownLoading:Z

    return v0
.end method

.method static synthetic access$202(Lc8/Din;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Din;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lc8/Din;->isDownLoading:Z

    return p1
.end method

.method static synthetic access$300(Lc8/Din;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Din;

    .prologue
    .line 30
    iget-boolean v0, p0, Lc8/Din;->isBindService:Z

    return v0
.end method

.method static synthetic access$302(Lc8/Din;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Din;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lc8/Din;->isBindService:Z

    return p1
.end method

.method static synthetic access$400(Lc8/Din;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lc8/Din;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/Din;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lc8/Din;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Din;)I
    .locals 1
    .param p0, "x0"    # Lc8/Din;

    .prologue
    .line 30
    iget v0, p0, Lc8/Din;->mApkType:I

    return v0
.end method

.method static synthetic access$702(Lc8/Din;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Din;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lc8/Din;->isStateReturned:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lc8/Din;
    .locals 3

    .prologue
    .line 75
    const-class v1, Lc8/Din;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Din;->INSTANCE:Lc8/Din;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lc8/Din;

    sget-object v2, Lc8/VLj;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lc8/Din;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/Din;->INSTANCE:Lc8/Din;

    .line 79
    :cond_0
    sget-object v0, Lc8/Din;->INSTANCE:Lc8/Din;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "spm"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trackCommonClickEvent pagename : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  arg1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  spm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p0, p1, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 281
    return-void
.end method

.method public static trackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "arg1"    # Ljava/lang/String;
    .param p1, "spm"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trackCustomEvent arg1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  spm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v5, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "spm"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v0, "page_upgrade"

    const/16 v1, 0x899

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 288
    return-void
.end method

.method public static updateEventSend(Ljava/lang/String;I)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v0, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u7248\u672c\u66f4\u65b0\u529f\u80fd"

    const-string/jumbo v3, "\u8bbe\u7f6e"

    const-string/jumbo v4, "setup.setupUpdate"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 274
    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .prologue
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "manager bind service-------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/Din;->isBindService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    iget-boolean v1, p0, Lc8/Din;->isBindService:Z

    if-nez v1, :cond_0

    .line 188
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lc8/Din;->mContext:Landroid/content/Context;

    const-class v2, Lcom/youku/service/update/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/Din;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/Din;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lc8/Din;->isBindService:Z

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public exitApp()V
    .locals 3

    .prologue
    .line 235
    sget-object v0, Lcom/youku/ui/activity/HomePageActivity;->instance:Lcom/youku/ui/activity/HomePageActivity;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/youku/ui/activity/HomePageActivity;->instance:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Lcom/youku/ui/activity/HomePageActivity;->finish()V

    .line 237
    :cond_0
    sget-object v0, Lc8/Din;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "youku_finish_setting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method public isDownLoading()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lc8/Din;->isDownLoading:Z

    return v0
.end method

.method public isStateReturned()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lc8/Din;->isStateReturned:Z

    return v0
.end method

.method public setOnProgressListener(Lc8/Cin;)V
    .locals 0
    .param p1, "onProgressListener"    # Lc8/Cin;

    .prologue
    .line 251
    iput-object p1, p0, Lc8/Din;->onProgressListener:Lc8/Cin;

    .line 252
    return-void
.end method

.method public startUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "apkUrl"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 83
    iget-boolean v3, p0, Lc8/Din;->isBindService:Z

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lc8/Din;->bindService()V

    .line 86
    :cond_0
    iput p4, p0, Lc8/Din;->mApkType:I

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "apk_url"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v3, "apk_version"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v3, "apk_type"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string/jumbo v3, "apk_content"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 93
    .local v2, "startMsg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 94
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 96
    :try_start_0
    iget-object v3, p0, Lc8/Din;->messenger:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lc8/Din;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 122
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lc8/Din;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lc8/zin;

    invoke-direct {v4, p0, v2}, Lc8/zin;-><init>(Lc8/Din;Landroid/os/Message;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-boolean v0, p0, Lc8/Din;->isBindService:Z

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lc8/Din;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/Din;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 223
    iput-boolean v2, p0, Lc8/Din;->isDownLoading:Z

    .line 224
    iput-boolean v2, p0, Lc8/Din;->isBindService:Z

    .line 225
    iput-boolean v2, p0, Lc8/Din;->isStateReturned:Z

    .line 227
    :cond_0
    return-void
.end method
