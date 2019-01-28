.class public Lc8/yao;
.super Ljava/lang/Object;
.source "PlanetUploadManager.java"


# static fields
.field private static final APP_ID:I = 0x30

.field private static final UPLOAD_TYPE:Ljava/lang/String; = "yk_cricle_interactiveplay"

.field private static instance:Lc8/yao;


# instance fields
.field private planetUploadAIDL:Lc8/irm;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getInstance()Lc8/yao;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lc8/yao;->instance:Lc8/yao;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lc8/yao;

    invoke-direct {v0}, Lc8/yao;-><init>()V

    sput-object v0, Lc8/yao;->instance:Lc8/yao;

    .line 39
    :cond_0
    sget-object v0, Lc8/yao;->instance:Lc8/yao;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    invoke-interface {v1, p1}, Lc8/irm;->cancel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadImageAsync(Ljava/lang/String;Lc8/lrm;)V
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "uploadListener"    # Lc8/lrm;

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lc8/irm;

    invoke-static {v0, v1}, Lc8/Jcf;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc8/irm;

    iput-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    .line 54
    invoke-static {}, Lc8/Dfh;->getEnvType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    const-wide/32 v8, 0x16507827

    invoke-interface {v0, v8, v9}, Lc8/irm;->setUserId(J)V

    .line 59
    :cond_0
    iget-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    if-eqz v0, :cond_1

    .line 60
    const-class v0, Lc8/vdn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->isLogined()Z

    move-result v7

    .line 62
    .local v7, "isLogin":Z
    if-nez v7, :cond_2

    .line 73
    .end local v7    # "isLogin":Z
    :cond_1
    :goto_0
    return-void

    .line 66
    .restart local v7    # "isLogin":Z
    :cond_2
    const-class v0, Lc8/vdn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->getUserNumberId()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "userId":Ljava/lang/String;
    const-class v0, Lc8/vdn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->getSToken()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "sToken":Ljava/lang/String;
    iget-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    const-string/jumbo v2, "yk_cricle_interactiveplay"

    move-object v1, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lc8/irm;->uploadImageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/lrm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "sToken":Ljava/lang/String;
    .end local v7    # "isLogin":Z
    :catch_0
    move-exception v6

    .line 71
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadVideoAsync(Ljava/lang/String;Ljava/lang/String;Lc8/lrm;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "videoName"    # Ljava/lang/String;
    .param p3, "uploadListener"    # Lc8/lrm;

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lc8/irm;

    invoke-static {v0, v1}, Lc8/Jcf;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc8/irm;

    iput-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    .line 87
    invoke-static {}, Lc8/Dfh;->getEnvType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    const-wide/32 v2, 0x16507827

    invoke-interface {v0, v2, v3}, Lc8/irm;->setUserId(J)V

    .line 93
    :cond_0
    iget-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    if-eqz v0, :cond_1

    .line 95
    const-class v0, Lc8/vdn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->isLogined()Z

    move-result v7

    .line 97
    .local v7, "isLogin":Z
    if-nez v7, :cond_2

    .line 106
    .end local v7    # "isLogin":Z
    :cond_1
    :goto_0
    return-void

    .line 100
    .restart local v7    # "isLogin":Z
    :cond_2
    iget-object v0, p0, Lc8/yao;->planetUploadAIDL:Lc8/irm;

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "\u5267\u597d\u73a9\u89c6\u9891"

    :goto_1
    const-string/jumbo v3, "\u4f18\u9177\u5708\u5b50"

    const/16 v4, 0x30

    move-object v1, p1

    move-object v5, p3

    .line 100
    invoke-interface/range {v0 .. v5}, Lc8/irm;->uploadVideoAsyncWithClientId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILc8/lrm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v7    # "isLogin":Z
    :catch_0
    move-exception v6

    .line 104
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v7    # "isLogin":Z
    :cond_3
    move-object v2, p2

    .line 101
    goto :goto_1
.end method
