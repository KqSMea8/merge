.class public Lc8/Eyo;
.super Ljava/lang/Object;
.source "AppVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dyo;
    }
.end annotation


# static fields
.field public static final AGGREEMENT_CHINAUNICOM_DIALOG_KEY:Ljava/lang/String; = "isShowChinaUnicomDialog"

.field public static final AGGREEMENT_DIALOG_KEY:Ljava/lang/String; = "isShowAggrementDialog"

.field public static final FLAG_HIDDEN_AGGREEMENT_DIALOG:I = 0xb

.field public static final FLAG_HIDDEN_CHINAUNICOM_AGGREEMENT_DIALOG:I = 0xc

.field public static final FLAG_PREFERENCE_DEAFAULT:I

.field public static final FLAG_SHOW_AGGREEMENT_DIALOG:I

.field public static final FLAG_SHOW_CHINAUNICOM_AGGREEMENT_DIALOG:I

.field private static appVersionManager:Lc8/Eyo;

.field private static mInitHttpRequest:Lc8/TIj;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private appInitInfo:Lc8/Dyo;

.field private context:Landroid/content/Context;

.field private isShowChinaUnicomStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lc8/Eyo;->appVersionManager:Lc8/Eyo;

    .line 38
    sput-object v0, Lc8/Eyo;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lc8/Eyo;->isShowChinaUnicomStyle:Z

    .line 48
    iput-object p1, p0, Lc8/Eyo;->context:Landroid/content/Context;

    .line 49
    const-string/jumbo v1, "app_aggrement"

    invoke-static {}, Lc8/LWc;->hasGingerbread()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lc8/Eyo;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    return-void
.end method

.method public static clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    sget-object v0, Lc8/Eyo;->mInitHttpRequest:Lc8/TIj;

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lc8/Eyo;->mInitHttpRequest:Lc8/TIj;

    invoke-interface {v0}, Lc8/TIj;->cancel()V

    .line 266
    sput-object v1, Lc8/Eyo;->mInitHttpRequest:Lc8/TIj;

    .line 268
    :cond_0
    sget-object v0, Lc8/Eyo;->appVersionManager:Lc8/Eyo;

    if-eqz v0, :cond_1

    .line 269
    sput-object v1, Lc8/Eyo;->appVersionManager:Lc8/Eyo;

    .line 271
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/Eyo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lc8/Eyo;->appVersionManager:Lc8/Eyo;

    if-nez v0, :cond_0

    .line 63
    invoke-static {p0}, Lc8/Eyo;->syncInit(Landroid/content/Context;)V

    .line 65
    :cond_0
    sget-object v0, Lc8/Eyo;->appVersionManager:Lc8/Eyo;

    return-object v0
.end method

.method public static isHasShowAgreementDialog()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 242
    sget-object v2, Lc8/Eyo;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "isShowAggrementDialog"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isWoChinaUnicomService()Z
    .locals 1

    .prologue
    .line 278
    const-string/jumbo v0, "wo_china_unicom_type"

    invoke-static {v0}, Lc8/VLj;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized syncInit(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-class v1, Lc8/Eyo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Eyo;->appVersionManager:Lc8/Eyo;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lc8/Eyo;

    invoke-direct {v0, p0}, Lc8/Eyo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/Eyo;->appVersionManager:Lc8/Eyo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit v1

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public compareDifferentVersionCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "netStr"    # Ljava/lang/String;
    .param p2, "localStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v4

    .line 186
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 189
    goto :goto_0

    .line 192
    :cond_3
    const-string/jumbo v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "netStrList":[Ljava/lang/String;
    const-string/jumbo v6, "\\."

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "localStrList":[Ljava/lang/String;
    array-length v6, v3

    array-length v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 196
    .local v2, "minLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 197
    aget-object v6, v3, v0

    invoke-static {v6}, Lc8/bzo;->isNum(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v1, v0

    invoke-static {v6}, Lc8/bzo;->isNum(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, v1, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_4

    move v4, v5

    .line 199
    goto :goto_0

    .line 200
    :cond_4
    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, v1, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public dissMissAgreementDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 258
    invoke-static {}, Lc8/Eyo;->isHasShowAgreementDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 261
    :cond_0
    return-void
.end method

.method public getAppInitInfo()Lc8/Dyo;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/Eyo;->appInitInfo:Lc8/Dyo;

    return-object v0
.end method

.method public isShowChinaUnicomDialog()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lc8/Eyo;->isShowChinaUnicomStyle:Z

    return v0
.end method
