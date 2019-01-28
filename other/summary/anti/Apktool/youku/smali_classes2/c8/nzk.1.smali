.class public Lc8/nzk;
.super Ljava/lang/Object;
.source "OfflineHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mzk;
    }
.end annotation


# static fields
.field private static final sMsgHandler:Lc8/mzk;

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lc8/mzk;

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/mzk;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/nzk;->sMsgHandler:Lc8/mzk;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p0}, Lc8/OWc;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lc8/nzk;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 18
    sput-object p0, Lc8/nzk;->sToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static cancelTips()V
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lc8/nzk;->sMsgHandler:Lc8/mzk;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/mzk;->sendEmptyMessage(I)Z

    .line 139
    return-void
.end method

.method public static hasInternet()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lc8/OWc;->hasInternet()Z

    move-result v0

    return v0
.end method

.method public static showTips(I)V
    .locals 4
    .param p0, "stringId"    # I

    .prologue
    .line 25
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lc8/nzk;->showTips(Ljava/lang/String;J)V

    .line 26
    return-void
.end method

.method public static showTips(IJ)V
    .locals 1
    .param p0, "stringId"    # I
    .param p1, "threshold"    # J

    .prologue
    .line 33
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lc8/nzk;->showTips(Ljava/lang/String;J)V

    .line 34
    return-void
.end method

.method public static showTips(Ljava/lang/String;)V
    .locals 2
    .param p0, "tipsString"    # Ljava/lang/String;

    .prologue
    .line 29
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lc8/nzk;->showTips(Ljava/lang/String;J)V

    .line 30
    return-void
.end method

.method public static showTips(Ljava/lang/String;J)V
    .locals 5
    .param p0, "tipsString"    # Ljava/lang/String;
    .param p1, "threshold"    # J

    .prologue
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Youku.showTips():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 43
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tipsString"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v2, "threshold"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 48
    sget-object v2, Lc8/nzk;->sMsgHandler:Lc8/mzk;

    invoke-virtual {v2, v1}, Lc8/mzk;->sendMessage(Landroid/os/Message;)Z

    .line 50
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
