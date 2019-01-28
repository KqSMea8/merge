.class public Lc8/QKj;
.super Ljava/lang/Object;
.source "AlipayUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static currentCallTime:J

.field public static lastCallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    const-class v0, Lc8/QKj;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/QKj;->TAG:Ljava/lang/String;

    .line 34
    sput-wide v2, Lc8/QKj;->lastCallTime:J

    .line 36
    sput-wide v2, Lc8/QKj;->currentCallTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCallEvent()Z
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lc8/QKj;->checkCallEvent(J)Z

    move-result v0

    return v0
.end method

.method public static checkCallEvent(J)Z
    .locals 4
    .param p0, "interval"    # J

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    sput-wide v0, Lc8/QKj;->currentCallTime:J

    sget-wide v2, Lc8/QKj;->lastCallTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    .line 45
    sget-wide v0, Lc8/QKj;->currentCallTime:J

    sput-wide v0, Lc8/QKj;->lastCallTime:J

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 48
    :cond_0
    sget-wide v0, Lc8/QKj;->currentCallTime:J

    sput-wide v0, Lc8/QKj;->lastCallTime:J

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkWXAppPayValid(Landroid/app/Activity;Lc8/Ojg;)Z
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "mIWXAPI"    # Lc8/Ojg;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v3, v4

    .line 179
    :cond_1
    :goto_0
    return v3

    .line 139
    :cond_2
    invoke-interface {p1}, Lc8/Ojg;->isWXAppInstalled()Z

    move-result v2

    .line 141
    .local v2, "isWXAppInstalled":Z
    invoke-interface {p1}, Lc8/Ojg;->getWXAppSupportAPI()I

    move-result v5

    const v6, 0x22000001

    if-lt v5, v6, :cond_5

    move v1, v3

    .line 143
    .local v1, "isPaySupported":Z
    :goto_1
    if-nez v2, :cond_6

    .line 144
    new-instance v0, Lc8/Cbp;

    sget-object v5, Lcom/youku/widget/YoukuDialog$TYPE;->normal:Lcom/youku/widget/YoukuDialog$TYPE;

    invoke-direct {v0, p0, v5}, Lc8/Cbp;-><init>(Landroid/app/Activity;Lcom/youku/widget/YoukuDialog$TYPE;)V

    .line 145
    .local v0, "dialog":Lc8/Cbp;
    sget v5, Lcom/youku/phone/R$string;->wxapp_not_install_tip:I

    invoke-virtual {v0, v5}, Lc8/Cbp;->setMessage(I)V

    .line 146
    sget v5, Lcom/youku/phone/R$string;->cancel:I

    new-instance v6, Lc8/MKj;

    invoke-direct {v6, v0}, Lc8/MKj;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v5, v6}, Lc8/Cbp;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 152
    sget v5, Lcom/youku/phone/R$string;->confirm:I

    new-instance v6, Lc8/NKj;

    invoke-direct {v6, v0, p0}, Lc8/NKj;-><init>(Lc8/Cbp;Landroid/app/Activity;)V

    invoke-virtual {v0, v5, v6}, Lc8/Cbp;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {v0}, Lc8/Cbp;->show()V

    .line 179
    .end local v0    # "dialog":Lc8/Cbp;
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    if-nez v1, :cond_1

    :cond_4
    move v3, v4

    goto :goto_0

    .end local v1    # "isPaySupported":Z
    :cond_5
    move v1, v4

    .line 141
    goto :goto_1

    .line 160
    .restart local v1    # "isPaySupported":Z
    :cond_6
    if-nez v1, :cond_3

    .line 161
    new-instance v0, Lc8/Cbp;

    sget-object v5, Lcom/youku/widget/YoukuDialog$TYPE;->normal:Lcom/youku/widget/YoukuDialog$TYPE;

    invoke-direct {v0, p0, v5}, Lc8/Cbp;-><init>(Landroid/app/Activity;Lcom/youku/widget/YoukuDialog$TYPE;)V

    .line 162
    .restart local v0    # "dialog":Lc8/Cbp;
    sget v5, Lcom/youku/phone/R$string;->wxapp_not_new_tip:I

    invoke-virtual {v0, v5}, Lc8/Cbp;->setMessage(I)V

    .line 163
    sget v5, Lcom/youku/phone/R$string;->cancel:I

    new-instance v6, Lc8/OKj;

    invoke-direct {v6, v0}, Lc8/OKj;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v5, v6}, Lc8/Cbp;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 169
    sget v5, Lcom/youku/phone/R$string;->confirm:I

    new-instance v6, Lc8/PKj;

    invoke-direct {v6, v0, p0}, Lc8/PKj;-><init>(Lc8/Cbp;Landroid/app/Activity;)V

    invoke-virtual {v0, v5, v6}, Lc8/Cbp;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v0}, Lc8/Cbp;->show()V

    goto :goto_2
.end method

.method public static getAliPayErrorMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "memo"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string/jumbo v1, "4000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->alipay_error_order_pay_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 121
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "8000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->alipay_error_pay_process:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "6001"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->alipay_error_pay_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "6002"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->alipay_error_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    move-object v0, p2

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDefaultPayment(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const-string/jumbo v1, "pay"

    invoke-static {p0, v1}, Lc8/QKj;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "payment":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string/jumbo v0, "alipay"

    .line 189
    :cond_0
    return-object v0
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 200
    if-eqz p0, :cond_1

    .line 201
    const-string/jumbo v2, "payment"

    invoke-static {}, Lc8/LWc;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    return-object v1

    .line 201
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method public static getPriceNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "price"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static isAliPayInstalled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    .line 247
    .local v0, "packagename":Ljava/lang/String;
    invoke-static {p0, v0}, Lc8/QKj;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 256
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isNum(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 235
    .local v1, "isNum":Z
    :goto_0
    return v1

    .line 228
    .end local v1    # "isNum":Z
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    const/4 v1, 0x1

    .restart local v1    # "isNum":Z
    goto :goto_0

    .line 230
    .end local v1    # "isNum":Z
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 232
    const/4 v1, 0x0

    .restart local v1    # "isNum":Z
    goto :goto_0
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 213
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lc8/QKj;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUrl().getScheme():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string/jumbo v3, "http"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "https"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 219
    .end local v2    # "uri":Landroid/net/Uri;
    .local v1, "isUrl":Z
    :goto_0
    return v1

    .line 214
    .end local v1    # "isUrl":Z
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 215
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    const/4 v1, 0x0

    .restart local v1    # "isUrl":Z
    goto :goto_0
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 193
    if-eqz p0, :cond_0

    .line 194
    const-string/jumbo v2, "payment"

    invoke-static {}, Lc8/LWc;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
