.class public Lc8/sqb;
.super Landroid/content/BroadcastReceiver;
.source "GeolocationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerReceiver"
.end annotation


# instance fields
.field mErrorCallback:Ljava/lang/String;

.field mInstanceId:Ljava/lang/String;

.field mLocatable:Lc8/sub;

.field mParams:Ljava/lang/String;

.field mSuccessCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lc8/sub;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "locatable"    # Lc8/sub;
    .param p3, "successCallback"    # Ljava/lang/String;
    .param p4, "errorCallback"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 142
    iput-object p2, p0, Lc8/sqb;->mLocatable:Lc8/sub;

    .line 143
    iput-object p3, p0, Lc8/sqb;->mSuccessCallback:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lc8/sqb;->mErrorCallback:Ljava/lang/String;

    .line 145
    iput-object p5, p0, Lc8/sqb;->mParams:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lc8/sqb;->mInstanceId:Ljava/lang/String;

    .line 147
    return-void
.end method

.method private noPermission()V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "errorCode"

    const v2, 0x15f91

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v1, "errorMsg"

    const-string/jumbo v2, "NO PERMISSION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    iget-object v2, p0, Lc8/sqb;->mInstanceId:Ljava/lang/String;

    iget-object v3, p0, Lc8/sqb;->mErrorCallback:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lc8/pVf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 151
    const-string/jumbo v2, "requestCode"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, "code":I
    const-string/jumbo v2, "grantResults"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 153
    .local v1, "grantResults":[I
    const/16 v2, 0x12

    if-ne v0, v2, :cond_2

    .line 154
    array-length v2, v1

    if-lez v2, :cond_1

    aget v2, v1, v3

    if-nez v2, :cond_1

    .line 155
    iget-object v2, p0, Lc8/sqb;->mLocatable:Lc8/sub;

    iget-object v3, p0, Lc8/sqb;->mSuccessCallback:Ljava/lang/String;

    iget-object v4, p0, Lc8/sqb;->mErrorCallback:Ljava/lang/String;

    iget-object v5, p0, Lc8/sqb;->mParams:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lc8/sub;->getCurrentPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void

    .line 157
    :cond_1
    invoke-direct {p0}, Lc8/sqb;->noPermission()V

    goto :goto_0

    .line 159
    :cond_2
    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    .line 160
    array-length v2, v1

    if-lez v2, :cond_3

    aget v2, v1, v3

    if-nez v2, :cond_3

    .line 161
    iget-object v2, p0, Lc8/sqb;->mLocatable:Lc8/sub;

    iget-object v3, p0, Lc8/sqb;->mSuccessCallback:Ljava/lang/String;

    iget-object v4, p0, Lc8/sqb;->mErrorCallback:Ljava/lang/String;

    iget-object v5, p0, Lc8/sqb;->mParams:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lc8/sub;->watchPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_3
    invoke-direct {p0}, Lc8/sqb;->noPermission()V

    goto :goto_0
.end method
