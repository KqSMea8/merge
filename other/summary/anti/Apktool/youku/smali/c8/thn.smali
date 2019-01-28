.class public Lc8/thn;
.super Ljava/lang/Object;
.source "PassportServiceManager.java"


# static fields
.field private static final INIT_WITH_CALLBACK_SUCCESS:I = 0x0

.field public static final INTENT_ADD_SUBSCRIBE:I = 0x3f6

.field public static final INTENT_BUY_VIP:I = 0x3f4

.field public static final INTENT_CAPTURERESULT_ACTIVITY:I = 0x3f2

.field public static final INTENT_CHANNEL_ACTIVITY:I = 0x3ea

.field public static final INTENT_DETAIL_ACTIVITY_FAVORITE:I = 0x3ee

.field public static final INTENT_DETAIL_ACTIVITY_SHARE:I = 0x3ed

.field public static final INTENT_FAVORITE_ACTIVITY:I = 0x3e9

.field public static final INTENT_HAVEBUY_ACTIVITY:I = 0x3f1

.field public static final INTENT_HOME_PAGE_ACTIVITY:I = 0x3eb

.field public static final INTENT_HOME_YOUKU_GUESS_TAB:I = 0x3f7

.field public static final INTENT_INTERACT_POINT:I = 0x3f8

.field public static final INTENT_LOGIN_FIRST:I = 0x44b

.field public static final INTENT_NEED_PAY:I = 0x3f3

.field public static final INTENT_OPEN_LEVEL:I = 0x3f9

.field public static final INTENT_PLAYER_ACTIVITY_FAVORITE:I = 0x3f0

.field public static final INTENT_PLAYER_ACTIVITY_SHARE:I = 0x3ef

.field public static final INTENT_SUBSCRIBE:I = 0x3f5

.field public static final INTENT_UPLOAD_ACTIVITY:I = 0x3e8

.field private static final PASSPORT_SERVICE:Ljava/lang/String; = "com.youku.usercenter.passport.remote.PassportService"

.field public static mPassportServiceManager:Lc8/thn;


# instance fields
.field public from:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lc8/thn;->mPassportServiceManager:Lc8/thn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lc8/thn;)V
    .locals 0
    .param p0, "x0"    # Lc8/thn;

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/thn;->updateUserStatus()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/thn;
    .locals 2

    .prologue
    .line 79
    const-class v1, Lc8/thn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/thn;->mPassportServiceManager:Lc8/thn;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lc8/thn;

    invoke-direct {v0}, Lc8/thn;-><init>()V

    sput-object v0, Lc8/thn;->mPassportServiceManager:Lc8/thn;

    .line 82
    :cond_0
    sget-object v0, Lc8/thn;->mPassportServiceManager:Lc8/thn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateUserStatus()V
    .locals 3

    .prologue
    .line 396
    invoke-static {}, Lc8/phn;->getInstance()Lc8/phn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/phn;->updateVipStatus()V

    .line 399
    invoke-static {}, Lc8/phn;->getInstance()Lc8/phn;

    move-result-object v0

    const-string/jumbo v1, "userName"

    invoke-static {v1}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userNumberId"

    invoke-static {v2}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/phn;->uploadUTAnalyticsParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method


# virtual methods
.method public SNSAddBind(Lc8/kko;Ljava/lang/String;)V
    .locals 0
    .param p1, "aCallBack"    # Lc8/kko;
    .param p2, "aTlsite"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static {p1, p2}, Lc8/Gko;->SNSAddBind(Lc8/kko;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public SNSDeleteBind(Lc8/kko;Ljava/lang/String;)V
    .locals 0
    .param p1, "aCallback"    # Lc8/kko;
    .param p2, "aTlsite"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-static {p1, p2}, Lc8/Gko;->SNSDeleteBind(Lc8/kko;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lc8/Gko;->getCookie()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassportYKTK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lc8/Gko;->getYktk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lc8/Gko;->getSToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public handleMMAuth(Ljava/lang/String;)V
    .locals 0
    .param p1, "aAuthCode"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {p1}, Lc8/Gko;->handleMMAuth(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public initPassportSDK(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMainProcess"    # Z

    .prologue
    const/4 v2, 0x1

    .line 87
    new-instance v0, Lcom/youku/usercenter/passport/remote/PassportConfig;

    invoke-direct {v0}, Lcom/youku/usercenter/passport/remote/PassportConfig;-><init>()V

    .line 89
    .local v0, "config":Lcom/youku/usercenter/passport/remote/PassportConfig;
    invoke-static {}, Lc8/Dfh;->getEnvType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    .line 91
    iget-boolean v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    if-eqz v1, :cond_1

    .line 92
    const-string/jumbo v1, "20170313APP001251"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppId:Ljava/lang/String;

    .line 93
    const-string/jumbo v1, "a396c82b3dd6b4d656fff373b348750a4530d09f77b5fab6"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppSecret:Ljava/lang/String;

    .line 99
    :goto_1
    sget-object v1, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mPid:Ljava/lang/String;

    .line 100
    sget-object v1, Lc8/VLj;->GUID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lc8/VLj;->GUID:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mGuid:Ljava/lang/String;

    .line 102
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQLoginSupport:Z

    .line 103
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMLoginSupport:Z

    .line 104
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboLoginSupport:Z

    .line 105
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mTaobaoLoginSupport:Z

    .line 106
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayLoginSupport:Z

    .line 108
    const-string/jumbo v1, "200004"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQAppId:Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "wxa77232e51741dee3"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMAppId:Ljava/lang/String;

    .line 110
    const-string/jumbo v1, "3465353328"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboAppId:Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "http://m.youku.com/ykhybrid/bind"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboRedirectUrl:Ljava/lang/String;

    .line 112
    const-string/jumbo v1, "2014120500018816"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayAppId:Ljava/lang/String;

    .line 113
    if-eqz p2, :cond_3

    .line 114
    invoke-static {}, Lc8/phn;->getInstance()Lc8/phn;

    move-result-object v1

    invoke-static {v1}, Lc8/Gko;->registerListener(Lc8/lko;)V

    .line 115
    new-instance v1, Lc8/shn;

    invoke-direct {v1, p0, p1}, Lc8/shn;-><init>(Lc8/thn;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lc8/Gko;->init(Landroid/content/Context;Lcom/youku/usercenter/passport/remote/PassportConfig;Lc8/kko;)V

    .line 165
    :goto_3
    return-void

    .line 89
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    :cond_1
    const-string/jumbo v1, "20161012APP000707"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppId:Ljava/lang/String;

    .line 96
    const-string/jumbo v1, "472631569a25c83b565629e357bcf02ebb2e7716e76aa06c"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppSecret:Ljava/lang/String;

    goto :goto_1

    .line 100
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_2

    .line 163
    :cond_3
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lc8/Gko;->init(Landroid/content/Context;Lcom/youku/usercenter/passport/remote/PassportConfig;Lc8/kko;)V

    goto :goto_3
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v0

    return v0
.end method

.method public loginOut()V
    .locals 0

    .prologue
    .line 255
    invoke-static {}, Lc8/Gko;->logout()V

    .line 256
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 355
    invoke-static {p1, p2, p3}, Lc8/Gko;->onActivityResult(IILandroid/content/Intent;)V

    .line 356
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "aWebView"    # Landroid/webkit/WebView;
    .param p2, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {p1, p2}, Lc8/Gko;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public showFromTip(I)V
    .locals 1
    .param p1, "from"    # I

    .prologue
    .line 272
    if-eqz p1, :cond_1

    .line 274
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_2

    .line 277
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->user_login_tip_default:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 279
    sget v0, Lcom/youku/phone/R$string;->user_login_tip_upload:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 280
    :cond_3
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_4

    .line 281
    sget v0, Lcom/youku/phone/R$string;->tips_add_tag_need_login:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 282
    :cond_4
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_5

    .line 283
    sget v0, Lcom/youku/phone/R$string;->tips_add_tag_need_login:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 288
    :cond_5
    const/16 v0, 0x3ef

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_7

    .line 290
    :cond_6
    sget v0, Lcom/youku/phone/R$string;->user_login_tip_share:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 291
    :cond_7
    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_8

    .line 292
    sget v0, Lcom/youku/phone/R$string;->user_login_tip_pay:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 293
    :cond_8
    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_9

    .line 294
    sget v0, Lcom/youku/phone/R$string;->user_login_tip_pay:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 295
    :cond_9
    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_a

    .line 296
    sget v0, Lcom/youku/phone/R$string;->user_login_tip_pay:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 297
    :cond_a
    const/16 v0, 0x3f4

    if-ne p1, v0, :cond_b

    .line 298
    sget v0, Lcom/youku/phone/R$string;->user_login_tip_buy_vip:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 299
    :cond_b
    const/16 v0, 0x3f5

    if-ne p1, v0, :cond_c

    .line 300
    sget v0, Lcom/youku/phone/R$string;->user_login_tip_subscribe:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 301
    :cond_c
    const/16 v0, 0x3f6

    if-ne p1, v0, :cond_d

    .line 302
    sget v0, Lcom/youku/phone/R$string;->other_person_info_follow_need_login:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto :goto_0

    .line 303
    :cond_d
    const/16 v0, 0x3f8

    if-ne p1, v0, :cond_e

    .line 304
    sget v0, Lcom/youku/phone/R$string;->interactpoint_login_tips:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto/16 :goto_0

    .line 305
    :cond_e
    const/16 v0, 0x3f9

    if-ne p1, v0, :cond_f

    .line 306
    sget v0, Lcom/youku/phone/R$string;->level_login_tips:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto/16 :goto_0

    .line 307
    :cond_f
    const/16 v0, 0x44b

    if-ne p1, v0, :cond_1

    .line 308
    sget v0, Lcom/youku/phone/R$string;->login_first_tips:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    goto/16 :goto_0
.end method

.method public showTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-static {p1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method public startAuthActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aShortUrl"    # Ljava/lang/String;
    .param p3, "aAuthCode"    # Ljava/lang/String;
    .param p4, "aAuthUrl"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p1, p2, p3, p4}, Lc8/Gko;->startAuthActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public startAuthActivityForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/app/Activity;
    .param p2, "aShortUrl"    # Ljava/lang/String;
    .param p3, "aAuthCode"    # Ljava/lang/String;
    .param p4, "aAuthUrl"    # Ljava/lang/String;
    .param p5, "aRequestCode"    # I

    .prologue
    .line 250
    invoke-static {p1, p2, p3, p4, p5}, Lc8/Gko;->startAuthActivityForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    return-void
.end method

.method public startLoginActivity(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-static {p1}, Lc8/Gko;->startLoginActivity(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method public startLoginActivity(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p2}, Lc8/thn;->showFromTip(I)V

    .line 180
    invoke-static {p1}, Lc8/Gko;->startLoginActivity(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method public startLoginActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tips"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-virtual {p0, p2}, Lc8/thn;->showTips(Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lc8/Gko;->startLoginActivity(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method public startLoginActivityForResult(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 185
    invoke-static {p1, p2}, Lc8/Gko;->startLoginActivityForResult(Landroid/app/Activity;I)V

    .line 186
    return-void
.end method

.method public startLoginActivityForResult(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "tips"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p3}, Lc8/thn;->showTips(Ljava/lang/String;)V

    .line 190
    invoke-static {p1, p2}, Lc8/Gko;->startLoginActivityForResult(Landroid/app/Activity;I)V

    .line 191
    return-void
.end method

.method public startLoginActivityForResult(Landroid/app/Fragment;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method public startLoginActivityForResult(Landroid/app/Fragment;Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p2}, Lc8/thn;->showTips(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public startLoginActivityForResult(Landroid/support/v4/app/Fragment;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public startLoginActivityForResult(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .param p3, "tips"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0, p3}, Lc8/thn;->showTips(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public startRegisterActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 218
    invoke-static {p1}, Lc8/Gko;->startRegisterActivity(Landroid/app/Activity;)V

    .line 219
    return-void
.end method

.method public startRegisterActivityForResult(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 223
    invoke-static {p1, p2}, Lc8/Gko;->startRegisterActivityForResult(Landroid/app/Activity;I)V

    .line 224
    return-void
.end method

.method public validatePassport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "aYtid"    # Ljava/lang/String;
    .param p2, "aYktk"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {p1, p2}, Lc8/Gko;->validatePassport(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method
