.class public Lcom/youku/ui/activity/UpdateActivity;
.super Landroid/app/Activity;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/ui/activity/UpdateActivity$UpdateType;
    }
.end annotation


# static fields
.field public static final KEY_CONTENT:Ljava/lang/String; = "updatecontent"

.field public static final KEY_NEW_VERSION:Ljava/lang/String; = "updateversion"

.field public static final KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final KEY_UPDATE_TYPE:Ljava/lang/String; = "updateType"

.field public static final KEY_URL:Ljava/lang/String; = "updateurl"

.field public static final SOURCE_SETTINGS:Ljava/lang/String; = "settings"

.field private static TAG:Ljava/lang/String; = null

.field public static final UPDATE_SERVER_TIME_KEY:Ljava/lang/String; = "update_server_time_key"

.field private static final WAIT_HANDLER_WHAT:I = 0x1388


# instance fields
.field private mCancelable:Z

.field private mContent:Ljava/lang/String;

.field private mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

.field private mIntType:I

.field private mNoticeDialog:Lc8/Cbp;

.field private mUpdateManager:Lc8/Din;

.field private mUpdateMsg:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private mWaitTime:I

.field private progressDialog:Landroid/app/Dialog;

.field waitHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "update_tag"

    sput-object v0, Lcom/youku/ui/activity/UpdateActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mCancelable:Z

    .line 87
    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    .line 88
    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    .line 89
    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mWaitTime:I

    .line 406
    new-instance v0, Lc8/LGn;

    invoke-direct {v0, p0}, Lc8/LGn;-><init>(Lcom/youku/ui/activity/UpdateActivity;)V

    iput-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->waitHandler:Landroid/os/Handler;

    .line 425
    return-void
.end method

.method public static synthetic access$000(Lcom/youku/ui/activity/UpdateActivity;)Lc8/Cbp;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/youku/ui/activity/UpdateActivity;)Lcom/youku/ui/activity/UpdateActivity$UpdateType;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/youku/ui/activity/UpdateActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .param p1, "x1"    # Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youku/ui/activity/UpdateActivity;->showProgressDialog(Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/youku/ui/activity/UpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/ui/activity/UpdateActivity;->exit()V

    return-void
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/youku/ui/activity/UpdateActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/youku/ui/activity/UpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/ui/activity/UpdateActivity;->cancelUpdate()V

    return-void
.end method

.method public static synthetic access$600(Lcom/youku/ui/activity/UpdateActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/youku/ui/activity/UpdateActivity;)Lc8/Din;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    return-object v0
.end method

.method public static synthetic access$800(Lcom/youku/ui/activity/UpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/ui/activity/UpdateActivity;->choiceStateDialog()V

    return-void
.end method

.method public static synthetic access$900(Lcom/youku/ui/activity/UpdateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mWaitTime:I

    return v0
.end method

.method public static synthetic access$908(Lcom/youku/ui/activity/UpdateActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mWaitTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mWaitTime:I

    return v0
.end method

.method private cancelUpdate()V
    .locals 4

    .prologue
    .line 389
    const-string/jumbo v1, "update_server_time_key"

    sget-object v2, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-wide v2, v2, Lcom/youku/vo/Initial;->server_time:J

    invoke-static {v1, v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;J)V

    .line 391
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/youku/service/update/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 394
    const-string/jumbo v1, "step"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lc8/Din;->updateEventSend(Ljava/lang/String;I)V

    .line 395
    const-string/jumbo v1, "page_upgrade"

    const-string/jumbo v2, "optional"

    const-string/jumbo v3, "a2h0f.9048786.optional.cancel"

    invoke-static {v1, v2, v3}, Lc8/Din;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method private choiceStateDialog()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    invoke-virtual {v0}, Lc8/Din;->isDownLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    sget-object v1, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->force:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-ne v0, v1, :cond_0

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/ui/activity/UpdateActivity;->showProgressDialog(Z)V

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/ui/activity/UpdateActivity;->showProgressDialog(Z)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->showNoticeDialog()V

    goto :goto_0
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->finish()V

    .line 401
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    sget-object v1, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->force:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    invoke-virtual {v0}, Lc8/Din;->exitApp()V

    .line 404
    :cond_0
    return-void
.end method

.method public static forecCheckUpdate(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    :try_start_0
    invoke-static {p0}, Lc8/Eyo;->getInstance(Landroid/content/Context;)Lc8/Eyo;

    move-result-object v1

    .line 161
    .local v1, "appVersion":Lc8/Eyo;
    invoke-virtual {v1}, Lc8/Eyo;->getAppInitInfo()Lc8/Dyo;

    move-result-object v0

    .line 162
    .local v0, "appInfo":Lc8/Dyo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Dyo;->isNeedUpdate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v3, "i":Landroid/content/Intent;
    const-class v5, Lcom/youku/ui/activity/UpdateActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    const-string/jumbo v5, "source"

    const-string/jumbo v6, "settings"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v5, "updateurl"

    iget-object v6, v0, Lc8/Dyo;->up_download:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v5, "updateversion"

    iget-object v6, v0, Lc8/Dyo;->up_version:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v5, "updatecontent"

    iget-object v6, v0, Lc8/Dyo;->up_desc:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v5, "updateType"

    iget v6, v0, Lc8/Dyo;->up_type:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/youku/service/update/UpdateService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v4, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    .end local v0    # "appInfo":Lc8/Dyo;
    .end local v1    # "appVersion":Lc8/Eyo;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 175
    .restart local v0    # "appInfo":Lc8/Dyo;
    .restart local v1    # "appVersion":Lc8/Eyo;
    :cond_0
    sget v5, Lcom/youku/phone/R$string;->mycenter_setting_already_latest_version:I

    invoke-static {v5}, Lc8/bzo;->showTips(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v0    # "appInfo":Lc8/Dyo;
    .end local v1    # "appVersion":Lc8/Eyo;
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getIntType(Landroid/content/Intent;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 441
    const/4 v0, 0x2

    .line 442
    .local v0, "ret":I
    if-nez p1, :cond_0

    move v1, v0

    .line 452
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 445
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    const-string/jumbo v3, "updateType"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "updateType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    .line 447
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0

    .line 449
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/youku/ui/activity/UpdateActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 450
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_2
    move v1, v0

    .line 452
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method private getmEnumType(I)Lcom/youku/ui/activity/UpdateActivity$UpdateType;
    .locals 2
    .param p1, "intType"    # I

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "tempType":Lcom/youku/ui/activity/UpdateActivity$UpdateType;
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 379
    sget-object v0, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->force:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    .line 385
    :cond_0
    :goto_0
    return-object v0

    .line 380
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 381
    sget-object v0, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->push:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    goto :goto_0

    .line 382
    :cond_2
    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    .line 383
    sget-object v0, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->check:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    goto :goto_0
.end method

.method private showProgressDialog(Z)V
    .locals 10
    .param p1, "cancelAble"    # Z

    .prologue
    const/4 v9, 0x0

    .line 281
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    iget-object v5, p0, Lcom/youku/ui/activity/UpdateActivity;->mUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/ui/activity/UpdateActivity;->mVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/ui/activity/UpdateActivity;->mContent:Ljava/lang/String;

    iget v8, p0, Lcom/youku/ui/activity/UpdateActivity;->mIntType:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lc8/Din;->startUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    if-nez v4, :cond_0

    .line 284
    new-instance v4, Landroid/app/Dialog;

    sget v5, Lcom/youku/phone/R$style;->YoukuDialog:I

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    .line 285
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    sget v5, Lcom/youku/phone/R$layout;->youku_dialog_update:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 287
    :cond_0
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 288
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    sget v5, Lcom/youku/phone/R$id;->dialog_title:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 289
    .local v3, "titleText":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    sget v5, Lcom/youku/phone/R$id;->dialog_message:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    .local v1, "messageText":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6b63\u5728\u4e0b\u8f7d\u65b0\u7248\u672c\uff1av"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/ui/activity/UpdateActivity;->mVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    sget v5, Lcom/youku/phone/R$id;->update_background_btn:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 294
    .local v0, "backgroundBtn":Landroid/widget/TextView;
    if-eqz p1, :cond_1

    .line 295
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 296
    sget v4, Lcom/youku/phone/R$string;->update_background_text:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 297
    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$color;->btn_vip_dialog_ok_normal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 298
    const-string/jumbo v4, "#ff0177ae"

    invoke-static {v4}, Lc8/bzo;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    new-instance v4, Lc8/IGn;

    invoke-direct {v4, p0}, Lc8/IGn;-><init>(Lcom/youku/ui/activity/UpdateActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    :goto_0
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    sget v5, Lcom/youku/phone/R$id;->dialog_progress_bar:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 312
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    new-instance v5, Lc8/JGn;

    invoke-direct {v5, p0, v2}, Lc8/JGn;-><init>(Lcom/youku/ui/activity/UpdateActivity;Landroid/widget/ProgressBar;)V

    invoke-virtual {v4, v5}, Lc8/Din;->setOnProgressListener(Lc8/Cin;)V

    .line 342
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    new-instance v5, Lc8/KGn;

    invoke-direct {v5, p0}, Lc8/KGn;-><init>(Lcom/youku/ui/activity/UpdateActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 349
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 350
    return-void

    .line 307
    .end local v2    # "progressBar":Landroid/widget/ProgressBar;
    :cond_1
    sget v4, Lcom/youku/phone/R$string;->update_foreground_text:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v4, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 456
    const-string/jumbo v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 457
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 458
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    const/4 v2, 0x0

    .line 461
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-virtual {p0, v3}, Lcom/youku/ui/activity/UpdateActivity;->requestWindowFeature(I)Z

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget v1, Lcom/youku/phone/R$layout;->updateactvity:I

    invoke-virtual {p0, v1}, Lcom/youku/ui/activity/UpdateActivity;->setContentView(I)V

    .line 99
    invoke-static {}, Lc8/Din;->getInstance()Lc8/Din;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    .line 100
    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    invoke-virtual {v1}, Lc8/Din;->bindService()V

    .line 102
    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_6

    .line 105
    const-string/jumbo v1, "updateurl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mUrl:Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "updateversion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mVersion:Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "updatecontent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mContent:Ljava/lang/String;

    .line 108
    invoke-direct {p0, v0}, Lcom/youku/ui/activity/UpdateActivity;->getIntType(Landroid/content/Intent;)I

    move-result v1

    iput v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mIntType:I

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " activity intent data, version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/ui/activity/UpdateActivity;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " intType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/ui/activity/UpdateActivity;->mIntType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/ui/activity/UpdateActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    iget v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mIntType:I

    invoke-direct {p0, v1}, Lcom/youku/ui/activity/UpdateActivity;->getmEnumType(I)Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    .line 113
    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->finish()V

    .line 152
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mContent:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 132
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mContent:Ljava/lang/String;

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    sget-object v2, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->check:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    sget-object v2, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->force:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-ne v1, v2, :cond_4

    .line 136
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mCancelable:Z

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/ui/activity/UpdateActivity;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/ui/activity/UpdateActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateMsg:Ljava/lang/String;

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    invoke-virtual {v1}, Lc8/Din;->isStateReturned()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activity is bind out :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    invoke-virtual {v2}, Lc8/Din;->isStateReturned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/youku/ui/activity/UpdateActivity;->choiceStateDialog()V

    goto :goto_0

    .line 139
    :cond_4
    iput-boolean v3, p0, Lcom/youku/ui/activity/UpdateActivity;->mCancelable:Z

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5efa\u8bae\u5728wifi\u6761\u4ef6\u4e0b\u66f4\u65b0\n\n\u66f4\u65b0\u5185\u5bb9\uff1a\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/ui/activity/UpdateActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateMsg:Ljava/lang/String;

    goto :goto_1

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->waitHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 150
    :cond_6
    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateManager:Lc8/Din;

    invoke-virtual {v0}, Lc8/Din;->unbindService()V

    .line 365
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    .line 367
    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 371
    iput-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->progressDialog:Landroid/app/Dialog;

    .line 373
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 374
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 360
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 355
    return-void
.end method

.method public showNoticeDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 196
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lc8/Cbp;

    sget-object v1, Lcom/youku/widget/YoukuDialog$TYPE;->update:Lcom/youku/widget/YoukuDialog$TYPE;

    invoke-direct {v0, p0, v1}, Lc8/Cbp;-><init>(Landroid/app/Activity;Lcom/youku/widget/YoukuDialog$TYPE;)V

    iput-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u53d1\u73b0\u65b0\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/ui/activity/UpdateActivity;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Cbp;->setTitle(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    iget-object v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mUpdateMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Cbp;->setMessage(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    iget-boolean v1, p0, Lcom/youku/ui/activity/UpdateActivity;->mCancelable:Z

    invoke-virtual {v0, v1}, Lc8/Cbp;->setCanceledOnTouchOutside(Z)V

    .line 203
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->cancel_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/Cbp;->setNormalNegtiveTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    sget v1, Lcom/youku/phone/R$drawable;->btn_vip_dialog_cancel:I

    invoke-virtual {v0, v1}, Lc8/Cbp;->setNormalNegtiveBackGround(I)V

    .line 205
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    sget v1, Lcom/youku/phone/R$string;->init_update_now:I

    new-instance v2, Lc8/EGn;

    invoke-direct {v2, p0}, Lc8/EGn;-><init>(Lcom/youku/ui/activity/UpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Lc8/Cbp;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    sget-object v1, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->force:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-eq v0, v1, :cond_3

    .line 236
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    sget v1, Lcom/youku/phone/R$string;->init_update_nexttime:I

    new-instance v2, Lc8/FGn;

    invoke-direct {v2, p0}, Lc8/FGn;-><init>(Lcom/youku/ui/activity/UpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Lc8/Cbp;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    new-instance v1, Lc8/HGn;

    invoke-direct {v1, p0}, Lc8/HGn;-><init>(Lcom/youku/ui/activity/UpdateActivity;)V

    invoke-virtual {v0, v1}, Lc8/Cbp;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 261
    invoke-virtual {p0}, Lcom/youku/ui/activity/UpdateActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    invoke-virtual {v0}, Lc8/Cbp;->show()V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    sget-object v1, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->force:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-ne v0, v1, :cond_2

    .line 266
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    invoke-virtual {v0, v3}, Lc8/Cbp;->hideNegtiveBtn(Z)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mEnumType:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    sget-object v1, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->force:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-ne v0, v1, :cond_4

    .line 270
    const-string/jumbo v0, "show"

    invoke-static {v0, v3}, Lc8/Din;->updateEventSend(Ljava/lang/String;I)V

    .line 271
    const-string/jumbo v0, "ShowContent"

    const-string/jumbo v1, "a2h0f.9048786.mandatory.upgrade"

    invoke-static {v0, v1}, Lc8/Din;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_1
    return-void

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/youku/ui/activity/UpdateActivity;->mNoticeDialog:Lc8/Cbp;

    new-instance v1, Lc8/GGn;

    invoke-direct {v1, p0}, Lc8/GGn;-><init>(Lcom/youku/ui/activity/UpdateActivity;)V

    invoke-virtual {v0, v1}, Lc8/Cbp;->setOnBackClickListener(Lc8/Bbp;)V

    goto :goto_0

    .line 273
    :cond_4
    const-string/jumbo v0, "show"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc8/Din;->updateEventSend(Ljava/lang/String;I)V

    .line 274
    const-string/jumbo v0, "ShowContent"

    const-string/jumbo v1, "a2h0f.9048786.optional.upgrade"

    invoke-static {v0, v1}, Lc8/Din;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
