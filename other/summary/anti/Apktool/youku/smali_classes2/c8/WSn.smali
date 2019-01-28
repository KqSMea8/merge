.class public Lc8/WSn;
.super Ljava/lang/Object;
.source "UploadManagerApi.java"


# static fields
.field public static UPLOADMANAGER_SERVICE_ACTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "com.youku.action.UploadManagerAIDLService"

    sput-object v0, Lc8/WSn;->UPLOADMANAGER_SERVICE_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelUploadNotifaction()V
    .locals 5

    .prologue
    .line 87
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 88
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lc8/VSn;

    invoke-direct {v3, v0}, Lc8/VSn;-><init>(Landroid/content/Context;)V

    .line 106
    .local v3, "serviceConnection":Landroid/content/ServiceConnection;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lc8/WSn;->UPLOADMANAGER_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
