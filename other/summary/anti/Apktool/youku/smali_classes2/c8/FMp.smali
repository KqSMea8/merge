.class public final Lc8/FMp;
.super Ljava/lang/Object;
.source "LogTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/EMp;
    }
.end annotation


# static fields
.field public static final D:I = 0x2

.field public static final E:I = 0x10

.field public static final I:I = 0x4

.field public static final N:I = 0x20

.field public static final V:I = 0x1

.field public static final W:I = 0x8

.field public static volatile mEnableLog:Z

.field public static volatile mEnableTLog:Z

.field public static volatile mLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lc8/FMp;->mEnableLog:Z

    .line 20
    sput-boolean v0, Lc8/FMp;->mEnableTLog:Z

    .line 31
    const/4 v0, 0x4

    sput v0, Lc8/FMp;->mLogLevel:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 44
    sget-boolean v2, Lc8/FMp;->mEnableLog:Z

    if-nez v2, :cond_0

    .line 85
    :goto_0
    return v1

    .line 49
    :cond_0
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 51
    :sswitch_0
    :try_start_0
    sget-boolean v2, Lc8/FMp;->mEnableTLog:Z

    if-eqz v2, :cond_1

    .line 52
    invoke-static {p1, p2}, Lc8/eOf;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 57
    :sswitch_1
    sget-boolean v2, Lc8/FMp;->mEnableTLog:Z

    if-eqz v2, :cond_2

    .line 58
    invoke-static {p1, p2}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 63
    :sswitch_2
    sget-boolean v2, Lc8/FMp;->mEnableTLog:Z

    if-eqz v2, :cond_3

    .line 64
    invoke-static {p1, p2}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 69
    :sswitch_3
    sget-boolean v2, Lc8/FMp;->mEnableTLog:Z

    if-eqz v2, :cond_4

    .line 70
    invoke-static {p1, p2, p3}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_4
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0

    .line 75
    :sswitch_4
    sget-boolean v2, Lc8/FMp;->mEnableTLog:Z

    if-eqz v2, :cond_5

    .line 76
    invoke-static {p1, p2, p3}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :cond_5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method
