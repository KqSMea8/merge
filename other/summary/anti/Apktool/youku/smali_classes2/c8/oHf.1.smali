.class public Lc8/oHf;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final COMMON_TAG:Ljava/lang/String; = "STRATEGY.ALL"

.field private static final FORMAT_LOCK:Ljava/lang/Object;

.field public static final LEVEL_D:C = 'D'

.field public static final LEVEL_E:C = 'E'

.field public static final LEVEL_I:C = 'I'

.field public static final LEVEL_L:C = 'L'

.field public static final LEVEL_V:C = 'V'

.field public static final LEVEL_W:C = 'W'

.field private static sFormatter:Ljava/util/Formatter;

.field public static final sLogTypes:[C

.field private static sMinLogLevel:Ljava/lang/Integer;

.field private static sSB:Ljava/lang/StringBuilder;

.field private static sTLogValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/oHf;->sLogTypes:[C

    .line 22
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    sput-boolean v0, Lc8/oHf;->sTLogValid:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/oHf;->FORMAT_LOCK:Ljava/lang/Object;

    return-void

    .line 20
    :array_0
    .array-data 2
        0x56s
        0x44s
        0x49s
        0x57s
        0x45s
        0x4cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 81
    const/16 v0, 0x44

    invoke-static {v0}, Lc8/oHf;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-boolean v0, Lc8/oHf;->sTLogValid:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 111
    const/16 v0, 0x45

    invoke-static {v0}, Lc8/oHf;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-boolean v0, Lc8/oHf;->sTLogValid:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static varargs fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 124
    sget-object v1, Lc8/oHf;->FORMAT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lc8/oHf;->sSB:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0xfa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lc8/oHf;->sSB:Ljava/lang/StringBuilder;

    .line 130
    :goto_0
    sget-object v0, Lc8/oHf;->sFormatter:Ljava/util/Formatter;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/Formatter;

    sget-object v2, Lc8/oHf;->sSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lc8/oHf;->sFormatter:Ljava/util/Formatter;

    .line 133
    :cond_0
    sget-object v0, Lc8/oHf;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 134
    sget-object v0, Lc8/oHf;->sSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 128
    :cond_1
    sget-object v0, Lc8/oHf;->sSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getLogTypeIndex(C)I
    .locals 2
    .param p0, "target"    # C

    .prologue
    .line 25
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    sget-object v1, Lc8/oHf;->sLogTypes:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 26
    sget-object v1, Lc8/oHf;->sLogTypes:[C

    aget-char v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 30
    .end local v0    # "k":I
    :goto_1
    return v0

    .line 25
    .restart local v0    # "k":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 91
    const/16 v0, 0x49

    invoke-static {v0}, Lc8/oHf;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-boolean v0, Lc8/oHf;->sTLogValid:Z

    if-eqz v0, :cond_1

    .line 93
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static isLoggable(C)Z
    .locals 5
    .param p0, "targetLog"    # C

    .prologue
    const/4 v2, 0x0

    .line 58
    sget-object v3, Lc8/oHf;->sMinLogLevel:Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 59
    sget-boolean v3, Lc8/oHf;->sTLogValid:Z

    if-eqz v3, :cond_3

    .line 60
    invoke-static {}, Lc8/eOf;->getLogLevel()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "logLevel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x4c

    .line 62
    .local v1, "logLevelChar":C
    :goto_0
    invoke-static {v1}, Lc8/oHf;->getLogTypeIndex(C)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lc8/oHf;->sMinLogLevel:Ljava/lang/Integer;

    .line 67
    .end local v0    # "logLevel":Ljava/lang/String;
    .end local v1    # "logLevelChar":C
    :cond_0
    :goto_1
    invoke-static {p0}, Lc8/oHf;->getLogTypeIndex(C)I

    move-result v3

    sget-object v4, Lc8/oHf;->sMinLogLevel:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 61
    .restart local v0    # "logLevel":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 64
    .end local v0    # "logLevel":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x56

    invoke-static {v3}, Lc8/oHf;->getLogTypeIndex(C)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lc8/oHf;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_1
.end method

.method public static setMinLogLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const/16 v0, 0x56

    invoke-static {v0}, Lc8/oHf;->getLogTypeIndex(C)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/oHf;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_0

    .line 39
    :pswitch_1
    const/16 v0, 0x44

    invoke-static {v0}, Lc8/oHf;->getLogTypeIndex(C)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/oHf;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_0

    .line 42
    :pswitch_2
    const/16 v0, 0x49

    invoke-static {v0}, Lc8/oHf;->getLogTypeIndex(C)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/oHf;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_0

    .line 45
    :pswitch_3
    const/16 v0, 0x57

    invoke-static {v0}, Lc8/oHf;->getLogTypeIndex(C)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/oHf;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_0

    .line 48
    :pswitch_4
    const/16 v0, 0x45

    invoke-static {v0}, Lc8/oHf;->getLogTypeIndex(C)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/oHf;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setTLogValid(Z)V
    .locals 0
    .param p0, "TLogValid"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lc8/oHf;->sTLogValid:Z

    .line 55
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    const/16 v0, 0x56

    invoke-static {v0}, Lc8/oHf;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-boolean v0, Lc8/oHf;->sTLogValid:Z

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/eOf;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 101
    const/16 v0, 0x57

    invoke-static {v0}, Lc8/oHf;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-boolean v0, Lc8/oHf;->sTLogValid:Z

    if-eqz v0, :cond_1

    .line 103
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {p1, p2}, Lc8/oHf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method
