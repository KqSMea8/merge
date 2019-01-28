.class public Lc8/DKj;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"


# instance fields
.field private isCancel:Z

.field lock:Ljava/lang/Integer;

.field private mActivity:Landroid/app/Activity;

.field mAlixPay:Lc8/KKc;

.field private mAlixPayConnection:Landroid/content/ServiceConnection;

.field private mCallback:Lc8/NKc;

.field mbPaying:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc8/DKj;->lock:Ljava/lang/Integer;

    .line 35
    iput-object v2, p0, Lc8/DKj;->mAlixPay:Lc8/KKc;

    .line 36
    iput-boolean v1, p0, Lc8/DKj;->mbPaying:Z

    .line 38
    iput-object v2, p0, Lc8/DKj;->mActivity:Landroid/app/Activity;

    .line 40
    iput-boolean v1, p0, Lc8/DKj;->isCancel:Z

    .line 43
    new-instance v0, Lc8/AKj;

    invoke-direct {v0, p0}, Lc8/AKj;-><init>(Lc8/DKj;)V

    iput-object v0, p0, Lc8/DKj;->mAlixPayConnection:Landroid/content/ServiceConnection;

    .line 189
    new-instance v0, Lc8/CKj;

    invoke-direct {v0, p0}, Lc8/CKj;-><init>(Lc8/DKj;)V

    iput-object v0, p0, Lc8/DKj;->mCallback:Lc8/NKc;

    return-void
.end method

.method static synthetic access$000(Lc8/DKj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/DKj;

    .prologue
    .line 30
    iget-boolean v0, p0, Lc8/DKj;->isCancel:Z

    return v0
.end method

.method static synthetic access$100(Lc8/DKj;)Lc8/NKc;
    .locals 1
    .param p0, "x0"    # Lc8/DKj;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/DKj;->mCallback:Lc8/NKc;

    return-object v0
.end method

.method static synthetic access$200(Lc8/DKj;)V
    .locals 0
    .param p0, "x0"    # Lc8/DKj;

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/DKj;->unbindService()V

    return-void
.end method

.method static synthetic access$300(Lc8/DKj;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lc8/DKj;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/DKj;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private unbindService()V
    .locals 3

    .prologue
    .line 162
    const-string/jumbo v1, "MobileSecurePayer"

    const-string/jumbo v2, "unbindService()"

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/DKj;->mbPaying:Z

    .line 168
    iget-object v1, p0, Lc8/DKj;->mAlixPay:Lc8/KKc;

    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Lc8/DKj;->mAlixPay:Lc8/KKc;

    iget-object v2, p0, Lc8/DKj;->mCallback:Lc8/NKc;

    invoke-interface {v1, v2}, Lc8/KKc;->unregisterCallback(Lc8/NKc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/DKj;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 177
    :try_start_1
    iget-object v1, p0, Lc8/DKj;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/DKj;->mAlixPayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/DKj;->mActivity:Landroid/app/Activity;

    .line 183
    :cond_1
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
