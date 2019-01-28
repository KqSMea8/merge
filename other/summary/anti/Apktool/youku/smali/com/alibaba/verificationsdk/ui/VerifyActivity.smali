.class public Lcom/alibaba/verificationsdk/ui/VerifyActivity;
.super Landroid/app/Activity;
.source "VerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/odc;,
        Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;,
        Lc8/Cdc;,
        Lc8/Bdc;,
        Lc8/ydc;,
        Lc8/Adc;
    }
.end annotation


# static fields
.field public static final ALIAUTH_CLIENT_ERROR_GENERIC:I = 0xc350

.field public static final ALIAUTH_SERVICE_ERROR_MAXTRY:I = 0xea60

.field public static final APP_DATA:Ljava/lang/String; = "app_data"

.field private static AUTHCODE:Ljava/lang/String; = null

.field private static CAPTCHA_TYPE:Ljava/lang/String; = null

.field public static DAILY:Ljava/lang/String; = null

.field private static DEVICE_TYPE:Ljava/lang/String; = null

.field private static DPI:Ljava/lang/String; = null

.field private static EXTEND_DATA:Ljava/lang/String; = null

.field private static final HOSTENV:Ljava/lang/String; = "HOSTENV"

.field private static final INFO_TOKEN:Ljava/lang/String; = "info_token"

.field private static final INIT_START:I = 0x2710

.field private static LANG:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "VerifyActivity"

.field public static ONLINE:Ljava/lang/String; = null

.field private static final PHONE:Ljava/lang/String; = "phone"

.field private static PHONE_NUMBER:Ljava/lang/String; = null

.field public static PREONLINE:Ljava/lang/String; = null

.field private static final RES_REQUEST_END:I = 0x186ba

.field private static final RES_REQUEST_FAILED:I = 0x186b9

.field private static final RES_REQUEST_START:I = 0x186b7

.field private static final RES_REQUEST_SUCC:I = 0x186b8

.field private static RES_ROOT_PATH:Ljava/lang/String; = null

.field private static final RETRY_COUNT:I = 0x3

.field private static SESSION_ID:Ljava/lang/String; = null

.field private static final SMS_CALL_REQUEST_FAILED:I = 0x186af

.field private static final SMS_CALL_REQUEST_START:I = 0x186ad

.field private static final SMS_CALL_REQUEST_SUCC:I = 0x186ae

.field private static final SMS_CALL_VERIFY_FAILED:I = 0x186a5

.field private static final SMS_CALL_VERIFY_START:I = 0x186a3

.field private static final SMS_CALL_VERIFY_SUCC:I = 0x186a4

.field private static USERINPUTCAPTCHA:Ljava/lang/String; = null

.field private static final VERIFY_ANIMATION_END:I = 0x2712

.field private static final VERIFY_ANIMATION_START:I = 0x2711

.field public static final VERIFY_FAILED:I = 0x0

.field private static final VERIFY_IN_BOUND:I = 0x186a1

.field private static final VERIFY_OUT_BOUND:I = 0x186a2

.field private static final VERIFY_START:I = 0x2713

.field public static final VERIFY_SUCC:I = 0x1

.field public static VERSION:Ljava/lang/String;

.field private static appkey:Ljava/lang/String;

.field private static asfKey:Ljava/lang/String;

.field private static callback:Lc8/Vcc;

.field private static hostenv:Ljava/lang/String;

.field private static info_token:Ljava/lang/String;

.field private static mScreenHeight:I

.field private static mScreenWidth:I

.field private static number:Ljava/lang/String;

.field private static retryCount:I

.field public static sgInited:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private static verifyActivity:Landroid/app/Activity;

.field private static verifyType:Lcom/alibaba/verificationsdk/ui/VerifyType;


# instance fields
.field private aLiLoadingView:Lc8/Odc;

.field private back:Landroid/view/View;

.field private btnCall:Landroid/view/View;

.field private btnSubmit:Landroid/view/View;

.field private content:Landroid/widget/LinearLayout;

.field private draw:Lc8/Qdc;

.field private etCode:Landroid/widget/EditText;

.field private etNumber:Landroid/widget/EditText;

.field public finishTask:Ljava/lang/Runnable;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private frame:Lc8/Rdc;

.field public handler:Landroid/os/Handler;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public handlerResRequest:Landroid/os/Handler;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public handlerSMSorCallRequest:Landroid/os/Handler;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public handlerSMSorCallVerification:Landroid/os/Handler;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public initTask:Ljava/lang/Runnable;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private isFingerValid:Z

.field private isInBoundary:Z

.field private logo:Landroid/widget/ImageView;

.field private lp:Landroid/widget/FrameLayout$LayoutParams;

.field private ncComponent:Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

.field private refresh:Landroid/widget/Button;

.field private refreshBg:Landroid/widget/FrameLayout;

.field private refreshCountDownTimer:Lc8/Bdc;

.field private requestCountDownTimer:Lc8/Cdc;

.field public requestResRunnable:Ljava/lang/Runnable;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public requestRunnable:Ljava/lang/Runnable;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private resConfig:Lc8/Ucc;

.field private root:Landroid/widget/FrameLayout;

.field private sessionId:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private submitLoading:Lc8/Odc;

.field private tipsSubTV:Landroid/widget/TextView;

.field private tipsTV:Landroid/widget/TextView;

.field private txRequest:Landroid/widget/TextView;

.field private txSubmit:Landroid/widget/TextView;

.field public verificationRunnable:Ljava/lang/Runnable;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    sput v2, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenWidth:I

    .line 78
    sput v2, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenHeight:I

    .line 120
    sput-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->asfKey:Ljava/lang/String;

    .line 121
    sput-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->appkey:Ljava/lang/String;

    .line 122
    sput-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->AUTHCODE:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "device_type"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->DEVICE_TYPE:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "dpi"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->DPI:Ljava/lang/String;

    .line 128
    const-string/jumbo v0, "lang"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->LANG:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "captcha_type"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->CAPTCHA_TYPE:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "phone_number"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->PHONE_NUMBER:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "session_id"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->SESSION_ID:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "extend_data"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->EXTEND_DATA:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "userInputCaptcha"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->USERINPUTCAPTCHA:Ljava/lang/String;

    .line 144
    sput-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->RES_ROOT_PATH:Ljava/lang/String;

    .line 151
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->retryCount:I

    .line 155
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->ONLINE:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "PREONLINE"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->PREONLINE:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "DAILY"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->DAILY:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "2.3.2.2152703-2ND-SMS-NC"

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->VERSION:Ljava/lang/String;

    .line 161
    sput-boolean v2, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sgInited:Z

    .line 1618
    sput-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->callback:Lc8/Vcc;

    .line 1629
    sput-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->info_token:Ljava/lang/String;

    .line 1630
    sput-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->number:Ljava/lang/String;

    .line 1633
    sput-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->hostenv:Ljava/lang/String;

    .line 1785
    sput-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->isInBoundary:Z

    .line 95
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->tipsTV:Landroid/widget/TextView;

    .line 96
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->tipsSubTV:Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->draw:Lc8/Qdc;

    .line 100
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->frame:Lc8/Rdc;

    .line 101
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->logo:Landroid/widget/ImageView;

    .line 104
    iput-boolean v1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->isFingerValid:Z

    .line 106
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->back:Landroid/view/View;

    .line 110
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    .line 111
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txSubmit:Landroid/widget/TextView;

    .line 112
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnCall:Landroid/view/View;

    .line 114
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    .line 115
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    .line 116
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshCountDownTimer:Lc8/Bdc;

    .line 117
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etNumber:Landroid/widget/EditText;

    .line 118
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etCode:Landroid/widget/EditText;

    .line 140
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sessionId:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 153
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshBg:Landroid/widget/FrameLayout;

    .line 154
    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    .line 232
    new-instance v0, Lc8/gdc;

    invoke-direct {v0, p0}, Lc8/gdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initTask:Ljava/lang/Runnable;

    .line 241
    new-instance v0, Lc8/pdc;

    invoke-direct {v0, p0}, Lc8/pdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->finishTask:Ljava/lang/Runnable;

    .line 791
    new-instance v0, Lc8/edc;

    invoke-direct {v0, p0}, Lc8/edc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handler:Landroid/os/Handler;

    .line 1054
    new-instance v0, Lc8/fdc;

    invoke-direct {v0, p0}, Lc8/fdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallVerification:Landroid/os/Handler;

    .line 1122
    new-instance v0, Lc8/hdc;

    invoke-direct {v0, p0}, Lc8/hdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallRequest:Landroid/os/Handler;

    .line 1242
    new-instance v0, Lc8/idc;

    invoke-direct {v0, p0}, Lc8/idc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestRunnable:Ljava/lang/Runnable;

    .line 1309
    new-instance v0, Lc8/jdc;

    invoke-direct {v0, p0}, Lc8/jdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verificationRunnable:Ljava/lang/Runnable;

    .line 1387
    new-instance v0, Lc8/mdc;

    invoke-direct {v0, p0}, Lc8/mdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    .line 1498
    new-instance v0, Lc8/ndc;

    invoke-direct {v0, p0}, Lc8/ndc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestResRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic access$000()Lc8/Vcc;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->callback:Lc8/Vcc;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->draw:Lc8/Qdc;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->targetOutBoundary()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshBg:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static synthetic access$1200()Lcom/alibaba/verificationsdk/ui/VerifyType;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyType:Lcom/alibaba/verificationsdk/ui/VerifyType;

    return-object v0
.end method

.method public static synthetic access$1300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->hideKeyboard()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etCode:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic access$1500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic access$1600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestForSMSorCallVerification()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Cdc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    return-object v0
.end method

.method public static synthetic access$1800(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestSMSVerification()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCallVerification()V

    return-void
.end method

.method public static synthetic access$200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->isFingerValid:Z

    return v0
.end method

.method public static synthetic access$2000()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->asfKey:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$202(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .param p1, "x1"    # Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->isFingerValid:Z

    return p1
.end method

.method public static synthetic access$2100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->aLiLoadingView:Lc8/Odc;

    return-object v0
.end method

.method public static synthetic access$2200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic access$2300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Ucc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->resConfig:Lc8/Ucc;

    return-object v0
.end method

.method public static synthetic access$2400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->lp:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public static synthetic access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshCountDownTimer:Lc8/Bdc;

    return-object v0
.end method

.method public static synthetic access$2600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->tipsTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic access$2700()I
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenHeight:I

    return v0
.end method

.method public static synthetic access$2800()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->AUTHCODE:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$2900(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txSubmit:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->frame:Lc8/Rdc;

    return-object v0
.end method

.method public static synthetic access$3000(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->submitLoading:Lc8/Odc;

    return-object v0
.end method

.method public static synthetic access$3100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3102(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sessionId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnCall:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic access$3406()I
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->retryCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->retryCount:I

    return v0
.end method

.method public static synthetic access$3500()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->CAPTCHA_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3600()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->PHONE_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3700()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->number:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3800()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->info_token:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3900()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->hostenv:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestForVerification()V

    return-void
.end method

.method public static synthetic access$4000()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->SESSION_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$4100()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->USERINPUTCAPTCHA:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$4200()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->EXTEND_DATA:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$4300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static synthetic access$4400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .param p1, "x1"    # [B
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$4500()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->RES_ROOT_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$4600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->readResConfig()V

    return-void
.end method

.method public static synthetic access$4700()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->DEVICE_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$4800()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->DPI:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$4900()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->LANG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500()I
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    sget v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenWidth:I

    return v0
.end method

.method public static synthetic access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->ncComponent:Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    return-object v0
.end method

.method public static synthetic access$800(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->targetInBoundary()V

    return-void
.end method

.method public static synthetic access$900(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->isInBoundary:Z

    return v0
.end method

.method public static synthetic access$902(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/verificationsdk/ui/VerifyActivity;
    .param p1, "x1"    # Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->isInBoundary:Z

    return p1
.end method

.method public static finishVerifyUI()V
    .locals 1

    .prologue
    .line 1791
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1792
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1793
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyActivity:Landroid/app/Activity;

    .line 1794
    return-void
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 1597
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1599
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1600
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1601
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1605
    :cond_0
    return-void
.end method

.method static initWithWsg(Landroid/content/Context;Lc8/Vcc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "callback"    # Lc8/Vcc;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 1722
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1727
    .local v3, "instance":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSDKVerison()Ljava/lang/String;

    move-result-object v5

    .line 1728
    .local v5, "version":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "6.3.35"

    invoke-static {v5, v6}, Lc8/Jdc;->isVersionUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1729
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SecurityGuardxxx.jar/aar with wrong version, now is6.3.35,at least should be:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1723
    .end local v3    # "instance":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .end local v5    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1725
    .local v0, "excpeiton":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SecurityGuard with excpetion code:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1732
    .end local v0    # "excpeiton":Lcom/alibaba/wireless/security/open/SecException;
    .restart local v3    # "instance":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v4

    .line 1733
    .local v4, "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    if-nez v4, :cond_2

    .line 1734
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Please check yw_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg errorcode 001"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1735
    :cond_2
    sput-object p3, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->appkey:Ljava/lang/String;

    .line 1736
    sput-object p2, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->AUTHCODE:Ljava/lang/String;

    .line 1737
    if-eqz v4, :cond_4

    .line 1740
    :try_start_1
    const-string/jumbo v6, "asfkey"

    sget-object v7, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->AUTHCODE:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getExtraData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1747
    .local v2, "extraData":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1749
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Please check yw_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg errorcode 002"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1742
    .end local v2    # "extraData":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1744
    .local v1, "expt":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Please check yw_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg getErrorCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1753
    .end local v1    # "expt":Lcom/alibaba/wireless/security/open/SecException;
    .restart local v2    # "extraData":Ljava/lang/String;
    :cond_3
    sput-object v2, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->asfKey:Ljava/lang/String;

    .line 1756
    .end local v2    # "extraData":Ljava/lang/String;
    :cond_4
    sput-object p1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->callback:Lc8/Vcc;

    .line 1757
    return-void
.end method

.method private readResConfig()V
    .locals 4

    .prologue
    .line 1491
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->RES_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "config.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lc8/Hdc;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "resConfigStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1494
    iget-object v2, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->resConfig:Lc8/Ucc;

    invoke-virtual {v2, v1}, Lc8/Ucc;->fromJson(Ljava/lang/String;)V

    .line 1496
    :cond_0
    return-void
.end method

.method private requestCallVerification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1228
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1229
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 1230
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txSubmit:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1232
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tips_sub"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->tipsSubTV:Landroid/widget/TextView;

    .line 1233
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->tipsSubTV:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1235
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ali_vsdk_verify_sms_timeout"

    const-string/jumbo v3, "string"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    const-string/jumbo v1, "#adadad"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1237
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    invoke-virtual {v0}, Lc8/Cdc;->cancel()V

    .line 1238
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    invoke-virtual {v0}, Lc8/Cdc;->start()Landroid/os/CountDownTimer;

    .line 1239
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallRequest:Landroid/os/Handler;

    const v1, 0x186ad

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1240
    return-void
.end method

.method private requestForResources()V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    const v1, 0x186b7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1374
    return-void
.end method

.method private requestForSMSorCallVerification()V
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallVerification:Landroid/os/Handler;

    const v1, 0x186a3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1307
    return-void
.end method

.method private requestForVerification()V
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1579
    return-void
.end method

.method private requestSMSVerification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1218
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1219
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ali_vsdk_verify_sms_timeout"

    const-string/jumbo v3, "string"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    const-string/jumbo v1, "#adadad"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1221
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    invoke-virtual {v0}, Lc8/Cdc;->cancel()V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    invoke-virtual {v0}, Lc8/Cdc;->start()Landroid/os/CountDownTimer;

    .line 1224
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallRequest:Landroid/os/Handler;

    const v1, 0x186ad

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1225
    return-void
.end method

.method public static setEnv(Ljava/lang/String;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 1788
    sput-object p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->hostenv:Ljava/lang/String;

    .line 1789
    return-void
.end method

.method public static startSimpleVerifyUI(Landroid/content/Context;Lcom/alibaba/verificationsdk/ui/VerifyType;Ljava/lang/String;Ljava/lang/String;Lc8/Vcc;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "verifyType"    # Lcom/alibaba/verificationsdk/ui/VerifyType;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callback"    # Lc8/Vcc;

    .prologue
    .line 1708
    :try_start_0
    invoke-static {p0, p1, p4, p2, p3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->startSimpleVerifyUIInternal(Landroid/content/Context;Lcom/alibaba/verificationsdk/ui/VerifyType;Lc8/Vcc;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    :goto_0
    return-void

    .line 1710
    :catch_0
    move-exception v0

    .line 1712
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1713
    .local v1, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "errorMsg"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    const-string/jumbo v2, "errorCode"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    const/4 v2, 0x0

    invoke-interface {p4, v2, v1}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    goto :goto_0
.end method

.method static startSimpleVerifyUIInternal(Landroid/content/Context;Lcom/alibaba/verificationsdk/ui/VerifyType;Lc8/Vcc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "verifyType"    # Lcom/alibaba/verificationsdk/ui/VerifyType;
    .param p2, "callback"    # Lc8/Vcc;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1765
    invoke-static {p0, p2, p3, p4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initWithWsg(Landroid/content/Context;Lc8/Vcc;Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    if-nez p1, :cond_0

    .line 1768
    sget-object p1, Lcom/alibaba/verificationsdk/ui/VerifyType;->NOCAPTCHA:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 1772
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1773
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    sput-object p1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyType:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 1780
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1781
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1782
    return-void

    .line 1775
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1776
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startVerifyUI(Landroid/content/Context;Ljava/util/Map;Lcom/alibaba/verificationsdk/ui/VerifyType;Ljava/lang/String;Ljava/lang/String;Lc8/Vcc;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "verifyType"    # Lcom/alibaba/verificationsdk/ui/VerifyType;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Vcc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/verificationsdk/ui/VerifyType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc8/Vcc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1642
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->startVerifyUI_internal(Landroid/content/Context;Ljava/util/Map;Lcom/alibaba/verificationsdk/ui/VerifyType;Lc8/Vcc;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    :goto_0
    return-void

    .line 1644
    :catch_0
    move-exception v6

    .line 1646
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1647
    .local v7, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "errorMsg"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    const-string/jumbo v0, "errorCode"

    const-string/jumbo v1, "1"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    const/4 v0, 0x0

    invoke-interface {p5, v0, v7}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    goto :goto_0
.end method

.method static startVerifyUI_internal(Landroid/content/Context;Ljava/util/Map;Lcom/alibaba/verificationsdk/ui/VerifyType;Lc8/Vcc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "verifyType"    # Lcom/alibaba/verificationsdk/ui/VerifyType;
    .param p3, "callback"    # Lc8/Vcc;
    .param p4, "code"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/verificationsdk/ui/VerifyType;",
            "Lc8/Vcc;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1656
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p3, p4, p5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initWithWsg(Landroid/content/Context;Lc8/Vcc;Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1658
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Please set parameter!!!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1661
    :cond_1
    const-string/jumbo v5, "app_data"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1662
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Please set app data!!!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1666
    :cond_2
    const-string/jumbo v5, "app_data"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1667
    .local v0, "app_data":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "info_token"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1669
    sput-object v5, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->info_token:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1670
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Please set Map<String, String> parameters with jsondata, !!!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1671
    :cond_3
    const-string/jumbo v5, "phone"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->number:Ljava/lang/String;

    .line 1674
    sput-object p3, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->callback:Lc8/Vcc;

    .line 1676
    if-nez p2, :cond_4

    .line 1677
    sget-object p2, Lcom/alibaba/verificationsdk/ui/VerifyType;->NOCAPTCHA:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 1681
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1682
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    sput-object p2, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyType:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 1695
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1696
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1697
    return-void

    .line 1690
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1691
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private targetInBoundary()V
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handler:Landroid/os/Handler;

    const v1, 0x186a1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1583
    return-void
.end method

.method private targetOutBoundary()V
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handler:Landroid/os/Handler;

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1587
    return-void
.end method

.method private toHexString([B)Ljava/lang/String;
    .locals 4
    .param p1, "b"    # [B

    .prologue
    .line 1559
    const/16 v3, 0x10

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 1561
    .local v1, "md5Chars":[C
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    shl-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1562
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 1563
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1564
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1566
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1559
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private toggerKeyboard()V
    .locals 3

    .prologue
    .line 1608
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1610
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1614
    :cond_0
    return-void
.end method


# virtual methods
.method public addroot(Landroid/view/View;)V
    .locals 1
    .param p1, "sub"    # Landroid/view/View;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addroot(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 6
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 1590
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1592
    .local v0, "height":I
    const-string/jumbo v1, "VerifyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get status bar height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return v0
.end method

.method public initAfterSGInit()V
    .locals 7
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->RES_ROOT_PATH:Ljava/lang/String;

    .line 219
    new-instance v0, Lc8/Ucc;

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->RES_ROOT_PATH:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lc8/Ucc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->resConfig:Lc8/Ucc;

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 222
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestForResources()V

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getNoCaptchaComp()Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->ncComponent:Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    new-instance v0, Lc8/Bdc;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/Bdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;JJ)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshCountDownTimer:Lc8/Bdc;

    .line 230
    return-void

    .line 226
    :catch_0
    move-exception v6

    .line 227
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method initCallUI()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 573
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->retryCount:I

    .line 574
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "ali_vsdk_activity_verify_call"

    const-string/jumbo v2, "layout"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->setContentView(I)V

    .line 576
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "number_et"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etNumber:Landroid/widget/EditText;

    .line 577
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etNumber:Landroid/widget/EditText;

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etNumber:Landroid/widget/EditText;

    new-instance v1, Lc8/ydc;

    invoke-direct {v1, p0}, Lc8/ydc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 580
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "code_et"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etCode:Landroid/widget/EditText;

    .line 582
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "left_top_layout"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->back:Landroid/view/View;

    .line 584
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->back:Landroid/view/View;

    new-instance v1, Lc8/Ycc;

    invoke-direct {v1, p0}, Lc8/Ycc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "btn_submit"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    .line 596
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 599
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "submit_tx"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txSubmit:Landroid/widget/TextView;

    .line 601
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    new-instance v1, Lc8/Zcc;

    invoke-direct {v1, p0}, Lc8/Zcc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etCode:Landroid/widget/EditText;

    new-instance v1, Lc8/adc;

    invoke-direct {v1, p0}, Lc8/adc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 639
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "submit_loading"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Odc;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->submitLoading:Lc8/Odc;

    .line 649
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "verify_send_code"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    .line 650
    new-instance v0, Lc8/Cdc;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/Cdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;JJ)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    .line 651
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    new-instance v1, Lc8/bdc;

    invoke-direct {v1, p0}, Lc8/bdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 660
    .local v6, "alertDialog":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 661
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ali_vsdk_call_tips"

    const-string/jumbo v3, "layout"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 662
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "message"

    const-string/jumbo v3, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ali_vsdk_verify_call_goto_tips"

    const-string/jumbo v3, "string"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 664
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ok"

    const-string/jumbo v3, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc8/cdc;

    invoke-direct {v1, p0, v6}, Lc8/cdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "cancel"

    const-string/jumbo v3, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc8/ddc;

    invoke-direct {v1, p0, v6}, Lc8/ddc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "logo"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->logo:Landroid/widget/ImageView;

    .line 681
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->resConfig:Lc8/Ucc;

    iget-object v1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->logo:Landroid/widget/ImageView;

    const-string/jumbo v2, "MSA_logo_power_by"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "ali_vsdk_logo"

    const-string/jumbo v5, "drawable"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lc8/Ucc;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 682
    return-void
.end method

.method initNoCaptchaUI()V
    .locals 15

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "ali_vsdk_activity_verify_nocaptcha"

    const-string/jumbo v10, "layout"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->setContentView(I)V

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "check_login_loading"

    const-string/jumbo v10, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lc8/Odc;

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->aLiLoadingView:Lc8/Odc;

    .line 271
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->aLiLoadingView:Lc8/Odc;

    invoke-virtual {v8}, Lc8/Odc;->startRotationAnimation()V

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "root"

    const-string/jumbo v10, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "left_top_layout"

    const-string/jumbo v10, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->back:Landroid/view/View;

    .line 277
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->back:Landroid/view/View;

    new-instance v9, Lc8/qdc;

    invoke-direct {v9, p0}, Lc8/qdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "tips"

    const-string/jumbo v10, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->tipsTV:Landroid/widget/TextView;

    .line 289
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "tips_sub"

    const-string/jumbo v10, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->tipsSubTV:Landroid/widget/TextView;

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "content"

    const-string/jumbo v10, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->content:Landroid/widget/LinearLayout;

    .line 292
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->content:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    new-instance v8, Lc8/Qdc;

    invoke-direct {v8, p0}, Lc8/Qdc;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->draw:Lc8/Qdc;

    .line 297
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->lp:Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 302
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v8, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenWidth:I

    .line 303
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v8, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenHeight:I

    .line 304
    const-string/jumbo v8, "VerifyActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "displayMetrics.widthPixels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " displayMetrics.heightPixels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 308
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 309
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 310
    const-string/jumbo v8, "VerifyActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "displayMetrics.widthPixels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " displayMetrics.heightPixels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :try_start_0
    const-string/jumbo v8, "android.view.Display"

    invoke-static {v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 316
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "getRealMetrics"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/util/DisplayMetrics;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 317
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v6, v1, v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v8, "VerifyActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "displayMetrics.widthPixels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " displayMetrics.heightPixels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :goto_0
    const-string/jumbo v8, "VerifyActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "displayMetrics.densityDpi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string/jumbo v8, "VerifyActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCreate root.getTop(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTop()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " root.getBottom(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string/jumbo v9, "VerifyActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCreate orientation: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_1

    const-string/jumbo v8, "landscape"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget v8, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenWidth:I

    sget v9, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenHeight:I

    if-le v8, v9, :cond_0

    .line 331
    sget v7, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenHeight:I

    .line 332
    .local v7, "temp":I
    sget v8, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenWidth:I

    sput v8, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenHeight:I

    .line 333
    sput v7, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->mScreenWidth:I

    .line 336
    .end local v7    # "temp":I
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "logo"

    const-string/jumbo v10, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->logo:Landroid/widget/ImageView;

    .line 337
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->resConfig:Lc8/Ucc;

    iget-object v9, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->logo:Landroid/widget/ImageView;

    const-string/jumbo v10, "MSA_logo_power_by"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string/jumbo v12, "ali_vsdk_logo"

    const-string/jumbo v13, "drawable"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lc8/Ucc;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 344
    new-instance v8, Lc8/Rdc;

    invoke-direct {v8, p0}, Lc8/Rdc;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->frame:Lc8/Rdc;

    .line 348
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->draw:Lc8/Qdc;

    new-instance v9, Lc8/rdc;

    invoke-direct {v9, p0}, Lc8/rdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v8, v9}, Lc8/Qdc;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshBg:Landroid/widget/FrameLayout;

    .line 428
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshBg:Landroid/widget/FrameLayout;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 429
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshBg:Landroid/widget/FrameLayout;

    const v9, 0x3f70a3d7    # 0.94f

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 431
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    .line 432
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    const-string/jumbo v9, "#56adff"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 433
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    const/high16 v9, 0x41980000    # 19.0f

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 434
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "ali_vsdk_refresh"

    const-string/jumbo v11, "string"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 435
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 436
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "ali_vsdk_rect_blue"

    const-string/jumbo v11, "drawable"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 437
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 438
    .local v5, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 439
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    const/16 v9, 0x3c

    const/16 v10, 0x14

    const/16 v11, 0x3c

    const/16 v12, 0x14

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/Button;->setPadding(IIII)V

    .line 440
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshBg:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    invoke-virtual {v8, v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshBg:Landroid/widget/FrameLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 443
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshBg:Landroid/widget/FrameLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 445
    iget-object v8, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refresh:Landroid/widget/Button;

    new-instance v9, Lc8/sdc;

    invoke-direct {v9, p0}, Lc8/sdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    new-instance v9, Lc8/tdc;

    invoke-direct {v9, p0}, Lc8/tdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 476
    return-void

    .line 320
    .end local v5    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v4

    .line 321
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 329
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v8, "portrait"

    goto/16 :goto_1
.end method

.method initSMSUI()V
    .locals 7

    .prologue
    .line 479
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->retryCount:I

    .line 480
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "ali_vsdk_activity_verify_sms"

    const-string/jumbo v2, "layout"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->setContentView(I)V

    .line 482
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "number_et"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etNumber:Landroid/widget/EditText;

    .line 483
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etNumber:Landroid/widget/EditText;

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etNumber:Landroid/widget/EditText;

    new-instance v1, Lc8/ydc;

    invoke-direct {v1, p0}, Lc8/ydc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 486
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "code_et"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etCode:Landroid/widget/EditText;

    .line 488
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "left_top_layout"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->back:Landroid/view/View;

    .line 490
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->back:Landroid/view/View;

    new-instance v1, Lc8/udc;

    invoke-direct {v1, p0}, Lc8/udc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "btn_submit"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "submit_tx"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txSubmit:Landroid/widget/TextView;

    .line 505
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnSubmit:Landroid/view/View;

    new-instance v1, Lc8/vdc;

    invoke-direct {v1, p0}, Lc8/vdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->etCode:Landroid/widget/EditText;

    new-instance v1, Lc8/wdc;

    invoke-direct {v1, p0}, Lc8/wdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 543
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "submit_loading"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Odc;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->submitLoading:Lc8/Odc;

    .line 545
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "btn_call"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnCall:Landroid/view/View;

    .line 546
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnCall:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->btnCall:Landroid/view/View;

    new-instance v1, Lc8/Wcc;

    invoke-direct {v1, p0}, Lc8/Wcc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "verify_send_code"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    .line 558
    new-instance v0, Lc8/Cdc;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/Cdc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;JJ)V

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    .line 559
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->txRequest:Landroid/widget/TextView;

    new-instance v1, Lc8/Xcc;

    invoke-direct {v1, p0}, Lc8/Xcc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "logo"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->logo:Landroid/widget/ImageView;

    .line 567
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->resConfig:Lc8/Ucc;

    iget-object v1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->logo:Landroid/widget/ImageView;

    const-string/jumbo v2, "MSA_logo_power_by"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "ali_vsdk_logo"

    const-string/jumbo v5, "drawable"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lc8/Ucc;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 569
    invoke-direct {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestSMSVerification()V

    .line 570
    return-void
.end method

.method public initUI(Lcom/alibaba/verificationsdk/ui/VerifyType;)V
    .locals 2
    .param p1, "verifyType"    # Lcom/alibaba/verificationsdk/ui/VerifyType;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 251
    sput-object p1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyType:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 252
    sget-object v0, Lc8/odc;->$SwitchMap$com$alibaba$verificationsdk$ui$VerifyType:[I

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyType:Lcom/alibaba/verificationsdk/ui/VerifyType;

    invoke-virtual {v1}, Lcom/alibaba/verificationsdk/ui/VerifyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 254
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initNoCaptchaUI()V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initSMSUI()V

    goto :goto_0

    .line 260
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initCallUI()V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public map2GenericCode(I)I
    .locals 1
    .param p1, "x"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 761
    packed-switch p1, :pswitch_data_0

    .line 767
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 765
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1571
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->callback:Lc8/Vcc;

    if-eqz v0, :cond_0

    .line 1572
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->callback:Lc8/Vcc;

    invoke-interface {v0}, Lc8/Vcc;->onNotifyBackPressed()V

    .line 1574
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1575
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    sput-object p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verifyActivity:Landroid/app/Activity;

    .line 210
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "ali_vsdk_activity_verify"

    const-string/jumbo v2, "layout"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->setContentView(I)V

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "check_login_loading"

    const-string/jumbo v2, "id"

    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Odc;

    iput-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->aLiLoadingView:Lc8/Odc;

    .line 213
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->aLiLoadingView:Lc8/Odc;

    invoke-virtual {v0}, Lc8/Odc;->startRotationAnimation()V

    .line 214
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->statSGInit(Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 744
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 745
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestCountDownTimer:Lc8/Cdc;

    invoke-virtual {v0}, Lc8/Cdc;->cancel()V

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshCountDownTimer:Lc8/Bdc;

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->refreshCountDownTimer:Lc8/Bdc;

    invoke-virtual {v0}, Lc8/Bdc;->cancel()V

    .line 751
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 727
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 728
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 729
    const-string/jumbo v0, "VerifyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume root.getTop(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " root.getBottom(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 718
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 719
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 720
    const-string/jumbo v0, "VerifyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart root.getTop(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " root.getBottom(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 736
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 737
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 740
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 756
    const/4 v0, 0x0

    return v0
.end method

.method public removeBall()V
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->draw:Lc8/Qdc;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1166
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->frame:Lc8/Rdc;

    invoke-virtual {v0}, Lc8/Rdc;->clearAnimation()V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->frame:Lc8/Rdc;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1168
    return-void
.end method

.method public statSGInit(Landroid/content/Context;)V
    .locals 7
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 186
    sget-boolean v4, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sgInited:Z

    if-eqz v4, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initAfterSGInit()V

    .line 203
    :goto_0
    return-void

    .line 192
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    move-result-object v1

    .line 193
    .local v1, "initializeComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    new-instance v2, Lc8/Adc;

    invoke-direct {v2, p0}, Lc8/Adc;-><init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    .line 194
    .local v2, "onLoadSoSuccessListener1":Lc8/Adc;
    const/4 v4, 0x0

    invoke-interface {v1, v4, v2}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMID(ILcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v1    # "initializeComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    .end local v2    # "onLoadSoSuccessListener1":Lc8/Adc;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v3, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v4, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->callback:Lc8/Vcc;

    invoke-interface {v4, v6, v3}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    goto :goto_0
.end method
