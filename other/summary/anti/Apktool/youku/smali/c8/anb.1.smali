.class public Lc8/anb;
.super Lc8/Xmb;
.source "ALPTBLinkPartnerSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Zmb;
    }
.end annotation


# static fields
.field public static volatile isSupportJumpFailedOpenTaobao:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lc8/anb;->isSupportJumpFailedOpenTaobao:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/Xmb;-><init>()V

    .line 192
    return-void
.end method

.method public static jumpDetail(Landroid/content/Context;Lc8/kob;Lc8/hob;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "detailParam"    # Lc8/kob;
    .param p2, "jumpFailParam"    # Lc8/hob;

    .prologue
    .line 86
    invoke-static {p1}, Lc8/anb;->linkkeyChange(Lc8/mob;)V

    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lc8/vnb;->invoke(Landroid/content/Context;Lc8/iob;Lc8/hob;ZLc8/gnb;)I

    move-result v0

    return v0
.end method

.method public static jumpShop(Landroid/content/Context;Lc8/lob;Lc8/hob;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shopParam"    # Lc8/lob;
    .param p2, "jumpFailParam"    # Lc8/hob;

    .prologue
    .line 75
    invoke-static {p1}, Lc8/anb;->linkkeyChange(Lc8/mob;)V

    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lc8/vnb;->invoke(Landroid/content/Context;Lc8/iob;Lc8/hob;ZLc8/gnb;)I

    move-result v0

    return v0
.end method

.method public static jumpURI(Landroid/content/Context;Lc8/nob;Lc8/hob;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriParam"    # Lc8/nob;
    .param p2, "jumpFailParam"    # Lc8/hob;

    .prologue
    .line 97
    invoke-static {p1}, Lc8/anb;->linkkeyChange(Lc8/mob;)V

    .line 98
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lc8/vnb;->invoke(Landroid/content/Context;Lc8/iob;Lc8/hob;ZLc8/gnb;)I

    move-result v0

    return v0
.end method

.method private static linkkeyChange(Lc8/mob;)V
    .locals 2
    .param p0, "jumpParam"    # Lc8/mob;

    .prologue
    .line 161
    if-eqz p0, :cond_0

    iget-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    const-string/jumbo v1, "taobao_scheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string/jumbo v0, "taobao"

    iput-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    const-string/jumbo v1, "tmall_scheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "tmall"

    iput-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setDebugStatus(ZZ)V
    .locals 1
    .param p0, "turnOnDebug"    # Z
    .param p1, "isWithDialog"    # Z

    .prologue
    .line 116
    if-eqz p0, :cond_1

    .line 118
    invoke-static {p0}, Lc8/Ymb;->setDebugMode(Z)V

    .line 119
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lc8/Ymb;->setLogMode(I)V

    .line 125
    :goto_1
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p0}, Lc8/Ymb;->setDebugMode(Z)V

    goto :goto_1
.end method

.method public static setEnvironment(I)V
    .locals 1
    .param p0, "environment"    # I

    .prologue
    const/4 v0, 0x1

    .line 133
    packed-switch p0, :pswitch_data_0

    .line 148
    invoke-static {v0}, Lc8/Ymb;->setEnvironment(I)V

    .line 153
    :goto_0
    return-void

    .line 136
    :pswitch_0
    invoke-static {v0}, Lc8/Ymb;->setEnvironment(I)V

    goto :goto_0

    .line 140
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/Ymb;->setEnvironment(I)V

    goto :goto_0

    .line 144
    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/Ymb;->setEnvironment(I)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setSupportJumpFailedOpenTaobao(Z)V
    .locals 0
    .param p0, "isSupport"    # Z

    .prologue
    .line 106
    sput-boolean p0, Lc8/anb;->isSupportJumpFailedOpenTaobao:Z

    .line 107
    return-void
.end method

.method public static setTTID(Ljava/lang/String;)I
    .locals 3
    .param p0, "TTID"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x139

    const/16 v0, 0xca

    .line 49
    invoke-static {}, Lc8/Ymb;->isInit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    sput-object p0, Lc8/job;->tempVal:Ljava/lang/String;

    .line 63
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v1

    iput-object p0, v1, Lc8/job;->TTID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method private static setUtdid(Ljava/lang/String;)I
    .locals 1
    .param p0, "utdid"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {}, Lc8/Ymb;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const/16 v0, 0x12c

    .line 189
    :goto_0
    return v0

    .line 184
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iput-object p0, v0, Lc8/job;->utdid:Ljava/lang/String;

    .line 186
    const/16 v0, 0xca

    goto :goto_0

    .line 189
    :cond_1
    const/16 v0, 0x139

    goto :goto_0
.end method
