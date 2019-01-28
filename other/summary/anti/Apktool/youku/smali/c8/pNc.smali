.class public final Lc8/pNc;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oNc;
    }
.end annotation


# static fields
.field private static sAndroidLogger:Lc8/oNc;

.field private static sTargetLogger:Lc8/qNc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lc8/oNc;->getInstance()Lc8/oNc;

    move-result-object v0

    sput-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 99
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1, p2}, Lc8/qNc;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 111
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1, p2}, Lc8/oNc;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 105
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 153
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1, p2}, Lc8/qNc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 165
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1, p2}, Lc8/oNc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 158
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 159
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_1
    return-void
.end method

.method public static footprint(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0}, Lc8/qNc;->footprint(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 171
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0}, Lc8/oNc;->footprint(Ljava/lang/String;)I

    .line 173
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 117
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1, p2}, Lc8/qNc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 129
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1, p2}, Lc8/oNc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 123
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_1
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 73
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v0, p0}, Lc8/qNc;->setLogLevel(I)V

    .line 76
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0}, Lc8/oNc;->setLogLevel(I)V

    .line 77
    return-void
.end method

.method public static setLogger(Lc8/qNc;)V
    .locals 2
    .param p0, "logger"    # Lc8/qNc;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    sput-object p0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    .line 68
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    iget v1, p0, Lc8/qNc;->LOG_LEVEL:I

    invoke-virtual {v0, v1}, Lc8/oNc;->setLogLevel(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 81
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1, p2}, Lc8/qNc;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 93
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1, p2}, Lc8/oNc;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 87
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 135
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1, p2}, Lc8/qNc;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 147
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1, p2}, Lc8/oNc;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 140
    sget-object v0, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lc8/pNc;->sTargetLogger:Lc8/qNc;

    invoke-virtual {v1, p0, p1}, Lc8/qNc;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 141
    :cond_0
    sget-object v0, Lc8/pNc;->sAndroidLogger:Lc8/oNc;

    invoke-virtual {v0, p0, p1}, Lc8/oNc;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_1
    return-void
.end method
