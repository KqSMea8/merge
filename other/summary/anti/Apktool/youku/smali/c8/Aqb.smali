.class public Lc8/Aqb;
.super Landroid/content/BroadcastReceiver;
.source "WXCalendarModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Cqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerReceiver"
.end annotation


# instance fields
.field mCallback:Lc8/Bqb;


# direct methods
.method constructor <init>(Lc8/Bqb;)V
    .locals 0
    .param p1, "callback"    # Lc8/Bqb;

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 245
    iput-object p1, p0, Lc8/Aqb;->mCallback:Lc8/Bqb;

    .line 246
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 251
    :try_start_0
    const-string/jumbo v6, "requestCode"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 252
    .local v0, "code":I
    const/16 v6, 0x19

    if-ne v0, v6, :cond_1

    .line 253
    const-string/jumbo v6, "grantResults"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 254
    .local v1, "grantResults":[I
    const-string/jumbo v6, "permissions"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "permissions":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 257
    .local v2, "granted":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v1, :cond_0

    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 258
    aget v6, v1, v3

    if-eqz v6, :cond_2

    .line 259
    iget-object v6, p0, Lc8/Aqb;->mCallback:Lc8/Bqb;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Lc8/Bqb;->onPermissionsDenied(Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x0

    .line 265
    :cond_0
    if-eqz v2, :cond_1

    .line 266
    iget-object v6, p0, Lc8/Aqb;->mCallback:Lc8/Bqb;

    invoke-interface {v6}, Lc8/Bqb;->onPermissionsGranted()V

    .line 269
    .end local v1    # "grantResults":[I
    .end local v2    # "granted":Z
    .end local v3    # "i":I
    .end local v4    # "permissions":[Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v0    # "code":I
    :goto_1
    return-void

    .line 257
    .restart local v0    # "code":I
    .restart local v1    # "grantResults":[I
    .restart local v2    # "granted":Z
    .restart local v3    # "i":I
    .restart local v4    # "permissions":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "code":I
    .end local v1    # "grantResults":[I
    .end local v2    # "granted":Z
    .end local v3    # "i":I
    .end local v4    # "permissions":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 271
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lc8/Cqb;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
