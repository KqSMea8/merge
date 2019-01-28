.class public Lc8/Jj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Lc8/Kj;
.implements Lc8/rj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaBrowserImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ij;
    }
.end annotation


# static fields
.field private static final CONNECT_STATE_CONNECTED:I = 0x2

.field static final CONNECT_STATE_CONNECTING:I = 0x1

.field static final CONNECT_STATE_DISCONNECTED:I = 0x0

.field static final CONNECT_STATE_SUSPENDED:I = 0x3


# instance fields
.field final mCallback:Lc8/oj;

.field mCallbacksMessenger:Landroid/os/Messenger;

.field final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field final mHandler:Lc8/lj;

.field private mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final mRootHints:Landroid/os/Bundle;

.field private mRootId:Ljava/lang/String;

.field mServiceBinderWrapper:Lc8/Oj;

.field final mServiceComponent:Landroid/content/ComponentName;

.field mServiceConnection:Lc8/Ij;

.field mState:I

.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Pj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Lc8/oj;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    new-instance v0, Lc8/lj;

    invoke-direct {v0, p0}, Lc8/lj;-><init>(Lc8/Kj;)V

    iput-object v0, p0, Lc8/Jj;->mHandler:Lc8/lj;

    .line 859
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/Jj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    .line 861
    const/4 v0, 0x0

    iput v0, p0, Lc8/Jj;->mState:I

    .line 871
    if-nez p1, :cond_0

    .line 872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_0
    if-nez p2, :cond_1

    .line 875
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_1
    if-nez p3, :cond_2

    .line 878
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_2
    iput-object p1, p0, Lc8/Jj;->mContext:Landroid/content/Context;

    .line 881
    iput-object p2, p0, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    .line 882
    iput-object p3, p0, Lc8/Jj;->mCallback:Lc8/oj;

    .line 883
    if-nez p4, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lc8/Jj;->mRootHints:Landroid/os/Bundle;

    .line 884
    return-void

    .line 883
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static getStateLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 1269
    packed-switch p0, :pswitch_data_0

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1271
    :pswitch_0
    const-string/jumbo v0, "CONNECT_STATE_DISCONNECTED"

    goto :goto_0

    .line 1273
    :pswitch_1
    const-string/jumbo v0, "CONNECT_STATE_CONNECTING"

    goto :goto_0

    .line 1275
    :pswitch_2
    const-string/jumbo v0, "CONNECT_STATE_CONNECTED"

    goto :goto_0

    .line 1277
    :pswitch_3
    const-string/jumbo v0, "CONNECT_STATE_SUSPENDED"

    goto :goto_0

    .line 1269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "funcName"    # Ljava/lang/String;

    .prologue
    .line 1287
    iget-object v0, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eq v0, p1, :cond_1

    .line 1288
    iget v0, p0, Lc8/Jj;->mState:I

    if-eqz v0, :cond_0

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with mCallbacksMessenger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1292
    :cond_0
    const/4 v0, 0x0

    .line 1294
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 888
    iget v3, p0, Lc8/Jj;->mState:I

    if-eqz v3, :cond_0

    .line 889
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect() called while not disconnected (state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lc8/Jj;->mState:I

    .line 890
    invoke-static {v5}, Lc8/Jj;->getStateLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 893
    :cond_0
    sget-boolean v3, Lc8/Tj;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 894
    iget-object v3, p0, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    if-eqz v3, :cond_1

    .line 895
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceConnection should be null. Instead it is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 899
    :cond_1
    iget-object v3, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    if-eqz v3, :cond_2

    .line 900
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceBinderWrapper should be null. Instead it is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 903
    :cond_2
    iget-object v3, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_3

    .line 904
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallbacksMessenger should be null. Instead it is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 908
    :cond_3
    iput v4, p0, Lc8/Jj;->mState:I

    .line 910
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.browse.MediaBrowserService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 913
    new-instance v2, Lc8/Ij;

    invoke-direct {v2, p0}, Lc8/Ij;-><init>(Lc8/Jj;)V

    iput-object v2, p0, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    .line 916
    .local v2, "thisConnection":Landroid/content/ServiceConnection;
    const/4 v0, 0x0

    .line 918
    .local v0, "bound":Z
    :try_start_0
    iget-object v3, p0, Lc8/Jj;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 923
    :goto_0
    if-nez v0, :cond_4

    .line 929
    iget-object v3, p0, Lc8/Jj;->mHandler:Lc8/lj;

    new-instance v4, Lc8/Bj;

    invoke-direct {v4, p0, v2}, Lc8/Bj;-><init>(Lc8/Jj;Landroid/content/ServiceConnection;)V

    invoke-virtual {v3, v4}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    .line 941
    :cond_4
    sget-boolean v3, Lc8/Tj;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 943
    invoke-virtual {p0}, Lc8/Jj;->dump()V

    .line 945
    :cond_5
    return-void

    .line 920
    :catch_0
    move-exception v3

    const-string/jumbo v3, "MediaBrowserCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed binding to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 954
    :try_start_0
    iget-object v0, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    iget-object v1, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lc8/Oj;->disconnect(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc8/Jj;->forceCloseConnection()V

    .line 963
    sget-boolean v0, Lc8/Tj;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 965
    invoke-virtual {p0}, Lc8/Jj;->dump()V

    .line 967
    :cond_1
    return-void

    .line 958
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RemoteException during connect for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method dump()V
    .locals 2

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mCallback:Lc8/oj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRootHints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Jj;->mState:I

    invoke-static {v1}, Lc8/Jj;->getStateLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceBinderWrapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mCallbacksMessenger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRootId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mRootId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mMediaSessionToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Jj;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1311
    return-void
.end method

.method forceCloseConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 980
    iget-object v0, p0, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lc8/Jj;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 983
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lc8/Jj;->mState:I

    .line 984
    iput-object v2, p0, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    .line 985
    iput-object v2, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    .line 986
    iput-object v2, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 987
    iget-object v0, p0, Lc8/Jj;->mHandler:Lc8/lj;

    invoke-virtual {v0, v2}, Lc8/lj;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 988
    iput-object v2, p0, Lc8/Jj;->mRootId:Ljava/lang/String;

    .line 989
    iput-object v2, p0, Lc8/Jj;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 990
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0}, Lc8/Jj;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExtras() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Jj;->mState:I

    .line 1019
    invoke-static {v2}, Lc8/Jj;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_0
    iget-object v0, p0, Lc8/Jj;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Lc8/qj;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cb"    # Lc8/qj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "mediaId is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1103
    :cond_0
    if-nez p2, :cond_1

    .line 1104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "cb is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    :cond_1
    iget v1, p0, Lc8/Jj;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1108
    iget-object v1, p0, Lc8/Jj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/Cj;

    invoke-direct {v2, p0, p2, p1}, Lc8/Cj;-><init>(Lc8/Jj;Lc8/qj;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    .line 1128
    :goto_0
    return-void

    .line 1116
    :cond_2
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;

    iget-object v1, p0, Lc8/Jj;->mHandler:Lc8/lj;

    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;-><init>(Ljava/lang/String;Lc8/qj;Landroid/os/Handler;)V

    .line 1118
    .local v0, "receiver":Landroid/support/v4/os/ResultReceiver;
    :try_start_0
    iget-object v1, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    iget-object v2, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v0, v2}, Lc8/Oj;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1121
    :catch_0
    move-exception v1

    iget-object v1, p0, Lc8/Jj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/Dj;

    invoke-direct {v2, p0, p2, p1}, Lc8/Dj;-><init>(Lc8/Jj;Lc8/qj;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1008
    invoke-virtual {p0}, Lc8/Jj;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRoot() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Jj;->mState:I

    .line 1010
    invoke-static {v2}, Lc8/Jj;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_0
    iget-object v0, p0, Lc8/Jj;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 999
    invoke-virtual {p0}, Lc8/Jj;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getServiceComponent() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Jj;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_0
    iget-object v0, p0, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1026
    invoke-virtual {p0}, Lc8/Jj;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSessionToken() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Jj;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_0
    iget-object v0, p0, Lc8/Jj;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 994
    iget v0, p0, Lc8/Jj;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnectionFailed(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    .line 1205
    const-string/jumbo v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectFailed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string/jumbo v0, "onConnectFailed"

    invoke-direct {p0, p1, v0}, Lc8/Jj;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1212
    :cond_0
    iget v0, p0, Lc8/Jj;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnect from service while mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Jj;->mState:I

    invoke-static {v1}, Lc8/Jj;->getStateLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "... ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 1219
    :cond_1
    invoke-virtual {p0}, Lc8/Jj;->forceCloseConnection()V

    .line 1222
    iget-object v0, p0, Lc8/Jj;->mCallback:Lc8/oj;

    invoke-virtual {v0}, Lc8/oj;->onConnectionFailed()V

    goto :goto_0
.end method

.method public onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/List;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1229
    const-string/jumbo v2, "onLoadChildren"

    invoke-direct {p0, p1, v2}, Lc8/Jj;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    sget-boolean v2, Lc8/Tj;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadChildren for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1238
    :cond_2
    iget-object v2, p0, Lc8/Jj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Pj;

    .line 1239
    .local v0, "subscription":Lc8/Pj;
    if-nez v0, :cond_3

    .line 1240
    sget-boolean v2, Lc8/Tj;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 1247
    :cond_3
    invoke-virtual {v0, p4}, Lc8/Pj;->getCallback(Landroid/os/Bundle;)Lc8/Sj;

    move-result-object v1

    .line 1248
    .local v1, "subscriptionCallback":Lc8/Sj;
    if-eqz v1, :cond_0

    .line 1249
    if-nez p4, :cond_5

    .line 1250
    if-nez p3, :cond_4

    .line 1251
    invoke-virtual {v1, p2}, Lc8/Sj;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    :cond_4
    invoke-virtual {v1, p2, p3}, Lc8/Sj;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1256
    :cond_5
    if-nez p3, :cond_6

    .line 1257
    invoke-virtual {v1, p2, p4}, Lc8/Sj;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1259
    :cond_6
    invoke-virtual {v1, p2, p3, p4}, Lc8/Sj;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 1162
    const-string/jumbo v6, "onConnect"

    invoke-direct {p0, p1, v6}, Lc8/Jj;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    iget v6, p0, Lc8/Jj;->mState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 1167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onConnect from service while mState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/Jj;->mState:I

    invoke-static {v7}, Lc8/Jj;->getStateLabel(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "... ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 1171
    :cond_2
    iput-object p2, p0, Lc8/Jj;->mRootId:Ljava/lang/String;

    .line 1172
    iput-object p3, p0, Lc8/Jj;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1173
    iput-object p4, p0, Lc8/Jj;->mExtras:Landroid/os/Bundle;

    .line 1174
    const/4 v6, 0x2

    iput v6, p0, Lc8/Jj;->mState:I

    .line 1176
    sget-boolean v6, Lc8/Tj;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1178
    invoke-virtual {p0}, Lc8/Jj;->dump()V

    .line 1180
    :cond_3
    iget-object v6, p0, Lc8/Jj;->mCallback:Lc8/oj;

    invoke-virtual {v6}, Lc8/oj;->onConnected()V

    .line 1186
    :try_start_0
    iget-object v6, p0, Lc8/Jj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6}, Landroid/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1187
    .local v5, "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$Subscription;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1188
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Pj;

    .line 1189
    .local v4, "sub":Lc8/Pj;
    invoke-virtual {v4}, Lc8/Pj;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 1190
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    invoke-virtual {v4}, Lc8/Pj;->getOptionsList()Ljava/util/List;

    move-result-object v3

    .line 1191
    .local v3, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1192
    iget-object v8, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/Sj;

    invoke-static {v6}, Lc8/Sj;->access$000(Lc8/Sj;)Landroid/os/IBinder;

    move-result-object v9

    .line 1193
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iget-object v10, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1192
    invoke-virtual {v8, v2, v9, v6, v10}, Lc8/Oj;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1201
    .end local v0    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v4    # "sub":Lc8/Pj;
    .end local v5    # "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$Subscription;>;"
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Lc8/Nj;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lc8/Nj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1133
    invoke-virtual {p0}, Lc8/Jj;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    iget-object v1, p0, Lc8/Jj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/Ej;

    invoke-direct {v2, p0, p3, p1, p2}, Lc8/Ej;-><init>(Lc8/Jj;Lc8/Nj;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    .line 1156
    :goto_0
    return-void

    .line 1144
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;

    iget-object v1, p0, Lc8/Jj;->mHandler:Lc8/lj;

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lc8/Nj;Landroid/os/Handler;)V

    .line 1146
    .local v0, "receiver":Landroid/support/v4/os/ResultReceiver;
    :try_start_0
    iget-object v1, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    iget-object v2, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, p2, v0, v2}, Lc8/Oj;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote error searching items with query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1149
    iget-object v1, p0, Lc8/Jj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/Fj;

    invoke-direct {v2, p0, p3, p1, p2}, Lc8/Fj;-><init>(Lc8/Jj;Lc8/Nj;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Lc8/Sj;)V
    .locals 5
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lc8/Sj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1037
    iget-object v2, p0, Lc8/Jj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Pj;

    .line 1038
    .local v1, "sub":Lc8/Pj;
    if-nez v1, :cond_0

    .line 1039
    new-instance v1, Lc8/Pj;

    .end local v1    # "sub":Lc8/Pj;
    invoke-direct {v1}, Lc8/Pj;-><init>()V

    .line 1040
    .restart local v1    # "sub":Lc8/Pj;
    iget-object v2, p0, Lc8/Jj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    :cond_0
    if-nez p2, :cond_2

    const/4 v0, 0x0

    .line 1043
    .local v0, "copiedOptions":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1, v0, p3}, Lc8/Pj;->putCallback(Landroid/os/Bundle;Lc8/Sj;)V

    .line 1047
    iget v2, p0, Lc8/Jj;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1049
    :try_start_0
    iget-object v2, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    invoke-static {p3}, Lc8/Sj;->access$000(Lc8/Sj;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p1, v3, v0, v4}, Lc8/Oj;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :cond_1
    :goto_1
    return-void

    .line 1042
    .end local v0    # "copiedOptions":Landroid/os/Bundle;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1054
    .restart local v0    # "copiedOptions":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method public unsubscribe(Ljava/lang/String;Lc8/Sj;)V
    .locals 8
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lc8/Sj;

    .prologue
    const/4 v7, 0x2

    .line 1061
    iget-object v4, p0, Lc8/Jj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Pj;

    .line 1062
    .local v3, "sub":Lc8/Pj;
    if-nez v3, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    if-nez p2, :cond_4

    .line 1069
    :try_start_0
    iget v4, p0, Lc8/Jj;->mState:I

    if-ne v4, v7, :cond_2

    .line 1070
    iget-object v4, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, p1, v5, v6}, Lc8/Oj;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lc8/Pj;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez p2, :cond_0

    .line 1094
    :cond_3
    iget-object v4, p0, Lc8/Jj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1074
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lc8/Pj;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 1075
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    invoke-virtual {v3}, Lc8/Pj;->getOptionsList()Ljava/util/List;

    move-result-object v2

    .line 1076
    .local v2, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 1077
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_6

    .line 1078
    iget v4, p0, Lc8/Jj;->mState:I

    if-ne v4, v7, :cond_5

    .line 1079
    iget-object v4, p0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    .line 1080
    invoke-static {p2}, Lc8/Sj;->access$000(Lc8/Sj;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1079
    invoke-virtual {v4, p1, v5, v6}, Lc8/Oj;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    .line 1082
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1083
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1076
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1090
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    .end local v1    # "i":I
    .end local v2    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method
