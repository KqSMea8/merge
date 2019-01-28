.class public final Lc8/bzo;
.super Ljava/lang/Object;
.source "YoukuUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/azo;
    }
.end annotation


# static fields
.field public static AES_DECRYPT_PASSWORD:Ljava/lang/String; = null

.field public static ALGORITHM:Ljava/lang/String; = null

.field public static final CHINESE:I = 0x0

.field public static LAST_EXIT_INTENT_TIME:J = 0x0L

.field public static final MIX:I = 0x3

.field public static final NUMBER_CHARACTER:I = 0x2

.field public static final NUMBER_OR_CHARACTER:I = 0x1

.field public static final TOPIC_ID:Ljava/lang/String; = "TOPIC_ID"

.field public static final TOPIC_LIST_ID:Ljava/lang/String; = "subject_box_id"

.field public static TOP_ACTIVITY:Ljava/lang/String; = null

.field public static TOP_LIST_ACTIVITY:Ljava/lang/String; = null

.field public static final USER_CHANNEL_HOME:Ljava/lang/String; = "home"

.field public static final USER_CHANNEL_PLAYER_CARD:Ljava/lang/String; = "player-card"

.field public static final USER_CHANNEL_PLAYER_LIST:Ljava/lang/String; = "player-list"

.field public static final USER_CHANNEL_SCAN:Ljava/lang/String; = "scan"

.field public static final VIDEO_CHANNEL_TYPE:Ljava/lang/String; = "video_channel_type"

.field public static Wireless_pid:Ljava/lang/String;

.field public static currentClickTime:J

.field public static currentPlayClickTime:J

.field public static lastClickTime:J

.field public static lastPlayClickTime:J

.field private static radius:I

.field private static final sMsgHandler:Lc8/azo;

.field private static sToast:Landroid/widget/Toast;

.field private static targetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    const-string/jumbo v0, "4e308edfc33936d7"

    sput-object v0, Lc8/bzo;->Wireless_pid:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "com.youku.phone.topic.TopicActivity"

    sput-object v0, Lc8/bzo;->TOP_ACTIVITY:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "com.youku.phone.topic.TopicListActivity"

    sput-object v0, Lc8/bzo;->TOP_LIST_ACTIVITY:Ljava/lang/String;

    .line 326
    new-instance v0, Lc8/azo;

    .line 327
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/azo;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/bzo;->sMsgHandler:Lc8/azo;

    .line 584
    sput-wide v2, Lc8/bzo;->lastClickTime:J

    .line 586
    sput-wide v2, Lc8/bzo;->currentClickTime:J

    .line 618
    sput-wide v2, Lc8/bzo;->lastPlayClickTime:J

    .line 620
    sput-wide v2, Lc8/bzo;->currentPlayClickTime:J

    .line 1223
    const-string/jumbo v0, "AES/ECB/NoPadding"

    sput-object v0, Lc8/bzo;->ALGORITHM:Ljava/lang/String;

    .line 1224
    const-string/jumbo v0, "lkjhg12yuiw734nx"

    sput-object v0, Lc8/bzo;->AES_DECRYPT_PASSWORD:Ljava/lang/String;

    .line 1309
    const/4 v0, 0x5

    sput v0, Lc8/bzo;->radius:I

    .line 1471
    const/4 v0, -0x1

    sput v0, Lc8/bzo;->targetSdkVersion:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1099
    invoke-static {p0}, Lc8/OWc;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lc8/bzo;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 94
    sput-object p0, Lc8/bzo;->sToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static cancelTips()V
    .locals 2

    .prologue
    .line 539
    sget-object v0, Lc8/bzo;->sMsgHandler:Lc8/azo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/azo;->sendEmptyMessage(I)Z

    .line 540
    return-void
.end method

.method public static checkClickEvent()Z
    .locals 2

    .prologue
    .line 600
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lc8/bzo;->checkClickEvent(J)Z

    move-result v0

    return v0
.end method

.method public static checkClickEvent(J)Z
    .locals 4
    .param p0, "interval"    # J

    .prologue
    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 605
    sput-wide v0, Lc8/bzo;->currentClickTime:J

    sget-wide v2, Lc8/bzo;->lastClickTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    .line 606
    sget-wide v0, Lc8/bzo;->currentClickTime:J

    sput-wide v0, Lc8/bzo;->lastClickTime:J

    .line 607
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    .line 609
    :cond_0
    sget-wide v0, Lc8/bzo;->currentClickTime:J

    sput-wide v0, Lc8/bzo;->lastClickTime:J

    .line 610
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 190
    invoke-static {p0}, Lc8/OWc;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static dip2px(F)I
    .locals 1
    .param p0, "dipValue"    # F

    .prologue
    .line 236
    invoke-static {p0}, Lc8/OWc;->dip2px(F)I

    move-result v0

    return v0
.end method

.method public static dip2px(FLandroid/content/Context;)I
    .locals 2
    .param p0, "dipValue"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    const/4 v0, 0x1

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 248
    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1120
    :goto_0
    return-object v1

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1120
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 4
    .param p0, "strColor"    # Ljava/lang/String;

    .prologue
    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, "color":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1213
    :try_start_0
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1214
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1219
    :cond_0
    :goto_0
    return v0

    .line 1215
    :catch_0
    move-exception v1

    .line 1216
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1597
    :try_start_0
    invoke-static {}, Lc8/bzo;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "3"

    .line 1602
    .local v0, "deviceTypeId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1597
    .end local v0    # "deviceTypeId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "4"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1598
    :catch_0
    move-exception v1

    .line 1599
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1600
    const-string/jumbo v0, "4"

    .restart local v0    # "deviceTypeId":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getEncodeUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1663
    :try_start_0
    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/bzo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1668
    .local v1, "utdid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1664
    .end local v1    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1665
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1666
    const-string/jumbo v1, ""

    .restart local v1    # "utdid":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getPassportCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1651
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->getCookie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    .line 1652
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->getCookie()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1078
    const-string/jumbo v3, "phone"

    .line 1079
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1080
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1081
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "phoneNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "=getPhoneNumber==phoneNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1083
    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 1084
    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1085
    const-string/jumbo v3, "1"

    .line 1086
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1085
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1087
    .local v2, "resultPhoneNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "=getPhoneNumber=resultPhoneNumber=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1095
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .end local v2    # "resultPhoneNumber":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 1091
    goto :goto_0

    .line 1095
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getSkipAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1124
    const-string/jumbo v0, "http://cps.youku.com/redirect.html?id=00014997"

    return-object v0
.end method

.method public static getUtdid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1565
    :try_start_0
    const-class v2, Lc8/vdn;

    .line 1566
    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vdn;

    invoke-interface {v2}, Lc8/vdn;->getUtdid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1571
    .local v1, "utdid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1567
    .end local v1    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1569
    const-string/jumbo v1, ""

    .restart local v1    # "utdid":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1679
    :try_start_0
    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1684
    .local v1, "utdid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1680
    .end local v1    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1681
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1682
    const-string/jumbo v1, ""

    .restart local v1    # "utdid":Ljava/lang/String;
    goto :goto_0
.end method

.method public static goDetail(Landroid/content/Context;Lcom/youku/vo/CommonVideoInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mCommonVideoInfo"    # Lcom/youku/vo/CommonVideoInfo;

    .prologue
    .line 734
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 827
    :pswitch_0
    const-string/jumbo v2, "YoukuUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is Not support type in home page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 738
    :pswitch_2
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 740
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 739
    invoke-static {p0, v2, v3}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 747
    :pswitch_3
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getGameCenterVideoInfo()Lcom/youku/vo/GameCenterVideoInfo;

    goto :goto_0

    .line 751
    :pswitch_4
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getGame_page_id()Ljava/lang/String;

    goto :goto_0

    .line 762
    :pswitch_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 763
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tid"

    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getVideo_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string/jumbo v2, "tname"

    const-string/jumbo v3, "mCommonVideoInfo.getTitle()"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v2

    const-string/jumbo v3, "youku://community"

    invoke-virtual {v2, v3}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0

    .line 771
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->isLive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 773
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getLive_sdk_type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 777
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 778
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "uid"

    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getVideo_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v2

    const-string/jumbo v3, "youku://userlive"

    .line 780
    invoke-virtual {v2, v3}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0

    .line 782
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getLive_sdk_type()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 783
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 784
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "youku://liveplay"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 785
    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string/jumbo v2, "liveItemId"

    .line 787
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getVideo_id()Ljava/lang/String;

    move-result-object v3

    .line 786
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 790
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getLive_sdk_type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 792
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getVideo_id()Ljava/lang/String;

    move-result-object v2

    .line 793
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getUrl_live()Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getUrl_imge()Ljava/lang/String;

    move-result-object v4

    .line 791
    invoke-static {p0, v2, v3, v4}, Lc8/bzo;->launchLivePlayActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 796
    :cond_3
    const-string/jumbo v2, "Invalid live type"

    invoke-static {v2}, Lc8/Syo;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 799
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 800
    .restart local v1    # "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string/jumbo v2, "video_id"

    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getVideo_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    const-string/jumbo v2, "isPay"

    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->isPay()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 803
    const-string/jumbo v2, "video_channel_type"

    .line 804
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getType()I

    move-result v3

    .line 803
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 805
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->isPlayList()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 806
    const-string/jumbo v2, "playlist_id"

    .line 807
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getPlaylistid()Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    :cond_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static goScore(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1166
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1167
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1168
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1169
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1171
    sget-object v5, Lc8/VLj;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1172
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v5, 0x10000

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1174
    .local v0, "activities":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 1175
    sget v5, Lcom/youku/phone/R$string;->score_dialog_no_market_tips:I

    invoke-static {v5}, Lc8/bzo;->showTips(I)V

    .line 1184
    .end local v0    # "activities":Ljava/util/List;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 1177
    .restart local v0    # "activities":Ljava/util/List;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1179
    .end local v0    # "activities":Ljava/util/List;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1181
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/lSh;->getReviewURL()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u4e3a\u6211\u8bc4\u5206"

    .line 1180
    invoke-static {p0, v5, v6}, Lc8/bzo;->goWebViewWithParameter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static goSearch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 960
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 961
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 962
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "sokusdk://searchresult"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 965
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static goWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 460
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lc8/bzo;->goWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 461
    return-void
.end method

.method public static goWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "getCookie"    # Z
    .param p4, "isAdver"    # Z

    .prologue
    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lc8/cWo;->isWeexUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lc8/cWo;->launchWeex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 494
    :goto_0
    return-void

    .line 489
    :cond_0
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v1, "isAdver"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    invoke-static {p0, p1, v0}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static goWebViewWithParameter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-static {p0, p1, p2, v0, v0}, Lc8/bzo;->goWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 472
    return-void
.end method

.method public static gotoUserChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 1322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1323
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string/jumbo v1, "flag"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "youku://userChannel"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "go to user channel, userid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1330
    return-void
.end method

.method public static hasInternet()Z
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lc8/OWc;->hasInternet()Z

    move-result v0

    return v0
.end method

.method public static isConfirmedExit()Z
    .locals 6

    .prologue
    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 529
    .local v0, "currentTime":J
    sget-wide v2, Lc8/bzo;->LAST_EXIT_INTENT_TIME:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 530
    const/4 v2, 0x1

    .line 534
    :goto_0
    return v2

    .line 532
    :cond_0
    sput-wide v0, Lc8/bzo;->LAST_EXIT_INTENT_TIME:J

    .line 533
    sget v2, Lcom/youku/phone/R$string;->tips_exit:I

    invoke-static {v2}, Lc8/bzo;->showTips(I)V

    .line 534
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMiPad()Z
    .locals 2

    .prologue
    .line 1018
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "MI PAD"

    .line 1019
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNum(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 265
    .local v1, "isNum":Z
    :goto_0
    return v1

    .line 258
    .end local v1    # "isNum":Z
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    const/4 v1, 0x1

    .restart local v1    # "isNum":Z
    goto :goto_0

    .line 260
    .end local v1    # "isNum":Z
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 262
    const/4 v1, 0x0

    .restart local v1    # "isNum":Z
    goto :goto_0
.end method

.method public static isPad()Z
    .locals 2

    .prologue
    .line 1028
    const/4 v0, 0x2

    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    .line 1029
    invoke-static {v1}, Lc8/LWc;->getDeviceDefaultOrientation(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lc8/bzo;->isMiPad()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVipUser()Z
    .locals 3

    .prologue
    .line 1159
    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v0

    .line 1160
    .local v0, "isVipUser":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVipUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",isVipUserTemp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lc8/Dfh;->isVipUserTemp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1161
    if-nez v0, :cond_0

    sget-boolean v1, Lc8/Dfh;->isVipUserTemp:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifi()Z
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lc8/OWc;->isWifi()Z

    move-result v0

    return v0
.end method

.method public static launchLivePlayActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "liveid"    # Ljava/lang/String;
    .param p2, "liveurl"    # Ljava/lang/String;
    .param p3, "liveimg"    # Ljava/lang/String;

    .prologue
    .line 841
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 842
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "liveid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string/jumbo v1, "liveurl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string/jumbo v1, "liveimg"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "youku://playlive"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 847
    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p0}, Lc8/OWc;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openUrlByType(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1131
    const/4 v1, 0x0

    .line 1133
    .local v1, "launch":Lc8/Xgn;
    :try_start_0
    const-class v3, Lc8/Xgn;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lc8/Xgn;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1138
    sget v3, Lcom/youku/phone/R$string;->wrong_url:I

    invoke-static {v3}, Lc8/Iin;->showTips(I)V

    .line 1156
    :cond_0
    :goto_1
    return-void

    .line 1134
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "YoukuUtil"

    invoke-static {v3, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1140
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_1
    const/4 v3, 0x1

    if-ne v3, p1, :cond_2

    .line 1141
    if-eqz v1, :cond_0

    .line 1142
    invoke-interface {v1, p0, p2}, Lc8/Xgn;->goWebView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1144
    :cond_2
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 1145
    if-eqz v1, :cond_0

    .line 1146
    invoke-interface {v1, p0, p2}, Lc8/Xgn;->goBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1148
    :cond_3
    const/4 v3, 0x3

    if-ne v3, p1, :cond_4

    .line 1149
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p2, v3}, Lc8/HTh;->launchPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1153
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p2, v3}, Lc8/HTh;->launchPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static showTips(I)V
    .locals 4
    .param p0, "stringId"    # I

    .prologue
    .line 330
    sget-object v0, Lc8/VLj;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lc8/bzo;->showTips(Ljava/lang/String;J)V

    .line 331
    return-void
.end method

.method public static showTips(Ljava/lang/String;)V
    .locals 2
    .param p0, "tipsString"    # Ljava/lang/String;

    .prologue
    .line 334
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lc8/bzo;->showTips(Ljava/lang/String;J)V

    .line 335
    return-void
.end method

.method public static showTips(Ljava/lang/String;J)V
    .locals 5
    .param p0, "tipsString"    # Ljava/lang/String;
    .param p1, "threshold"    # J

    .prologue
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Youku.showTips():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 348
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tipsString"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v2, "threshold"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 352
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 353
    sget-object v2, Lc8/bzo;->sMsgHandler:Lc8/azo;

    invoke-virtual {v2, v1}, Lc8/azo;->sendMessage(Landroid/os/Message;)Z

    .line 355
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 722
    return-void
.end method
