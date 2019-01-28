.class public Lc8/UYo;
.super Landroid/widget/LinearLayout;
.source "CardRegistUIView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/RYo;,
        Lc8/SYo;,
        Lc8/TYo;
    }
.end annotation


# static fields
.field public static final AGREEMENT_URL:Ljava/lang/String; = "http://www.youku.com/pub/youku/service/agreement.shtml "

.field public static final COPYRIGHT_URL:Ljava/lang/String; = "http://www.youku.com/pub/youku/service/copyright.shtml "

.field public static final NICK_NAME_MAX_LENGTH:I = 0x10

.field public static final NICK_NAME_MIN_LENGTH:I = 0x4

.field public static final PWD_MAX_LENGTH:I = 0x10

.field public static final PWD_MIN_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CardRegistUIView"

.field public static final VERIFICATION_CODE_LENGTH:I = 0x4

.field private static codevalidate:Z

.field private static emailRecord:Ljava/lang/String;

.field private static emailvalidate:Z

.field private static nameRecord:Ljava/lang/String;

.field private static namevalidate:Z

.field private static passvalidate:Z


# instance fields
.field private final REQUEST_FAIL_HAS_BEEN_USED:I

.field private final REQUEST_FAIL_SERVER_EXCEPTION:I

.field private final REQUEST_SUCCESS_CAN_USE:I

.field private RegistView:Landroid/view/View;

.field private agreement:Landroid/widget/TextView;

.field private bit_auth_error:I

.field private bit_email_exists:I

.field private bit_email_invalid:I

.field private bit_username_exists:I

.field private bit_username_invalid:I

.field private btn_regist:Landroid/widget/Button;

.field private copyright:Landroid/widget/TextView;

.field private email:Ljava/lang/String;

.field private email_left_img:Landroid/widget/ImageView;

.field private email_mid_img:Landroid/widget/ImageView;

.field private email_right_img:Landroid/widget/ImageView;

.field private handerSoftWare:Landroid/os/Handler;

.field handler:Landroid/os/Handler;

.field isCountTimer:Z

.field private isFillActivity:Z

.field private isPhoneNumberRegist:Z

.field private isregist:Z

.field private layout_email_address_regist:Landroid/widget/RelativeLayout;

.field private layout_email_address_regist_txtview:Landroid/widget/TextView;

.field private layout_email_address_regist_view:Landroid/view/View;

.field private layout_phone_number_regist:Landroid/widget/RelativeLayout;

.field private layout_phone_number_regist_txtview:Landroid/widget/TextView;

.field private layout_phone_number_regist_view:Landroid/view/View;

.field private mCountTimerTextView:Lc8/RYo;

.field private mHttpRequest:Lc8/RIj;

.field private name_left_img:Landroid/widget/ImageView;

.field private name_mid_img:Landroid/widget/ImageView;

.field private name_right_img:Landroid/widget/ImageView;

.field private pass:Z

.field private pass_left_img:Landroid/widget/ImageView;

.field private pass_mid_img:Landroid/widget/ImageView;

.field private pass_right_img:Landroid/widget/ImageView;

.field private pwd1:Ljava/lang/String;

.field private reback_login_page_btn_layout:Landroid/view/View;

.field private regist_email:Landroid/widget/EditText;

.field private regist_name:Landroid/widget/EditText;

.field private regist_pwd1:Landroid/widget/EditText;

.field private register_email_tip:Landroid/widget/TextView;

.field private register_name_tip:Landroid/widget/TextView;

.field private register_pwd1_tip:Landroid/widget/TextView;

.field private user_regist_get_authcode_line:Landroid/widget/ImageView;

.field private user_regist_get_authcode_textview:Landroid/widget/TextView;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    const-string/jumbo v0, ""

    sput-object v0, Lc8/UYo;->emailRecord:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    sput-object v0, Lc8/UYo;->nameRecord:Ljava/lang/String;

    .line 72
    sput-boolean v1, Lc8/UYo;->namevalidate:Z

    .line 73
    sput-boolean v1, Lc8/UYo;->emailvalidate:Z

    .line 74
    sput-boolean v1, Lc8/UYo;->passvalidate:Z

    .line 75
    sput-boolean v1, Lc8/UYo;->codevalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lc8/UYo;->bit_auth_error:I

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Lc8/UYo;->bit_username_exists:I

    .line 80
    const/16 v0, 0x10

    iput v0, p0, Lc8/UYo;->bit_username_invalid:I

    .line 81
    const/16 v0, 0x20

    iput v0, p0, Lc8/UYo;->bit_email_exists:I

    .line 82
    const/16 v0, 0x40

    iput v0, p0, Lc8/UYo;->bit_email_invalid:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/UYo;->reback_login_page_btn_layout:Landroid/view/View;

    .line 115
    iput-boolean v1, p0, Lc8/UYo;->isregist:Z

    .line 117
    iput-boolean v2, p0, Lc8/UYo;->isPhoneNumberRegist:Z

    .line 118
    iput-boolean v1, p0, Lc8/UYo;->isFillActivity:Z

    .line 121
    iput-boolean v2, p0, Lc8/UYo;->pass:Z

    .line 122
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/UYo;->email:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/UYo;->username:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/UYo;->pwd1:Ljava/lang/String;

    .line 176
    new-instance v0, Lc8/BYo;

    invoke-direct {v0, p0}, Lc8/BYo;-><init>(Lc8/UYo;)V

    iput-object v0, p0, Lc8/UYo;->handerSoftWare:Landroid/os/Handler;

    .line 899
    new-instance v0, Lc8/CYo;

    invoke-direct {v0, p0}, Lc8/CYo;-><init>(Lc8/UYo;)V

    iput-object v0, p0, Lc8/UYo;->handler:Landroid/os/Handler;

    .line 1094
    iput v1, p0, Lc8/UYo;->REQUEST_SUCCESS_CAN_USE:I

    .line 1095
    const/4 v0, -0x2

    iput v0, p0, Lc8/UYo;->REQUEST_FAIL_HAS_BEEN_USED:I

    .line 1096
    const/4 v0, -0x1

    iput v0, p0, Lc8/UYo;->REQUEST_FAIL_SERVER_EXCEPTION:I

    .line 1340
    iput-boolean v1, p0, Lc8/UYo;->isCountTimer:Z

    .line 129
    invoke-direct {p0}, Lc8/UYo;->initViewLayout()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lc8/UYo;->bit_auth_error:I

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Lc8/UYo;->bit_username_exists:I

    .line 80
    const/16 v0, 0x10

    iput v0, p0, Lc8/UYo;->bit_username_invalid:I

    .line 81
    const/16 v0, 0x20

    iput v0, p0, Lc8/UYo;->bit_email_exists:I

    .line 82
    const/16 v0, 0x40

    iput v0, p0, Lc8/UYo;->bit_email_invalid:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/UYo;->reback_login_page_btn_layout:Landroid/view/View;

    .line 115
    iput-boolean v1, p0, Lc8/UYo;->isregist:Z

    .line 117
    iput-boolean v2, p0, Lc8/UYo;->isPhoneNumberRegist:Z

    .line 118
    iput-boolean v1, p0, Lc8/UYo;->isFillActivity:Z

    .line 121
    iput-boolean v2, p0, Lc8/UYo;->pass:Z

    .line 122
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/UYo;->email:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/UYo;->username:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/UYo;->pwd1:Ljava/lang/String;

    .line 176
    new-instance v0, Lc8/BYo;

    invoke-direct {v0, p0}, Lc8/BYo;-><init>(Lc8/UYo;)V

    iput-object v0, p0, Lc8/UYo;->handerSoftWare:Landroid/os/Handler;

    .line 899
    new-instance v0, Lc8/CYo;

    invoke-direct {v0, p0}, Lc8/CYo;-><init>(Lc8/UYo;)V

    iput-object v0, p0, Lc8/UYo;->handler:Landroid/os/Handler;

    .line 1094
    iput v1, p0, Lc8/UYo;->REQUEST_SUCCESS_CAN_USE:I

    .line 1095
    const/4 v0, -0x2

    iput v0, p0, Lc8/UYo;->REQUEST_FAIL_HAS_BEEN_USED:I

    .line 1096
    const/4 v0, -0x1

    iput v0, p0, Lc8/UYo;->REQUEST_FAIL_SERVER_EXCEPTION:I

    .line 1340
    iput-boolean v1, p0, Lc8/UYo;->isCountTimer:Z

    .line 134
    invoke-direct {p0}, Lc8/UYo;->initViewLayout()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lc8/UYo;)V
    .locals 0
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/UYo;->showPhoneNumberRegistUI()V

    return-void
.end method

.method static synthetic access$100(Lc8/UYo;)V
    .locals 0
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/UYo;->showEmailAddressRegistUI()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lc8/UYo;->emailRecord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lc8/UYo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->register_email_tip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/UYo;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lc8/UYo;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lc8/UYo;->setPassColor(Z)V

    return-void
.end method

.method static synthetic access$1400(Lc8/UYo;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lc8/UYo;->checkPassword(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lc8/UYo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->register_pwd1_tip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lc8/UYo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-boolean v0, p0, Lc8/UYo;->isFillActivity:Z

    return v0
.end method

.method static synthetic access$1700(Lc8/UYo;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lc8/UYo;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lc8/UYo;->setNameColor(Z)V

    return-void
.end method

.method static synthetic access$1900(Lc8/UYo;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lc8/UYo;->checkUserNickName(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lc8/UYo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-boolean v0, p0, Lc8/UYo;->isPhoneNumberRegist:Z

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lc8/UYo;->nameRecord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lc8/UYo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->register_name_tip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lc8/UYo;Landroid/widget/EditText;Z)Z
    .locals 1
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Landroid/widget/EditText;
    .param p2, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lc8/UYo;->checkPhoneAuthCode(Landroid/widget/EditText;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lc8/UYo;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->btn_regist:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2400(Lc8/UYo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lc8/UYo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/UYo;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lc8/UYo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lc8/UYo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/UYo;->username:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lc8/UYo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/UYo;->pwd1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lc8/UYo;)V
    .locals 0
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/UYo;->afterCheckPhoneNumberBeenUsed()V

    return-void
.end method

.method static synthetic access$2800(Lc8/UYo;)V
    .locals 0
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/UYo;->finishSelf()V

    return-void
.end method

.method static synthetic access$300(Lc8/UYo;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3002(Lc8/UYo;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lc8/UYo;->isregist:Z

    return p1
.end method

.method static synthetic access$3100(Lc8/UYo;)I
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget v0, p0, Lc8/UYo;->bit_auth_error:I

    return v0
.end method

.method static synthetic access$3200(Lc8/UYo;)I
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget v0, p0, Lc8/UYo;->bit_username_exists:I

    return v0
.end method

.method static synthetic access$3300(Lc8/UYo;)I
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget v0, p0, Lc8/UYo;->bit_username_invalid:I

    return v0
.end method

.method static synthetic access$3400(Lc8/UYo;)I
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget v0, p0, Lc8/UYo;->bit_email_exists:I

    return v0
.end method

.method static synthetic access$3500(Lc8/UYo;)I
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget v0, p0, Lc8/UYo;->bit_email_invalid:I

    return v0
.end method

.method static synthetic access$3600(Lc8/UYo;)Lc8/RYo;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->mCountTimerTextView:Lc8/RYo;

    return-object v0
.end method

.method static synthetic access$3700(Lc8/UYo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/UYo;->user_regist_get_authcode_textview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lc8/UYo;Landroid/widget/EditText;Z)Z
    .locals 1
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Landroid/widget/EditText;
    .param p2, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lc8/UYo;->checkPhoneNumber(Landroid/widget/EditText;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lc8/UYo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lc8/UYo;->doGetPhoneNumberAuthCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lc8/UYo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/UYo;

    .prologue
    .line 53
    iget-boolean v0, p0, Lc8/UYo;->pass:Z

    return v0
.end method

.method static synthetic access$602(Lc8/UYo;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lc8/UYo;->pass:Z

    return p1
.end method

.method static synthetic access$700(Lc8/UYo;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lc8/UYo;->setEmailColor(Z)V

    return-void
.end method

.method static synthetic access$800(Lc8/UYo;Ljava/lang/String;Lc8/SYo;)V
    .locals 0
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lc8/SYo;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lc8/UYo;->checkPhoneNumberBeUsed(Ljava/lang/String;Lc8/SYo;)V

    return-void
.end method

.method static synthetic access$900(Lc8/UYo;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lc8/UYo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lc8/UYo;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private afterCheckPhoneNumberBeenUsed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 873
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    iget-boolean v1, p0, Lc8/UYo;->pass:Z

    invoke-direct {p0, v0, v1}, Lc8/UYo;->checkPhoneAuthCode(Landroid/widget/EditText;Z)Z

    move-result v0

    iput-boolean v0, p0, Lc8/UYo;->pass:Z

    .line 874
    iget-boolean v0, p0, Lc8/UYo;->pass:Z

    if-nez v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Lc8/UYo;->pwd1:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lc8/UYo;->pwd1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 877
    :cond_2
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->regist_user_pwd1_tip_empty:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 879
    iput-boolean v3, p0, Lc8/UYo;->pass:Z

    .line 880
    invoke-direct {p0, v3}, Lc8/UYo;->setPassColor(Z)V

    .line 890
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lc8/UYo;->pass:Z

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lc8/UYo;->email:Ljava/lang/String;

    sput-object v0, Lc8/UYo;->emailRecord:Ljava/lang/String;

    .line 892
    iget-object v0, p0, Lc8/UYo;->username:Ljava/lang/String;

    sput-object v0, Lc8/UYo;->nameRecord:Ljava/lang/String;

    .line 893
    const-string/jumbo v0, "reg_youku"

    sput-object v0, Lc8/tin;->WIRELESS_LOGIN_FROM_VALUE:Ljava/lang/String;

    .line 894
    const-string/jumbo v0, "other"

    sput-object v0, Lc8/tin;->WIRELESS_USER_OPERATE_VALUE:Ljava/lang/String;

    .line 895
    invoke-direct {p0}, Lc8/UYo;->doRegistOrDoFillRegist()V

    goto :goto_0

    .line 882
    :cond_4
    iget-object v0, p0, Lc8/UYo;->pwd1:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lc8/UYo;->checkPassword(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 883
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->regist_user_pwd1_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 885
    iput-boolean v3, p0, Lc8/UYo;->pass:Z

    .line 886
    invoke-direct {p0, v3}, Lc8/UYo;->setPassColor(Z)V

    goto :goto_1
.end method

.method private checkEmail(Ljava/lang/String;)Z
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 1264
    invoke-direct {p0, p1}, Lc8/UYo;->getChineseCharCount(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1265
    const/4 v0, 0x0

    .line 1271
    :goto_0
    return v0

    .line 1268
    :cond_0
    const-string/jumbo v3, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1269
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1270
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 1271
    .local v0, "b":Z
    goto :goto_0
.end method

.method private checkPassword(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "minlength"    # I
    .param p3, "maxlength"    # I

    .prologue
    const/4 v2, 0x0

    .line 1285
    const-string/jumbo v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return v2

    .line 1288
    :cond_1
    const-string/jumbo v3, "[\\u4e00-\\u9fa5]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1289
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1291
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkPhoneAuthCode(Landroid/widget/EditText;Z)Z
    .locals 3
    .param p1, "mEditText"    # Landroid/widget/EditText;
    .param p2, "passvalue"    # Z

    .prologue
    const/4 v2, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    :cond_0
    invoke-direct {p0, v2}, Lc8/UYo;->setNameColor(Z)V

    .line 438
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->tips_auth_code_cannot_empty:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 440
    const/4 p2, 0x0

    .line 451
    :goto_0
    return p2

    .line 441
    :cond_1
    invoke-static {v0}, Lc8/UYo;->isMobileAuthCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 442
    invoke-direct {p0, v2}, Lc8/UYo;->setNameColor(Z)V

    .line 443
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->tips_auth_code_not_fit_rule:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 445
    const/4 p2, 0x0

    goto :goto_0

    .line 447
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lc8/UYo;->setNameColor(Z)V

    .line 448
    iget-object v1, p0, Lc8/UYo;->register_name_tip:Landroid/widget/TextView;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    const/4 p2, 0x1

    goto :goto_0
.end method

.method private checkPhoneNumber(Landroid/widget/EditText;Z)Z
    .locals 3
    .param p1, "mEditText"    # Landroid/widget/EditText;
    .param p2, "passvalue"    # Z

    .prologue
    const/4 v2, 0x0

    .line 412
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    :cond_0
    invoke-direct {p0, v2}, Lc8/UYo;->setEmailColor(Z)V

    .line 416
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->tips_phone_number_not_fit_rule:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 418
    const/4 p2, 0x0

    .line 429
    :goto_0
    return p2

    .line 419
    :cond_1
    invoke-static {v0}, Lc8/UYo;->isMobileNO(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 420
    invoke-direct {p0, v2}, Lc8/UYo;->setEmailColor(Z)V

    .line 421
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->tips_phone_number_not_fit_rule:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 423
    const/4 p2, 0x0

    goto :goto_0

    .line 425
    :cond_2
    const/4 p2, 0x1

    .line 426
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lc8/UYo;->setEmailColor(Z)V

    .line 427
    iget-object v1, p0, Lc8/UYo;->register_email_tip:Landroid/widget/TextView;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkPhoneNumberBeUsed(Ljava/lang/String;Lc8/SYo;)V
    .locals 4
    .param p1, "phonNumber"    # Ljava/lang/String;
    .param p2, "mICheckPhoneNumberCallBack"    # Lc8/SYo;

    .prologue
    const/4 v3, 0x1

    .line 1099
    const-class v0, Lc8/TIj;

    invoke-static {v0, v3}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/RIj;

    iput-object v0, p0, Lc8/UYo;->mHttpRequest:Lc8/RIj;

    .line 1100
    iget-object v0, p0, Lc8/UYo;->mHttpRequest:Lc8/RIj;

    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-static {p1}, Lc8/lSh;->getRegistPhoneNumberAuthorUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Lc8/FYo;

    invoke-direct {v2, p0, p2}, Lc8/FYo;-><init>(Lc8/UYo;Lc8/SYo;)V

    invoke-virtual {v0, v1, v2}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 1141
    return-void
.end method

.method private checkUserNickName(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "minlength"    # I
    .param p3, "maxlength"    # I

    .prologue
    const/4 v4, 0x0

    .line 1306
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return v4

    .line 1309
    :cond_1
    const-string/jumbo v5, "[^0-9a-zA-Z_\u4e00-\u9fa5\\-]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1310
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1311
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1314
    invoke-direct {p0, p1}, Lc8/UYo;->getChineseCharCount(Ljava/lang/String;)I

    move-result v0

    .line 1315
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1316
    .local v1, "length":I
    shl-int/lit8 v5, v0, 0x1

    sub-int v6, v1, v0

    add-int/2addr v5, v6

    if-lt v5, p2, :cond_0

    shl-int/lit8 v5, v0, 0x1

    sub-int v6, v1, v0

    add-int/2addr v5, v6

    if-gt v5, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private doGetPhoneNumberAuthCode(Ljava/lang/String;)V
    .locals 5
    .param p1, "mobileStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1050
    iget-boolean v2, p0, Lc8/UYo;->isFillActivity:Z

    if-eqz v2, :cond_0

    .line 1051
    invoke-static {p1}, Lc8/lSh;->getFillPhoneAthoriteCodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "url":Ljava/lang/String;
    :goto_0
    new-instance v0, Lc8/RIj;

    invoke-direct {v0}, Lc8/RIj;-><init>()V

    .line 1056
    .local v0, "httpRequestManager":Lc8/RIj;
    invoke-virtual {v0, v4}, Lc8/RIj;->setParseErrorCode(Z)V

    .line 1057
    new-instance v2, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    invoke-direct {v2, v1, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lc8/EYo;

    invoke-direct {v3, p0}, Lc8/EYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v2, v3}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 1090
    return-void

    .line 1053
    .end local v0    # "httpRequestManager":Lc8/RIj;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lc8/lSh;->getPhoneAthoriteCodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method private doRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doRegist name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pwd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " email "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 957
    iget-boolean v1, p0, Lc8/UYo;->isregist:Z

    if-eqz v1, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 960
    :cond_0
    iput-boolean v3, p0, Lc8/UYo;->isregist:Z

    .line 961
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/Jbp;->show(Landroid/content/Context;)V

    .line 962
    const-class v1, Lc8/fhn;

    invoke-static {v1, v3}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/mhn;

    .line 963
    .local v0, "ilogin":Lc8/mhn;
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/mhn;->setContext(Landroid/content/Context;)V

    .line 964
    new-instance v1, Lc8/DYo;

    invoke-direct {v1, p0}, Lc8/DYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lc8/mhn;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V

    goto :goto_0
.end method

.method private doRegistByPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mobileStr"    # Ljava/lang/String;
    .param p2, "codeStr"    # Ljava/lang/String;
    .param p3, "passwordStr"    # Ljava/lang/String;

    .prologue
    .line 1150
    const-class v1, Lc8/fhn;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/mhn;

    .line 1151
    .local v0, "ilogin":Lc8/mhn;
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/mhn;->setContext(Landroid/content/Context;)V

    .line 1152
    new-instance v1, Lc8/GYo;

    invoke-direct {v1, p0}, Lc8/GYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lc8/mhn;->registerPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V

    .line 1173
    return-void
.end method

.method private doRegistOrDoFillRegist()V
    .locals 3

    .prologue
    .line 907
    iget-boolean v0, p0, Lc8/UYo;->isPhoneNumberRegist:Z

    if-nez v0, :cond_0

    .line 908
    const-string/jumbo v0, "2"

    sput-object v0, Lc8/tin;->registType:Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lc8/UYo;->username:Ljava/lang/String;

    iget-object v1, p0, Lc8/UYo;->pwd1:Ljava/lang/String;

    iget-object v2, p0, Lc8/UYo;->email:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lc8/UYo;->doRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :goto_0
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    invoke-virtual {v0}, Lc8/rin;->registTrack()V

    .line 920
    return-void

    .line 911
    :cond_0
    iget-boolean v0, p0, Lc8/UYo;->isFillActivity:Z

    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/Jbp;->show(Landroid/content/Context;)V

    .line 913
    sget-object v0, Lc8/UYo;->emailRecord:Ljava/lang/String;

    sget-object v1, Lc8/UYo;->nameRecord:Ljava/lang/String;

    iget-object v2, p0, Lc8/UYo;->pwd1:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lc8/UYo;->doFillByPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_1
    const-string/jumbo v0, "1"

    sput-object v0, Lc8/tin;->registType:Ljava/lang/String;

    .line 916
    sget-object v0, Lc8/UYo;->emailRecord:Ljava/lang/String;

    sget-object v1, Lc8/UYo;->nameRecord:Ljava/lang/String;

    iget-object v2, p0, Lc8/UYo;->pwd1:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lc8/UYo;->doRegistByPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private finishSelf()V
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0}, Lc8/UYo;->removeAllViews()V

    .line 950
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lc8/UYo;->setVisibility(I)V

    .line 951
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 952
    return-void
.end method

.method private getChineseCharCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1330
    const/4 v0, 0x0

    .line 1331
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1332
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 1333
    .local v2, "tempStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1334
    add-int/lit8 v0, v0, 0x1

    .line 1331
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1337
    .end local v2    # "tempStr":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private hideSoftWare()V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    .line 151
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 152
    return-void
.end method

.method private initRegistUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 376
    iget-object v0, p0, Lc8/UYo;->mCountTimerTextView:Lc8/RYo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/UYo;->isCountTimer:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lc8/UYo;->mCountTimerTextView:Lc8/RYo;

    invoke-virtual {v0}, Lc8/RYo;->cancel()V

    .line 378
    iget-object v0, p0, Lc8/UYo;->mCountTimerTextView:Lc8/RYo;

    invoke-virtual {v0}, Lc8/RYo;->onFinish()V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/UYo;->isCountTimer:Z

    .line 381
    :cond_0
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-direct {p0, v2}, Lc8/UYo;->setEmailColor(Z)V

    .line 385
    invoke-direct {p0, v2}, Lc8/UYo;->setPassColor(Z)V

    .line 386
    invoke-direct {p0, v2}, Lc8/UYo;->setNameColor(Z)V

    .line 387
    iget-object v0, p0, Lc8/UYo;->register_email_tip:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lc8/UYo;->register_name_tip:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lc8/UYo;->register_pwd1_tip:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lc8/UYo;->layout_email_address_regist_view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lc8/UYo;->layout_phone_number_regist_view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    sget v0, Lcom/youku/phone/R$id;->layout_phone_number_regist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lc8/UYo;->layout_phone_number_regist:Landroid/widget/RelativeLayout;

    .line 186
    sget v0, Lcom/youku/phone/R$id;->layout_email_address_regist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lc8/UYo;->layout_email_address_regist:Landroid/widget/RelativeLayout;

    .line 187
    sget v0, Lcom/youku/phone/R$id;->reback_login_page_btn_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/UYo;->reback_login_page_btn_layout:Landroid/view/View;

    .line 188
    sget v0, Lcom/youku/phone/R$id;->layout_phone_number_regist_txtview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/UYo;->layout_phone_number_regist_txtview:Landroid/widget/TextView;

    .line 189
    sget v0, Lcom/youku/phone/R$id;->layout_email_address_regist_txtview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/UYo;->layout_email_address_regist_txtview:Landroid/widget/TextView;

    .line 190
    sget v0, Lcom/youku/phone/R$id;->layout_phone_number_regist_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/UYo;->layout_phone_number_regist_view:Landroid/view/View;

    .line 191
    sget v0, Lcom/youku/phone/R$id;->layout_email_address_regist_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/UYo;->layout_email_address_regist_view:Landroid/view/View;

    .line 193
    sget v0, Lcom/youku/phone/R$id;->user_regist_get_authcode_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/UYo;->user_regist_get_authcode_textview:Landroid/widget/TextView;

    .line 194
    sget v0, Lcom/youku/phone/R$id;->user_regist_get_authcode_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->user_regist_get_authcode_line:Landroid/widget/ImageView;

    .line 196
    sget v0, Lcom/youku/phone/R$id;->regist_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    .line 197
    sget v0, Lcom/youku/phone/R$id;->regist_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    .line 198
    sget v0, Lcom/youku/phone/R$id;->regist_pwd1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    .line 200
    sget v0, Lcom/youku/phone/R$id;->user_regist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lc8/UYo;->btn_regist:Landroid/widget/Button;

    .line 202
    sget v0, Lcom/youku/phone/R$id;->name_left_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->name_left_img:Landroid/widget/ImageView;

    .line 203
    sget v0, Lcom/youku/phone/R$id;->name_right_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->name_right_img:Landroid/widget/ImageView;

    .line 204
    sget v0, Lcom/youku/phone/R$id;->name_mid_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->name_mid_img:Landroid/widget/ImageView;

    .line 205
    sget v0, Lcom/youku/phone/R$id;->email_left_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->email_left_img:Landroid/widget/ImageView;

    .line 206
    sget v0, Lcom/youku/phone/R$id;->email_right_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->email_right_img:Landroid/widget/ImageView;

    .line 207
    sget v0, Lcom/youku/phone/R$id;->email_mid_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->email_mid_img:Landroid/widget/ImageView;

    .line 208
    sget v0, Lcom/youku/phone/R$id;->pass_left_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->pass_left_img:Landroid/widget/ImageView;

    .line 209
    sget v0, Lcom/youku/phone/R$id;->pass_right_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->pass_right_img:Landroid/widget/ImageView;

    .line 210
    sget v0, Lcom/youku/phone/R$id;->pass_mid_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/UYo;->pass_mid_img:Landroid/widget/ImageView;

    .line 212
    sget v0, Lcom/youku/phone/R$id;->regist_tip_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/UYo;->register_email_tip:Landroid/widget/TextView;

    .line 213
    sget v0, Lcom/youku/phone/R$id;->regist_tip_pwd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/UYo;->register_pwd1_tip:Landroid/widget/TextView;

    .line 214
    sget v0, Lcom/youku/phone/R$id;->regist_tip_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/UYo;->register_name_tip:Landroid/widget/TextView;

    .line 216
    sget v0, Lcom/youku/phone/R$id;->copyright:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/UYo;->copyright:Landroid/widget/TextView;

    .line 217
    sget v0, Lcom/youku/phone/R$id;->agreement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/UYo;->agreement:Landroid/widget/TextView;

    .line 218
    new-instance v0, Lc8/RYo;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/RYo;-><init>(Lc8/UYo;JJ)V

    iput-object v0, p0, Lc8/UYo;->mCountTimerTextView:Lc8/RYo;

    .line 219
    invoke-virtual {p0}, Lc8/UYo;->showDifferentView()V

    .line 220
    return-void
.end method

.method private initViewLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 138
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$layout;->card_view_regist_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lc8/UYo;->initView(Landroid/view/View;)V

    .line 140
    invoke-virtual {p0, v0}, Lc8/UYo;->addView(Landroid/view/View;)V

    .line 141
    invoke-direct {p0, v4}, Lc8/UYo;->setEmailColor(Z)V

    .line 142
    invoke-direct {p0, v4}, Lc8/UYo;->setNameColor(Z)V

    .line 143
    invoke-direct {p0, v4}, Lc8/UYo;->setPassColor(Z)V

    .line 144
    invoke-virtual {p0}, Lc8/UYo;->AddListener()V

    .line 146
    return-void
.end method

.method public static isMobileAuthCode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 1250
    const-string/jumbo v0, "[0-9]{6}"

    .line 1251
    .local v0, "telRegex":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    const/4 v1, 0x0

    .line 1254
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 1240
    const-string/jumbo v0, "[1][34578]\\d{9}"

    .line 1241
    .local v0, "telRegex":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    const/4 v1, 0x0

    .line 1244
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private setEmailColor(Z)V
    .locals 3
    .param p1, "Correct"    # Z

    .prologue
    .line 288
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 292
    :cond_0
    if-eqz p1, :cond_1

    .line 293
    :try_start_0
    iget-object v0, p0, Lc8/UYo;->email_left_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 294
    iget-object v0, p0, Lc8/UYo;->email_right_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 295
    iget-object v0, p0, Lc8/UYo;->email_mid_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 296
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->text_color_gray_7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 297
    iget-object v0, p0, Lc8/UYo;->user_regist_get_authcode_line:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 298
    const/4 v0, 0x1

    sput-boolean v0, Lc8/UYo;->emailvalidate:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->text_color_red_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 301
    iget-object v0, p0, Lc8/UYo;->email_left_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 302
    iget-object v0, p0, Lc8/UYo;->email_right_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 303
    iget-object v0, p0, Lc8/UYo;->email_mid_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 304
    iget-object v0, p0, Lc8/UYo;->user_regist_get_authcode_line:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 305
    const/4 v0, 0x0

    sput-boolean v0, Lc8/UYo;->emailvalidate:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private setNameColor(Z)V
    .locals 3
    .param p1, "Correct"    # Z

    .prologue
    .line 258
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 262
    :cond_0
    if-eqz p1, :cond_1

    .line 263
    :try_start_0
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->text_color_gray_7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 264
    iget-object v0, p0, Lc8/UYo;->name_left_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 265
    iget-object v0, p0, Lc8/UYo;->name_right_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 266
    iget-object v0, p0, Lc8/UYo;->name_mid_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 267
    const/4 v0, 0x1

    sput-boolean v0, Lc8/UYo;->namevalidate:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->text_color_red_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 270
    iget-object v0, p0, Lc8/UYo;->name_left_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 271
    iget-object v0, p0, Lc8/UYo;->name_right_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 272
    iget-object v0, p0, Lc8/UYo;->name_mid_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 273
    const/4 v0, 0x0

    sput-boolean v0, Lc8/UYo;->namevalidate:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private setPassColor(Z)V
    .locals 3
    .param p1, "Correct"    # Z

    .prologue
    .line 319
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 323
    :cond_0
    if-eqz p1, :cond_1

    .line 324
    :try_start_0
    iget-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->text_color_gray_7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 325
    iget-object v0, p0, Lc8/UYo;->pass_left_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 326
    iget-object v0, p0, Lc8/UYo;->pass_right_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 327
    iget-object v0, p0, Lc8/UYo;->pass_mid_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_correct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 328
    const/4 v0, 0x1

    sput-boolean v0, Lc8/UYo;->passvalidate:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->text_color_red_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 331
    iget-object v0, p0, Lc8/UYo;->pass_left_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 332
    iget-object v0, p0, Lc8/UYo;->pass_right_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 333
    iget-object v0, p0, Lc8/UYo;->pass_mid_img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_n_register_line_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 334
    const/4 v0, 0x0

    sput-boolean v0, Lc8/UYo;->passvalidate:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private showEmailAddressRegistUI()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 362
    iput-boolean v3, p0, Lc8/UYo;->isPhoneNumberRegist:Z

    .line 363
    invoke-direct {p0}, Lc8/UYo;->initRegistUI()V

    .line 364
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->regist_user_email_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->regist_user_name_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 367
    iget-object v0, p0, Lc8/UYo;->layout_email_address_regist_txtview:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 368
    iget-object v0, p0, Lc8/UYo;->layout_phone_number_regist_txtview:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 369
    iget-object v0, p0, Lc8/UYo;->user_regist_get_authcode_textview:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lc8/UYo;->user_regist_get_authcode_line:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lc8/UYo;->layout_email_address_regist_view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    return-void
.end method

.method private showPhoneNumberRegistUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/UYo;->isPhoneNumberRegist:Z

    .line 345
    invoke-direct {p0}, Lc8/UYo;->initRegistUI()V

    .line 346
    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/bzo;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "textStr":Ljava/lang/String;
    iget-object v1, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->tips_please_input_phone_number:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :cond_0
    iget-object v1, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 352
    iget-object v1, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    invoke-virtual {p0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->tips_write_auth_code_by_phone_number:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, p0, Lc8/UYo;->layout_phone_number_regist_txtview:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 354
    iget-object v1, p0, Lc8/UYo;->layout_email_address_regist_txtview:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 355
    iget-object v1, p0, Lc8/UYo;->user_regist_get_authcode_textview:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lc8/UYo;->user_regist_get_authcode_line:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lc8/UYo;->layout_phone_number_regist_view:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    return-void
.end method


# virtual methods
.method public AddListener()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lc8/UYo;->layout_phone_number_regist:Landroid/widget/RelativeLayout;

    new-instance v1, Lc8/IYo;

    invoke-direct {v1, p0}, Lc8/IYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v0, p0, Lc8/UYo;->layout_email_address_regist:Landroid/widget/RelativeLayout;

    new-instance v1, Lc8/JYo;

    invoke-direct {v1, p0}, Lc8/JYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lc8/UYo;->user_regist_get_authcode_textview:Landroid/widget/TextView;

    new-instance v1, Lc8/LYo;

    invoke-direct {v1, p0}, Lc8/LYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    new-instance v1, Lc8/MYo;

    invoke-direct {v1, p0}, Lc8/MYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 571
    iget-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    new-instance v1, Lc8/NYo;

    invoke-direct {v1, p0}, Lc8/NYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 601
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    new-instance v1, Lc8/OYo;

    invoke-direct {v1, p0}, Lc8/OYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 633
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    new-instance v1, Lc8/PYo;

    invoke-direct {v1, p0}, Lc8/PYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 647
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    new-instance v1, Lc8/QYo;

    invoke-direct {v1, p0}, Lc8/QYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 661
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    new-instance v1, Lc8/qYo;

    invoke-direct {v1, p0}, Lc8/qYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 674
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    new-instance v1, Lc8/rYo;

    invoke-direct {v1, p0}, Lc8/rYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 693
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    new-instance v1, Lc8/sYo;

    invoke-direct {v1, p0}, Lc8/sYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 714
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    new-instance v1, Lc8/tYo;

    invoke-direct {v1, p0}, Lc8/tYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 730
    iget-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    new-instance v1, Lc8/uYo;

    invoke-direct {v1, p0}, Lc8/uYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 750
    iget-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    new-instance v1, Lc8/vYo;

    invoke-direct {v1, p0}, Lc8/vYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 766
    iget-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    new-instance v1, Lc8/wYo;

    invoke-direct {v1, p0}, Lc8/wYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 785
    iget-object v0, p0, Lc8/UYo;->btn_regist:Landroid/widget/Button;

    new-instance v1, Lc8/yYo;

    invoke-direct {v1, p0}, Lc8/yYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    iget-object v0, p0, Lc8/UYo;->copyright:Landroid/widget/TextView;

    new-instance v1, Lc8/zYo;

    invoke-direct {v1, p0}, Lc8/zYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    iget-object v0, p0, Lc8/UYo;->agreement:Landroid/widget/TextView;

    new-instance v1, Lc8/AYo;

    invoke-direct {v1, p0}, Lc8/AYo;-><init>(Lc8/UYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    return-void
.end method

.method public clearAllFocus()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lc8/UYo;->clearChildFocus(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, Lc8/UYo;->regist_name:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lc8/UYo;->clearChildFocus(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lc8/UYo;->regist_pwd1:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lc8/UYo;->clearChildFocus(Landroid/view/View;)V

    .line 399
    invoke-direct {p0}, Lc8/UYo;->initRegistUI()V

    .line 400
    return-void
.end method

.method public doFillByPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "mobileStr"    # Ljava/lang/String;
    .param p2, "codeStr"    # Ljava/lang/String;
    .param p3, "passwordStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1176
    invoke-static {p1, p2, p3}, Lc8/lSh;->getFillByPhoneRegistUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1177
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doFillByPhoneNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1178
    const-class v3, Lc8/TIj;

    invoke-static {v3, v5}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/TIj;

    .line 1179
    .local v0, "fillPhoneNumberHttpRequest":Lc8/TIj;
    new-instance v1, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    invoke-direct {v1, v2, v3, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1180
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lc8/HYo;

    invoke-direct {v3, p0}, Lc8/HYo;-><init>(Lc8/UYo;)V

    invoke-interface {v0, v1, v3}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 1219
    return-void
.end method

.method public getAutoCodeText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lc8/UYo;->user_regist_get_authcode_textview:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEmailEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lc8/UYo;->regist_email:Landroid/widget/EditText;

    return-object v0
.end method

.method public setFillActivityLayout(Z)V
    .locals 2
    .param p1, "isFillActivity"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lc8/UYo;->isFillActivity:Z

    .line 246
    iget-object v0, p0, Lc8/UYo;->layout_phone_number_regist_txtview:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5b8c\u5584\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lc8/UYo;->reback_login_page_btn_layout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lc8/UYo;->btn_regist:Landroid/widget/Button;

    const-string/jumbo v1, "\u5b8c\u5584\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method public showDifferentView()V
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lc8/UYo;->isPhoneNumberRegist:Z

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lc8/UYo;->layout_email_address_regist_txtview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lc8/UYo;->showEmailAddressRegistUI()V

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lc8/UYo;->showPhoneNumberRegistUI()V

    goto :goto_0

    .line 239
    :cond_1
    invoke-direct {p0}, Lc8/UYo;->showEmailAddressRegistUI()V

    goto :goto_0
.end method

.method public showSoftWare(Landroid/view/View;)V
    .locals 3
    .param p1, "edit"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 159
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 162
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "====\u6ce8\u518c\u91cc\u9762\u7684==\u8f6f\u952e\u76d8\u662f\u5426\u6d3b\u52a8===isActive===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 173
    :cond_0
    return-void
.end method
