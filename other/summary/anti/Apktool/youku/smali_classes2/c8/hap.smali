.class public Lc8/hap;
.super Landroid/app/Dialog;
.source "NetworkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static EGG_DIALOG_HTTPS_VALIDATION_KEY:Ljava/lang/String; = null

.field public static EGG_DIALOG_PC_NO:Ljava/lang/String; = null

.field public static EGG_DIALOG_PC_YES:Ljava/lang/String; = null

.field public static EGG_DIALOG_SPDY_KEY:Ljava/lang/String; = null

.field public static EGG_DIALOG_SSL_KEY:Ljava/lang/String; = null

.field public static EGG_DIALOG_UPS_CHECK:Ljava/lang/String; = null

.field public static EGG_DIALOG_UPS_DEFAULT:Ljava/lang/String; = null

.field public static EGG_DIALOG_UPS_HOST_KEY:Ljava/lang/String; = null

.field public static EGG_DIALOG_UPS_HTTP:Ljava/lang/String; = null

.field public static EGG_DIALOG_UPS_IP_KEY:Ljava/lang/String; = null

.field public static EGG_DIALOG_UPS_MTOP:Ljava/lang/String; = null

.field public static EGG_DIALOG_UPS_MTOP_KEY:Ljava/lang/String; = null

.field public static final SHARE_PREFERENCE_EGGDIALOG_NAME:Ljava/lang/String; = "networkDialog"

.field public static final YOUKU_UPS_PLAY_REQ_HOST_DEFAULT:Ljava/lang/String; = "ups-beta-prepub.youku.com"

.field public static final YOUKU_UPS_PLAY_REQ_IP_DEFAULT:Ljava/lang/String; = "140.205.173.181"


# instance fields
.field private chk_egg_dialog_httpsValidation:Landroid/widget/CheckBox;

.field private chk_egg_dialog_spdy:Landroid/widget/CheckBox;

.field private chk_egg_dialog_ssl:Landroid/widget/CheckBox;

.field private chk_egg_network_dialog_ups_default:Landroid/widget/RadioButton;

.field private chk_egg_network_dialog_ups_http:Landroid/widget/RadioButton;

.field private chk_egg_network_dialog_ups_mtop:Landroid/widget/RadioButton;

.field private isHttpsValidation:Z

.field private isSpdy:Z

.field private isSsl:Z

.field private layout_egg_dialog_cancel:Landroid/view/View;

.field private layout_egg_dialog_set:Landroid/view/View;

.field private mUpsHost:Ljava/lang/String;

.field private mUpsIp:Ljava/lang/String;

.field private radiogroup_egg_dialog_ups:Landroid/widget/RadioGroup;

.field private upsCheck:Ljava/lang/String;

.field private upsHost:Landroid/widget/EditText;

.field private upsIp:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "network_spdy"

    sput-object v0, Lc8/hap;->EGG_DIALOG_SPDY_KEY:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "network_ssl"

    sput-object v0, Lc8/hap;->EGG_DIALOG_SSL_KEY:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "network_httpsValidation"

    sput-object v0, Lc8/hap;->EGG_DIALOG_HTTPS_VALIDATION_KEY:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "network_ups_ip"

    sput-object v0, Lc8/hap;->EGG_DIALOG_UPS_IP_KEY:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "network_ups_host"

    sput-object v0, Lc8/hap;->EGG_DIALOG_UPS_HOST_KEY:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "ups_mtop"

    sput-object v0, Lc8/hap;->EGG_DIALOG_UPS_MTOP_KEY:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "ups_check"

    sput-object v0, Lc8/hap;->EGG_DIALOG_UPS_CHECK:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "ups_default"

    sput-object v0, Lc8/hap;->EGG_DIALOG_UPS_DEFAULT:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "ups_http"

    sput-object v0, Lc8/hap;->EGG_DIALOG_UPS_HTTP:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "ups_mtop"

    sput-object v0, Lc8/hap;->EGG_DIALOG_UPS_MTOP:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "true"

    sput-object v0, Lc8/hap;->EGG_DIALOG_PC_YES:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "false"

    sput-object v0, Lc8/hap;->EGG_DIALOG_PC_NO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    sget v0, Lcom/youku/phone/R$style;->EggDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object v1, p0, Lc8/hap;->layout_egg_dialog_cancel:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lc8/hap;->layout_egg_dialog_set:Landroid/view/View;

    .line 35
    iput-object v1, p0, Lc8/hap;->chk_egg_dialog_spdy:Landroid/widget/CheckBox;

    .line 36
    iput-object v1, p0, Lc8/hap;->chk_egg_dialog_ssl:Landroid/widget/CheckBox;

    .line 37
    iput-object v1, p0, Lc8/hap;->chk_egg_dialog_httpsValidation:Landroid/widget/CheckBox;

    .line 39
    iput-object v1, p0, Lc8/hap;->radiogroup_egg_dialog_ups:Landroid/widget/RadioGroup;

    .line 40
    iput-object v1, p0, Lc8/hap;->chk_egg_network_dialog_ups_default:Landroid/widget/RadioButton;

    .line 41
    iput-object v1, p0, Lc8/hap;->chk_egg_network_dialog_ups_http:Landroid/widget/RadioButton;

    .line 42
    iput-object v1, p0, Lc8/hap;->chk_egg_network_dialog_ups_mtop:Landroid/widget/RadioButton;

    .line 45
    iput-boolean v2, p0, Lc8/hap;->isSpdy:Z

    .line 46
    iput-boolean v2, p0, Lc8/hap;->isSsl:Z

    .line 47
    iput-boolean v2, p0, Lc8/hap;->isHttpsValidation:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object v0, p0, Lc8/hap;->layout_egg_dialog_cancel:Landroid/view/View;

    .line 31
    iput-object v0, p0, Lc8/hap;->layout_egg_dialog_set:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lc8/hap;->chk_egg_dialog_spdy:Landroid/widget/CheckBox;

    .line 36
    iput-object v0, p0, Lc8/hap;->chk_egg_dialog_ssl:Landroid/widget/CheckBox;

    .line 37
    iput-object v0, p0, Lc8/hap;->chk_egg_dialog_httpsValidation:Landroid/widget/CheckBox;

    .line 39
    iput-object v0, p0, Lc8/hap;->radiogroup_egg_dialog_ups:Landroid/widget/RadioGroup;

    .line 40
    iput-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_default:Landroid/widget/RadioButton;

    .line 41
    iput-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_http:Landroid/widget/RadioButton;

    .line 42
    iput-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_mtop:Landroid/widget/RadioButton;

    .line 45
    iput-boolean v1, p0, Lc8/hap;->isSpdy:Z

    .line 46
    iput-boolean v1, p0, Lc8/hap;->isSsl:Z

    .line 47
    iput-boolean v1, p0, Lc8/hap;->isHttpsValidation:Z

    .line 84
    return-void
.end method

.method static synthetic access$002(Lc8/hap;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/hap;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lc8/hap;->isSpdy:Z

    return p1
.end method

.method static synthetic access$102(Lc8/hap;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/hap;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lc8/hap;->isSsl:Z

    return p1
.end method

.method static synthetic access$202(Lc8/hap;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/hap;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lc8/hap;->isHttpsValidation:Z

    return p1
.end method

.method static synthetic access$302(Lc8/hap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/hap;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lc8/hap;->upsCheck:Ljava/lang/String;

    return-object p1
.end method

.method private doSet()V
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lc8/hap;->EGG_DIALOG_SPDY_KEY:Ljava/lang/String;

    iget-boolean v0, p0, Lc8/hap;->isSpdy:Z

    if-eqz v0, :cond_2

    sget-object v0, Lc8/hap;->EGG_DIALOG_PC_YES:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v2, v0}, Lc8/hap;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lc8/hap;->EGG_DIALOG_SSL_KEY:Ljava/lang/String;

    iget-boolean v0, p0, Lc8/hap;->isSsl:Z

    if-eqz v0, :cond_3

    sget-object v0, Lc8/hap;->EGG_DIALOG_PC_YES:Ljava/lang/String;

    :goto_1
    invoke-static {v1, v2, v0}, Lc8/hap;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lc8/hap;->EGG_DIALOG_HTTPS_VALIDATION_KEY:Ljava/lang/String;

    iget-boolean v0, p0, Lc8/hap;->isHttpsValidation:Z

    if-eqz v0, :cond_4

    sget-object v0, Lc8/hap;->EGG_DIALOG_PC_YES:Ljava/lang/String;

    :goto_2
    invoke-static {v1, v2, v0}, Lc8/hap;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lc8/hap;->EGG_DIALOG_UPS_CHECK:Ljava/lang/String;

    iget-object v2, p0, Lc8/hap;->upsCheck:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/hap;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lc8/hap;->upsHost:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hap;->mUpsHost:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lc8/hap;->upsIp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hap;->mUpsIp:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lc8/hap;->mUpsHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/hap;->mUpsIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    const-string/jumbo v0, "ups-beta-prepub.youku.com"

    iput-object v0, p0, Lc8/hap;->mUpsHost:Ljava/lang/String;

    .line 267
    const-string/jumbo v0, "140.205.173.181"

    iput-object v0, p0, Lc8/hap;->mUpsIp:Ljava/lang/String;

    .line 270
    :cond_1
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lc8/hap;->EGG_DIALOG_UPS_HOST_KEY:Ljava/lang/String;

    iget-object v2, p0, Lc8/hap;->mUpsHost:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/hap;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lc8/hap;->EGG_DIALOG_UPS_IP_KEY:Ljava/lang/String;

    iget-object v2, p0, Lc8/hap;->mUpsIp:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/hap;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lc8/hap;->EGG_DIALOG_UPS_MTOP_KEY:Ljava/lang/String;

    iget-object v2, p0, Lc8/hap;->upsCheck:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/hap;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-boolean v0, p0, Lc8/hap;->isSpdy:Z

    invoke-static {v0}, Lc8/qN;->setSpdyEnabled(Z)V

    .line 275
    iget-boolean v0, p0, Lc8/hap;->isSsl:Z

    invoke-static {v0}, Lc8/qN;->setSSLEnabled(Z)V

    .line 276
    iget-boolean v0, p0, Lc8/hap;->isHttpsValidation:Z

    invoke-static {v0}, Lc8/qN;->setHttpsValidationEnabled(Z)V

    .line 277
    return-void

    .line 256
    :cond_2
    sget-object v0, Lc8/hap;->EGG_DIALOG_PC_NO:Ljava/lang/String;

    goto/16 :goto_0

    .line 257
    :cond_3
    sget-object v0, Lc8/hap;->EGG_DIALOG_PC_NO:Ljava/lang/String;

    goto/16 :goto_1

    .line 258
    :cond_4
    sget-object v0, Lc8/hap;->EGG_DIALOG_PC_NO:Ljava/lang/String;

    goto :goto_2
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 231
    if-eqz p0, :cond_1

    .line 232
    const-string/jumbo v2, "networkDialog"

    .line 233
    invoke-static {}, Lc8/LWc;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 232
    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    return-object v1

    .line 233
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method private initData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 178
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lc8/hap;->EGG_DIALOG_SPDY_KEY:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/hap;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "spdy":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 180
    sget-object v3, Lc8/hap;->EGG_DIALOG_PC_YES:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    iput-boolean v5, p0, Lc8/hap;->isSpdy:Z

    .line 189
    :goto_0
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lc8/hap;->EGG_DIALOG_SSL_KEY:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/hap;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "ssl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 191
    sget-object v3, Lc8/hap;->EGG_DIALOG_PC_YES:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    iput-boolean v5, p0, Lc8/hap;->isSsl:Z

    .line 200
    :goto_1
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lc8/hap;->EGG_DIALOG_HTTPS_VALIDATION_KEY:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/hap;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "httpsValidation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 202
    sget-object v3, Lc8/hap;->EGG_DIALOG_PC_YES:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 203
    iput-boolean v5, p0, Lc8/hap;->isHttpsValidation:Z

    .line 211
    :goto_2
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lc8/hap;->EGG_DIALOG_UPS_CHECK:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/hap;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/hap;->upsCheck:Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lc8/hap;->upsCheck:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    sget-object v3, Lc8/hap;->EGG_DIALOG_UPS_DEFAULT:Ljava/lang/String;

    iput-object v3, p0, Lc8/hap;->upsCheck:Ljava/lang/String;

    .line 216
    :cond_0
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lc8/hap;->EGG_DIALOG_UPS_HOST_KEY:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/hap;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/hap;->mUpsHost:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lc8/hap;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lc8/hap;->EGG_DIALOG_UPS_IP_KEY:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/hap;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/hap;->mUpsIp:Ljava/lang/String;

    .line 220
    return-void

    .line 183
    .end local v0    # "httpsValidation":Ljava/lang/String;
    .end local v2    # "ssl":Ljava/lang/String;
    :cond_1
    iput-boolean v6, p0, Lc8/hap;->isSpdy:Z

    goto :goto_0

    .line 186
    :cond_2
    iput-boolean v5, p0, Lc8/hap;->isSpdy:Z

    goto :goto_0

    .line 194
    .restart local v2    # "ssl":Ljava/lang/String;
    :cond_3
    iput-boolean v6, p0, Lc8/hap;->isSsl:Z

    goto :goto_1

    .line 197
    :cond_4
    iput-boolean v5, p0, Lc8/hap;->isSsl:Z

    goto :goto_1

    .line 205
    .restart local v0    # "httpsValidation":Ljava/lang/String;
    :cond_5
    iput-boolean v6, p0, Lc8/hap;->isHttpsValidation:Z

    goto :goto_2

    .line 208
    :cond_6
    iput-boolean v5, p0, Lc8/hap;->isHttpsValidation:Z

    goto :goto_2
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    sget v0, Lcom/youku/phone/R$id;->layout_egg_dialog_cancel:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/hap;->layout_egg_dialog_cancel:Landroid/view/View;

    .line 97
    sget v0, Lcom/youku/phone/R$id;->layout_egg_dialog_set:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/hap;->layout_egg_dialog_set:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lc8/hap;->layout_egg_dialog_cancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lc8/hap;->layout_egg_dialog_set:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v0, Lcom/youku/phone/R$id;->chk_egg_dialog_spdy:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lc8/hap;->chk_egg_dialog_spdy:Landroid/widget/CheckBox;

    .line 102
    iget-object v0, p0, Lc8/hap;->chk_egg_dialog_spdy:Landroid/widget/CheckBox;

    new-instance v1, Lc8/dap;

    invoke-direct {v1, p0}, Lc8/dap;-><init>(Lc8/hap;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    iget-object v0, p0, Lc8/hap;->chk_egg_dialog_spdy:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lc8/hap;->isSpdy:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    sget v0, Lcom/youku/phone/R$id;->chk_egg_dialog_ssl:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lc8/hap;->chk_egg_dialog_ssl:Landroid/widget/CheckBox;

    .line 111
    iget-object v0, p0, Lc8/hap;->chk_egg_dialog_ssl:Landroid/widget/CheckBox;

    new-instance v1, Lc8/eap;

    invoke-direct {v1, p0}, Lc8/eap;-><init>(Lc8/hap;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iget-object v0, p0, Lc8/hap;->chk_egg_dialog_ssl:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lc8/hap;->isSsl:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    sget v0, Lcom/youku/phone/R$id;->chk_egg_dialog_httpsValidation:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lc8/hap;->chk_egg_dialog_httpsValidation:Landroid/widget/CheckBox;

    .line 121
    iget-object v0, p0, Lc8/hap;->chk_egg_dialog_httpsValidation:Landroid/widget/CheckBox;

    new-instance v1, Lc8/fap;

    invoke-direct {v1, p0}, Lc8/fap;-><init>(Lc8/hap;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    iget-object v0, p0, Lc8/hap;->chk_egg_dialog_httpsValidation:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lc8/hap;->isHttpsValidation:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    sget v0, Lcom/youku/phone/R$id;->chk_egg_network_dialog_ups:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lc8/hap;->radiogroup_egg_dialog_ups:Landroid/widget/RadioGroup;

    .line 130
    iget-object v0, p0, Lc8/hap;->radiogroup_egg_dialog_ups:Landroid/widget/RadioGroup;

    new-instance v1, Lc8/gap;

    invoke-direct {v1, p0}, Lc8/gap;-><init>(Lc8/hap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 143
    sget v0, Lcom/youku/phone/R$id;->chk_egg_network_dialog_ups_default:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_default:Landroid/widget/RadioButton;

    .line 144
    sget v0, Lcom/youku/phone/R$id;->chk_egg_network_dialog_ups_http:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_http:Landroid/widget/RadioButton;

    .line 145
    sget v0, Lcom/youku/phone/R$id;->chk_egg_network_dialog_ups_mtop:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_mtop:Landroid/widget/RadioButton;

    .line 147
    sget-object v0, Lc8/hap;->EGG_DIALOG_UPS_DEFAULT:Ljava/lang/String;

    iget-object v1, p0, Lc8/hap;->upsCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_default:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_http:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_mtop:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 161
    :cond_0
    :goto_0
    sget v0, Lcom/youku/phone/R$id;->ups_ip:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc8/hap;->upsIp:Landroid/widget/EditText;

    .line 162
    iget-object v0, p0, Lc8/hap;->upsIp:Landroid/widget/EditText;

    const-string/jumbo v1, "\u9884\u53d1\u7ebfUPS IP"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lc8/hap;->mUpsIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lc8/hap;->upsIp:Landroid/widget/EditText;

    iget-object v1, p0, Lc8/hap;->mUpsIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_1
    sget v0, Lcom/youku/phone/R$id;->ups_host:I

    invoke-virtual {p0, v0}, Lc8/hap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc8/hap;->upsHost:Landroid/widget/EditText;

    .line 169
    iget-object v0, p0, Lc8/hap;->upsHost:Landroid/widget/EditText;

    const-string/jumbo v1, "\u9884\u53d1\u7ebfUPS HOST"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lc8/hap;->mUpsHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lc8/hap;->upsHost:Landroid/widget/EditText;

    iget-object v1, p0, Lc8/hap;->mUpsHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_2
    return-void

    .line 151
    :cond_3
    sget-object v0, Lc8/hap;->EGG_DIALOG_UPS_HTTP:Ljava/lang/String;

    iget-object v1, p0, Lc8/hap;->upsCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_default:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_http:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_mtop:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 155
    :cond_4
    sget-object v0, Lc8/hap;->EGG_DIALOG_UPS_MTOP:Ljava/lang/String;

    iget-object v1, p0, Lc8/hap;->upsCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_default:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_http:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 158
    iget-object v0, p0, Lc8/hap;->chk_egg_network_dialog_ups_mtop:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 223
    if-eqz p0, :cond_0

    .line 224
    const-string/jumbo v2, "networkDialog"

    .line 225
    invoke-static {}, Lc8/LWc;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 224
    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 225
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->layout_egg_dialog_cancel:I

    if-ne v0, v1, :cond_1

    .line 244
    invoke-virtual {p0}, Lc8/hap;->dismiss()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->layout_egg_dialog_set:I

    if-ne v0, v1, :cond_0

    .line 246
    invoke-direct {p0}, Lc8/hap;->doSet()V

    .line 247
    invoke-virtual {p0}, Lc8/hap;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v0, Lcom/youku/phone/R$layout;->network_dialog_view:I

    invoke-virtual {p0, v0}, Lc8/hap;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lc8/hap;->initData()V

    .line 91
    invoke-direct {p0}, Lc8/hap;->initView()V

    .line 92
    return-void
.end method
