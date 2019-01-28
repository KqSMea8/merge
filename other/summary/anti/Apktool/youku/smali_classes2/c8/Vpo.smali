.class public final Lc8/Vpo;
.super Ljava/lang/Object;
.source "ThemeBundle.java"


# static fields
.field private static final THEME_BG_REMIND:Ljava/lang/String; = "theme_bg_remind"

.field private static final THEME_ICON_ALIPAY:Ljava/lang/String; = "theme_icon_alipay"

.field private static final THEME_ICON_BACK:Ljava/lang/String; = "theme_icon_back"

.field private static final THEME_ICON_CLEAR:Ljava/lang/String; = "theme_icon_clear"

.field private static final THEME_ICON_CLOSE:Ljava/lang/String; = "theme_icon_close"

.field private static final THEME_ICON_QQ:Ljava/lang/String; = "theme_icon_QQ"

.field private static final THEME_ICON_TAOBAO:Ljava/lang/String; = "theme_icon_taobao"

.field private static final THEME_ICON_WECHAT:Ljava/lang/String; = "theme_icon_wechat"

.field private static final THEME_ICON_WEIBO:Ljava/lang/String; = "theme_icon_weibo"

.field private static final THEME_ICON_YOUKU:Ljava/lang/String; = "theme_icon_youku"

.field private static final THEME_LOGO:Ljava/lang/String; = "theme_logo"

.field private static final THEME_MAIN_COLOR:Ljava/lang/String; = "theme_main_color"

.field private static final THEME_NO_BOTTOM_BG:Ljava/lang/String; = "theme_no_bottom_bg"

.field private static final THEME_PRIMARY_BTN_BG_COLOR:Ljava/lang/String; = "theme_primary_btn_bg_color"

.field private static final THEME_PRIMARY_BTN_TEXT_COLOR:Ljava/lang/String; = "theme_primary_btn_text_color"

.field private static final THEME_SECONDARY_BTN_BG_COLOR:Ljava/lang/String; = "theme_secondary_btn_bg_color"

.field private static final THEME_SECONDARY_BTN_TEXT_COLOR:Ljava/lang/String; = "theme_secondary_btn_text_color"


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "aBundle"    # Landroid/os/Bundle;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "aBundle cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    .line 53
    return-void
.end method


# virtual methods
.method public getBgRemind(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 174
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_bg_remind"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconAlipay(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_alipay"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconBack(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 156
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_back"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconClear(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_clear"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconClose(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_close"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconQQ(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 104
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_QQ"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconTaobao(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 88
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_taobao"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconWechat(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 112
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_wechat"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconWeibo(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_weibo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconYouku(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 80
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_youku"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLogo(I)I
    .locals 2
    .param p1, "aDefaultRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 64
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_logo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMainColor(I)I
    .locals 2
    .param p1, "aDefaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_main_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPrimaryBtnBgColor(I)I
    .locals 2
    .param p1, "aDefaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 210
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_primary_btn_bg_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPrimaryBtnTextColor(I)I
    .locals 2
    .param p1, "aDefaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 228
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_primary_btn_text_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSecondaryBtnBgColor(I)I
    .locals 2
    .param p1, "aDefaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 247
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_secondary_btn_bg_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSecondaryBtnTextColor(I)I
    .locals 2
    .param p1, "aDefaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 265
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_secondary_btn_text_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isNoBottomBg()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_no_bottom_bg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBgRemind(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 165
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_bg_remind"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    return-void
.end method

.method public setIconAlipay(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 92
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_alipay"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public setIconBack(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 147
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_back"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method public setIconClear(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_clear"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public setIconClose(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 68
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_close"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public setIconQQ(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_QQ"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public setIconTaobao(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_taobao"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method public setIconWechat(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_wechat"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method public setIconWeibo(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 116
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_weibo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method public setIconYouku(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 76
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_icon_youku"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public setLogo(I)V
    .locals 2
    .param p1, "aDrawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 60
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_logo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public setMainColor(I)V
    .locals 2
    .param p1, "aColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 183
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_main_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    return-void
.end method

.method public setNoBottomBg(Z)V
    .locals 2
    .param p1, "aNoBottomBg"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_no_bottom_bg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method public setPrimaryBtnBgColor(I)V
    .locals 2
    .param p1, "aColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 201
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_primary_btn_bg_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    return-void
.end method

.method public setPrimaryBtnTextColor(I)V
    .locals 2
    .param p1, "aColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 219
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_primary_btn_text_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public setSecondaryBtnBgColor(I)V
    .locals 2
    .param p1, "aColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 238
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_secondary_btn_bg_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    return-void
.end method

.method public setSecondaryBtnTextColor(I)V
    .locals 2
    .param p1, "aColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 256
    iget-object v0, p0, Lc8/Vpo;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "theme_secondary_btn_text_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    return-void
.end method
