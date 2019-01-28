.class public Lc8/uAo;
.super Ljava/lang/Object;
.source "VipPayAPI.java"


# static fields
.field public static final KEY_BUNDLE:Ljava/lang/String; = "bundle"

.field public static final KEY_PARCELABLE_DATA:Ljava/lang/String; = "data"

.field public static final KEY_PAY_CHANNEL:Ljava/lang/String; = "pay_channel"

.field public static final PAY_CHANNEL_VIP_CARD:Ljava/lang/String; = "104"

.field private static volatile mConnection:Landroid/content/ServiceConnection;

.field private static volatile mVipAidl:Lc8/dAo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .param p0, "x0"    # Landroid/content/ServiceConnection;

    .prologue
    .line 38
    sput-object p0, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$102(Lc8/dAo;)Lc8/dAo;
    .locals 0
    .param p0, "x0"    # Lc8/dAo;

    .prologue
    .line 38
    sput-object p0, Lc8/uAo;->mVipAidl:Lc8/dAo;

    return-object p0
.end method

.method static synthetic access$200(Lc8/kAo;)V
    .locals 0
    .param p0, "x0"    # Lc8/kAo;

    .prologue
    .line 38
    invoke-static {p0}, Lc8/uAo;->handleIsVip(Lc8/kAo;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lc8/uAo;->handleClickVipTab()V

    return-void
.end method

.method public static declared-synchronized clickVipTab()V
    .locals 5

    .prologue
    .line 250
    const-class v2, Lc8/uAo;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.youku.vip.service.VipBindService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    sget-object v1, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/uAo;->mVipAidl:Lc8/dAo;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    new-instance v1, Lc8/rAo;

    invoke-direct {v1}, Lc8/rAo;-><init>()V

    sput-object v1, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    .line 277
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-object v3, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_0
    monitor-exit v2

    return-void

    .line 282
    :cond_1
    :try_start_1
    invoke-static {}, Lc8/uAo;->handleClickVipTab()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static goSelectPayChannelFromActivity(Landroid/app/Activity;Lcom/youku/vip/entity/external/VipMovieInfo;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "movieInfo"    # Lcom/youku/vip/entity/external/VipMovieInfo;
    .param p2, "requestCode"    # I

    .prologue
    .line 55
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.youku.vip.ui.activity.SelectPayChannelActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 60
    const-string/jumbo v2, "showname"

    invoke-virtual {p1}, Lcom/youku/vip/entity/external/VipMovieInfo;->getShowname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v2, "show_vthumburl"

    invoke-virtual {p1}, Lcom/youku/vip/entity/external/VipMovieInfo;->getShow_vthumburl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v2, "permit_duration"

    invoke-virtual {p1}, Lcom/youku/vip/entity/external/VipMovieInfo;->getPermit_duration()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string/jumbo v2, "discount_vod_price"

    invoke-virtual {p1}, Lcom/youku/vip/entity/external/VipMovieInfo;->getVod_price()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    const-string/jumbo v2, "bundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    return-void
.end method

.method public static goSelectPayChannelFromFragment(Landroid/support/v4/app/Fragment;Lcom/youku/vip/entity/external/VipMovieInfo;I)V
    .locals 4
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "movieInfo"    # Lcom/youku/vip/entity/external/VipMovieInfo;
    .param p2, "requestCode"    # I

    .prologue
    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "com.youku.vip.ui.activity.SelectPayChannelActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 83
    const-string/jumbo v2, "showname"

    invoke-virtual {p1}, Lcom/youku/vip/entity/external/VipMovieInfo;->getShowname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v2, "show_vthumburl"

    invoke-virtual {p1}, Lcom/youku/vip/entity/external/VipMovieInfo;->getShow_vthumburl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v2, "permit_duration"

    invoke-virtual {p1}, Lcom/youku/vip/entity/external/VipMovieInfo;->getPermit_duration()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string/jumbo v2, "discount_vod_price"

    invoke-virtual {p1}, Lcom/youku/vip/entity/external/VipMovieInfo;->getVod_price()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    const-string/jumbo v2, "bundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    return-void
.end method

.method public static goVipCardActivatedActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "vipMobileNum"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.vip.ui.activity.VipCardActivatedActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string/jumbo v1, "mobile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public static goVipChannelFilterActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageTitle"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.vip.ui.activity.VipChannelFilterActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string/jumbo v1, "filter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public static goVipPayResultActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "payResult"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.vip.ui.activity.VipPayResultActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "vip_pay_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public static goVipProductPayActivty(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.vip.ui.activity.VipProductPayActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public static goVipReserveActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.vip.ui.activity.VipMyReserveActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 319
    return-void
.end method

.method private static handleClickVipTab()V
    .locals 4

    .prologue
    .line 287
    sget-object v2, Lc8/uAo;->mVipAidl:Lc8/dAo;

    if-eqz v2, :cond_0

    sget-object v2, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    if-nez v2, :cond_1

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_0
    sget-object v2, Lc8/uAo;->mVipAidl:Lc8/dAo;

    if-eqz v2, :cond_0

    .line 292
    sget-object v2, Lc8/uAo;->mVipAidl:Lc8/dAo;

    invoke-interface {v2}, Lc8/dAo;->clickVipTab()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .restart local v0    # "e":Ljava/lang/Exception;
    instance-of v2, v0, Landroid/os/RemoteException;

    if-eqz v2, :cond_0

    .line 299
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    .line 300
    const/4 v2, 0x0

    sput-object v2, Lc8/uAo;->mVipAidl:Lc8/dAo;

    .line 301
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-object v3, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 302
    :catch_1
    move-exception v1

    .line 303
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static handleIsVip(Lc8/kAo;)V
    .locals 5
    .param p0, "vipListener"    # Lc8/kAo;

    .prologue
    const/4 v4, 0x0

    .line 207
    sget-object v2, Lc8/uAo;->mVipAidl:Lc8/dAo;

    if-eqz v2, :cond_0

    sget-object v2, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    if-nez v2, :cond_1

    .line 208
    :cond_0
    if-eqz p0, :cond_1

    .line 209
    invoke-interface {p0, v4}, Lc8/kAo;->setVip(Z)V

    .line 213
    :cond_1
    :try_start_0
    sget-object v2, Lc8/uAo;->mVipAidl:Lc8/dAo;

    if-eqz v2, :cond_3

    .line 214
    sget-object v2, Lc8/uAo;->mVipAidl:Lc8/dAo;

    new-instance v3, Lc8/pAo;

    invoke-direct {v3, p0}, Lc8/pAo;-><init>(Lc8/kAo;)V

    invoke-interface {v2, v3}, Lc8/dAo;->isVip(Lc8/gAo;)V

    .line 247
    :cond_2
    :goto_0
    return-void

    .line 229
    :cond_3
    if-eqz p0, :cond_2

    .line 230
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lc8/kAo;->setVip(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Landroid/os/RemoteException;

    if-eqz v2, :cond_4

    .line 236
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    .line 237
    const/4 v2, 0x0

    sput-object v2, Lc8/uAo;->mVipAidl:Lc8/dAo;

    .line 238
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-object v3, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :cond_4
    :goto_1
    if-eqz p0, :cond_2

    .line 244
    invoke-interface {p0, v4}, Lc8/kAo;->setVip(Z)V

    goto :goto_0

    .line 239
    :catch_1
    move-exception v1

    .line 240
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static initVipAidl()V
    .locals 4

    .prologue
    .line 322
    sget-object v1, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/uAo;->mVipAidl:Lc8/dAo;

    if-nez v1, :cond_1

    .line 323
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.youku.vip.service.VipBindService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lc8/tAo;

    invoke-direct {v1}, Lc8/tAo;-><init>()V

    sput-object v1, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    .line 347
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-object v2, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 349
    :cond_1
    return-void
.end method

.method public static declared-synchronized isReserve(Ljava/lang/String;)Z
    .locals 4
    .param p0, "show_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 358
    const-class v2, Lc8/uAo;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    sget-object v3, Lc8/uAo;->mVipAidl:Lc8/dAo;

    if-nez v3, :cond_1

    .line 359
    :cond_0
    invoke-static {}, Lc8/uAo;->initVipAidl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :goto_0
    monitor-exit v2

    return v1

    .line 363
    :cond_1
    :try_start_1
    sget-object v3, Lc8/uAo;->mVipAidl:Lc8/dAo;

    invoke-interface {v3, p0}, Lc8/dAo;->isReserve(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isVip(Lc8/kAo;)V
    .locals 6
    .param p0, "vipListener"    # Lc8/kAo;

    .prologue
    .line 158
    const-class v3, Lc8/uAo;

    monitor-enter v3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.youku.vip.service.VipBindService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    sget-object v2, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    sget-object v2, Lc8/uAo;->mVipAidl:Lc8/dAo;

    if-nez v2, :cond_2

    .line 161
    :cond_0
    new-instance v2, Lc8/nAo;

    invoke-direct {v2, p0}, Lc8/nAo;-><init>(Lc8/kAo;)V

    sput-object v2, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    .line 188
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-object v4, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v4, v5}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 189
    .local v1, "isBind":Z
    if-nez v1, :cond_1

    .line 190
    if-eqz p0, :cond_1

    .line 191
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lc8/kAo;->setVip(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v1    # "isBind":Z
    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    .line 195
    :cond_2
    :try_start_1
    invoke-static {p0}, Lc8/uAo;->handleIsVip(Lc8/kAo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized isVip()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 201
    const-class v5, Lc8/uAo;

    monitor-enter v5

    :try_start_0
    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "youku_vip_pref"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-class v2, Lc8/vdn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vdn;

    invoke-interface {v2}, Lc8/vdn;->isLogined()Z

    move-result v0

    .line 203
    .local v0, "isLogined":Z
    const-string/jumbo v2, "vip_is_vip"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    monitor-exit v5

    return v2

    :cond_0
    move v2, v4

    goto :goto_0

    .line 201
    .end local v0    # "isLogined":Z
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2
.end method

.method public static declared-synchronized reserve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/jAo;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "show_id"    # Ljava/lang/String;
    .param p2, "box_id"    # Ljava/lang/String;
    .param p3, "listener"    # Lc8/jAo;

    .prologue
    .line 372
    const-class v2, Lc8/uAo;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/uAo;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/uAo;->mVipAidl:Lc8/dAo;

    if-nez v1, :cond_2

    .line 373
    :cond_0
    invoke-static {}, Lc8/uAo;->initVipAidl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    if-eqz p3, :cond_1

    .line 376
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p3, v1}, Lc8/jAo;->reservedResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 383
    :cond_2
    :try_start_3
    sget-object v1, Lc8/uAo;->mVipAidl:Lc8/dAo;

    invoke-interface {v1, p0, p1, p2, p3}, Lc8/dAo;->reserve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/jAo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 384
    :catch_1
    move-exception v0

    .line 385
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
