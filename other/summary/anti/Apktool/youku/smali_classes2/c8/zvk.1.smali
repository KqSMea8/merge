.class public Lc8/zvk;
.super Ljava/lang/Object;
.source "FreeFlowUtil.java"


# static fields
.field public static final FLAG_DOWNLOAD_MESSAGE:I = 0x127ecf

.field public static final FLAG_LIVE_MESSAGE:I = 0x127e60

.field public static final FLAG_SOKU_MESSAGE:I = 0x127f3e

.field public static final FLAG_UPLOAD_MESSAGE:I = 0x127f3f

.field private static final ourInstance:Lc8/zvk;


# instance fields
.field public countDownLoadShow:I

.field private keyDownLoadDialog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lc8/zvk;

    invoke-direct {v0}, Lc8/zvk;-><init>()V

    sput-object v0, Lc8/zvk;->ourInstance:Lc8/zvk;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lc8/zvk;->countDownLoadShow:I

    .line 38
    const-string/jumbo v0, "china_unicom_download_dialog_count_key"

    iput-object v0, p0, Lc8/zvk;->keyDownLoadDialog:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static getInstance()Lc8/zvk;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lc8/zvk;->ourInstance:Lc8/zvk;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public showMessageDialog(Landroid/content/Context;ILc8/wvk;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flagDialog"    # I
    .param p3, "mOnclick"    # Lc8/wvk;

    .prologue
    const v5, 0x127e60

    .line 52
    if-eqz p1, :cond_0

    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    new-instance v2, Lc8/xvk;

    invoke-direct {v2, p1}, Lc8/xvk;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, "mChinaUnicomAlertDialog":Lc8/xvk;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lc8/xvk;->setCanceledOnTouchOutside(Z)V

    .line 55
    iget-object v4, p0, Lc8/zvk;->keyDownLoadDialog:Ljava/lang/String;

    invoke-static {v4}, Lc8/Iin;->getPreferenceInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lc8/zvk;->countDownLoadShow:I

    .line 56
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lc8/Iin;->isWifi()Z

    move-result v4

    if-nez v4, :cond_7

    .line 57
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Dvk;->isUnicomRelateShip()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 61
    if-ne p2, v5, :cond_1

    .line 62
    const-string/jumbo v3, "\u8054\u901a\u514d\u6d41\u91cf\u670d\u52a1\u4e0d\u8986\u76d6\u76f4\u64ad\uff0c\u76f4\u64ad\u5c06\u6d88\u8017\u5957\u9910\u6d41\u91cf"

    .line 63
    .local v3, "messageStr":Ljava/lang/String;
    const-string/jumbo v0, "\u7ee7\u7eed\u76f4\u64ad"

    .line 64
    .local v0, "cancelStr":Ljava/lang/String;
    const-string/jumbo v1, "\u53d6\u6d88\u76f4\u64ad"

    .line 65
    .local v1, "doneStr":Ljava/lang/String;
    invoke-virtual {v2, v3, v1, v0, p3}, Lc8/xvk;->showFreeFlowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/wvk;)V

    .line 103
    .end local v0    # "cancelStr":Ljava/lang/String;
    .end local v1    # "doneStr":Ljava/lang/String;
    .end local v2    # "mChinaUnicomAlertDialog":Lc8/xvk;
    .end local v3    # "messageStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v2    # "mChinaUnicomAlertDialog":Lc8/xvk;
    :cond_1
    const v4, 0x127ecf

    if-ne p2, v4, :cond_2

    .line 69
    const-string/jumbo v3, "\u8054\u901a\u514d\u6d41\u91cf\u670d\u52a1\u4e0d\u8986\u76d6\u89c6\u9891\u4e0b\u8f7d\uff0c\u89c6\u9891\u4e0b\u8f7d\u5c06\u6d88\u8017\u5957\u9910\u6d41\u91cf"

    .line 70
    .restart local v3    # "messageStr":Ljava/lang/String;
    const-string/jumbo v0, "\u53d6\u6d88\u4e0b\u8f7d"

    .line 71
    .restart local v0    # "cancelStr":Ljava/lang/String;
    const-string/jumbo v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    .line 73
    .restart local v1    # "doneStr":Ljava/lang/String;
    invoke-virtual {v2, v3, v1, v0, p3}, Lc8/xvk;->showFreeFlowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/wvk;)V

    .line 74
    iget-object v4, p0, Lc8/zvk;->keyDownLoadDialog:Ljava/lang/String;

    iget v5, p0, Lc8/zvk;->countDownLoadShow:I

    invoke-static {v4, v5}, Lc8/Iin;->savePreference(Ljava/lang/String;I)V

    goto :goto_0

    .line 75
    .end local v0    # "cancelStr":Ljava/lang/String;
    .end local v1    # "doneStr":Ljava/lang/String;
    .end local v3    # "messageStr":Ljava/lang/String;
    :cond_2
    const v4, 0x127f3e

    if-ne p2, v4, :cond_3

    .line 76
    const-string/jumbo v3, "\u8054\u901a\u514d\u6d41\u91cf\u670d\u52a1\u4e0d\u8986\u76d6\u7b2c\u4e09\u65b9\u89c6\u9891\uff0c\u7ee7\u7eed\u64ad\u653e\u5c06\u6d88\u8017\u5957\u9910\u6d41\u91cf"

    .line 77
    .restart local v3    # "messageStr":Ljava/lang/String;
    const-string/jumbo v0, "\u53d6\u6d88\u89c2\u770b"

    .line 78
    .restart local v0    # "cancelStr":Ljava/lang/String;
    const-string/jumbo v1, "\u7ee7\u7eed\u89c2\u770b"

    .line 79
    .restart local v1    # "doneStr":Ljava/lang/String;
    invoke-virtual {v2, v3, v1, v0, p3}, Lc8/xvk;->showFreeFlowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/wvk;)V

    goto :goto_0

    .line 80
    .end local v0    # "cancelStr":Ljava/lang/String;
    .end local v1    # "doneStr":Ljava/lang/String;
    .end local v3    # "messageStr":Ljava/lang/String;
    :cond_3
    const v4, 0x127f3f

    if-ne p2, v4, :cond_4

    .line 81
    const-string/jumbo v3, "\u8054\u901a\u514d\u6d41\u91cf\u670d\u52a1\u4e0d\u8986\u76d6\u89c6\u9891\u4e0a\u4f20\uff0c\u4e0a\u4f20\u89c6\u9891\u5c06\u6d88\u8017\u5957\u9910\u6d41\u91cf"

    .line 82
    .restart local v3    # "messageStr":Ljava/lang/String;
    const-string/jumbo v0, "\u53d6\u6d88\u4e0a\u4f20"

    .line 83
    .restart local v0    # "cancelStr":Ljava/lang/String;
    const-string/jumbo v1, "\u7ee7\u7eed\u4e0a\u4f20"

    .line 84
    .restart local v1    # "doneStr":Ljava/lang/String;
    invoke-virtual {v2, v3, v1, v0, p3}, Lc8/xvk;->showFreeFlowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/wvk;)V

    goto :goto_0

    .line 86
    .end local v0    # "cancelStr":Ljava/lang/String;
    .end local v1    # "doneStr":Ljava/lang/String;
    .end local v3    # "messageStr":Ljava/lang/String;
    :cond_4
    invoke-interface {p3}, Lc8/wvk;->doClickEvent()V

    goto :goto_0

    .line 89
    :cond_5
    if-ne p2, v5, :cond_6

    .line 90
    invoke-interface {p3}, Lc8/wvk;->cancelClickEvent()V

    goto :goto_0

    .line 92
    :cond_6
    invoke-interface {p3}, Lc8/wvk;->doClickEvent()V

    goto :goto_0

    .line 96
    :cond_7
    if-ne p2, v5, :cond_8

    .line 97
    invoke-interface {p3}, Lc8/wvk;->cancelClickEvent()V

    goto :goto_0

    .line 99
    :cond_8
    invoke-interface {p3}, Lc8/wvk;->doClickEvent()V

    goto :goto_0
.end method
