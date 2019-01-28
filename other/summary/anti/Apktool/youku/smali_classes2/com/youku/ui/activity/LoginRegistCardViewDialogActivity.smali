.class public Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;
.super Landroid/app/Activity;
.source "LoginRegistCardViewDialogActivity.java"


# static fields
.field public static final GO_LOGIN:I = 0x7d3

.field public static final GO_REGIST:I = 0x7d2

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

.field public static final INTENT_LOGIN:I = 0x0

.field public static final INTENT_LOGIN_FIRST:I = 0x44b

.field public static final INTENT_NEED_PAY:I = 0x3f3

.field public static final INTENT_OPEN_LEVEL:I = 0x3f9

.field public static final INTENT_PLAYER_ACTIVITY_FAVORITE:I = 0x3f0

.field public static final INTENT_PLAYER_ACTIVITY_SHARE:I = 0x3ef

.field public static final INTENT_REGISTER:I = 0x1

.field public static final INTENT_SUBSCRIBE:I = 0x3f5

.field public static final INTENT_UPLOAD_ACTIVITY:I = 0x3e8

.field public static final KEY_FAVOR_SHOWID:Ljava/lang/String; = "FAVOR_SHOWID"

.field public static final KEY_FAVOR_VID:Ljava/lang/String; = "FAVOR_VID"

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_TIPS:Ljava/lang/String; = "tips"

.field public static final LOGIN_FAIL:I = 0x7d1

.field public static final LOGIN_REQUEST:I = 0x7d0

.field public static final LOGIN_SUCCESS:I = 0x7d0

.field private static final Login_Fragment:I = 0x0

.field public static final NO_NETWORK:I = 0x7d6

.field public static final REGIST_FAIL:I = 0x7d5

.field public static final REGIST_SUCCESS:I = 0x7d4

.field public static final TRACK_LOGIN_SOURCE:Ljava/lang/String; = "track_login_source"

.field public static instance:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;


# instance fields
.field private curfragment:I

.field private from:I

.field public isFillActivity:Z

.field private login_regist_card_view:Lc8/pYo;

.field public mAccountBindData:Lcom/youku/android/youkusettingservice/data/AccountBindData;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private tips:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->instance:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    iput v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    .line 99
    iput v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->curfragment:I

    .line 105
    iput-object v1, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->mAccountBindData:Lcom/youku/android/youkusettingservice/data/AccountBindData;

    .line 108
    iput-boolean v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->isFillActivity:Z

    .line 110
    iput-object v1, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->tips:Ljava/lang/String;

    .line 157
    new-instance v0, Lc8/JFn;

    invoke-direct {v0, p0}, Lc8/JFn;-><init>(Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;)V

    iput-object v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->doSuccess()V

    return-void
.end method

.method private doSuccess()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 269
    invoke-virtual {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 272
    :cond_0
    return-void
.end method

.method private hidSoftWareInputMethod()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 289
    invoke-virtual {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, "view":Landroid/view/View;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "===LoginRegistActivity==this=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "===LoginRegistActivity==view=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    if-eqz v1, :cond_1

    .line 294
    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 295
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 304
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->login_regist_card_view:Lc8/pYo;

    if-eqz v2, :cond_0

    .line 298
    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 300
    .restart local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->login_regist_card_view:Lc8/pYo;

    invoke-virtual {v2}, Lc8/pYo;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static lanuchActivty(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/thn;->startLoginActivity(Landroid/content/Context;)V

    .line 189
    return-void
.end method

.method public static lanuchLaifengActivty(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/thn;->startLoginActivity(Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method public static launchFillActivity(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/thn;->startLoginActivity(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public static launchLoginBindActivity(Landroid/content/Context;Lcom/youku/android/youkusettingservice/data/AccountBindData;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mAccountBindData"    # Lcom/youku/android/youkusettingservice/data/AccountBindData;

    .prologue
    .line 202
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/thn;->startLoginActivity(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method private registBroadReceiver()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.youku.action.LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "com.youku.action.LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "com.youku.action.LOGIN_BIND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method private setHeightLoginRegistView()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 276
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 277
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 314
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    invoke-direct {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->hidSoftWareInputMethod()V

    .line 284
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sput-object p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->instance:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    .line 118
    invoke-virtual {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->setFullscreen()V

    .line 124
    const v0, 0x103000b

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->setTheme(I)V

    .line 125
    sget v0, Lcom/youku/phone/R$layout;->card_view_login_or_regist_activity:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->setContentView(I)V

    .line 126
    sget v0, Lcom/youku/phone/R$id;->login_regist_card_view:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/pYo;

    iput-object v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->login_regist_card_view:Lc8/pYo;

    .line 128
    invoke-virtual {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "AccountBindData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/android/youkusettingservice/data/AccountBindData;

    iput-object v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->mAccountBindData:Lcom/youku/android/youkusettingservice/data/AccountBindData;

    .line 129
    invoke-virtual {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isFillActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->isFillActivity:Z

    .line 131
    iget-object v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->mAccountBindData:Lcom/youku/android/youkusettingservice/data/AccountBindData;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->login_regist_card_view:Lc8/pYo;

    iget-object v1, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->mAccountBindData:Lcom/youku/android/youkusettingservice/data/AccountBindData;

    invoke-virtual {v0, v1}, Lc8/pYo;->setLoginBindLayout(Lcom/youku/android/youkusettingservice/data/AccountBindData;)V

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->isFillActivity:Z

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->login_regist_card_view:Lc8/pYo;

    iget-boolean v1, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->isFillActivity:Z

    invoke-virtual {v0, v1}, Lc8/pYo;->setFillActivityLayout(Z)V

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->setHeightLoginRegistView()V

    .line 139
    invoke-virtual {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->showFromTip()V

    .line 140
    invoke-direct {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->registBroadReceiver()V

    .line 142
    invoke-static {}, Lc8/JWc;->getInstance()Lc8/JWc;

    move-result-object v0

    sget-object v1, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->instance:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    const-string/jumbo v2, "LoginRegistCardViewDialogActivity"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lc8/JWc;->startSessionForUt(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 332
    iget-object v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    :cond_0
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 336
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->instance:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    .line 338
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 368
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 362
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 380
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 374
    return-void
.end method

.method public setFullscreen()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->requestWindowFeature(I)Z

    .line 326
    invoke-virtual {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 327
    return-void
.end method

.method public showFromTip()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "track_login_source"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 216
    .local v1, "mTrackLoginSource":I
    const-string/jumbo v2, "15"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string/jumbo v2, "15"

    sput-object v2, Lc8/tin;->loginSource:Ljava/lang/String;

    .line 219
    :cond_0
    const-string/jumbo v2, "tips"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->tips:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->tips:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->tips:Ljava/lang/String;

    invoke-static {v2}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    const-string/jumbo v2, "from"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    .line 225
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    if-eqz v2, :cond_1

    .line 227
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3f0

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3ee

    if-ne v2, v3, :cond_4

    .line 230
    :cond_3
    sget v2, Lcom/youku/phone/R$string;->user_login_tip_default:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 231
    :cond_4
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_5

    .line 232
    sget v2, Lcom/youku/phone/R$string;->user_login_tip_upload:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 233
    :cond_5
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_6

    .line 234
    sget v2, Lcom/youku/phone/R$string;->tips_add_tag_need_login:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 235
    :cond_6
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3eb

    if-ne v2, v3, :cond_7

    .line 236
    sget v2, Lcom/youku/phone/R$string;->tips_add_tag_need_login:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 241
    :cond_7
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3ef

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3ed

    if-ne v2, v3, :cond_9

    .line 243
    :cond_8
    sget v2, Lcom/youku/phone/R$string;->user_login_tip_share:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 244
    :cond_9
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3f1

    if-ne v2, v3, :cond_a

    .line 245
    sget v2, Lcom/youku/phone/R$string;->user_login_tip_pay:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 246
    :cond_a
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3f2

    if-ne v2, v3, :cond_b

    .line 247
    sget v2, Lcom/youku/phone/R$string;->user_login_tip_pay:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 248
    :cond_b
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3f3

    if-ne v2, v3, :cond_c

    .line 249
    sget v2, Lcom/youku/phone/R$string;->user_login_tip_pay:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto/16 :goto_0

    .line 250
    :cond_c
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3f4

    if-ne v2, v3, :cond_d

    .line 251
    sget v2, Lcom/youku/phone/R$string;->user_login_tip_buy_vip:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto/16 :goto_0

    .line 252
    :cond_d
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3f5

    if-ne v2, v3, :cond_e

    .line 253
    sget v2, Lcom/youku/phone/R$string;->user_login_tip_subscribe:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto/16 :goto_0

    .line 254
    :cond_e
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3f6

    if-ne v2, v3, :cond_f

    .line 255
    sget v2, Lcom/youku/phone/R$string;->other_person_info_follow_need_login:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto/16 :goto_0

    .line 256
    :cond_f
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3f8

    if-ne v2, v3, :cond_10

    .line 257
    sget v2, Lcom/youku/phone/R$string;->interactpoint_login_tips:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto/16 :goto_0

    .line 258
    :cond_10
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x3f9

    if-ne v2, v3, :cond_11

    .line 259
    sget v2, Lcom/youku/phone/R$string;->level_login_tips:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto/16 :goto_0

    .line 260
    :cond_11
    iget v2, p0, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->from:I

    const/16 v3, 0x44b

    if-ne v2, v3, :cond_1

    .line 261
    sget v2, Lcom/youku/phone/R$string;->login_first_tips:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto/16 :goto_0
.end method
