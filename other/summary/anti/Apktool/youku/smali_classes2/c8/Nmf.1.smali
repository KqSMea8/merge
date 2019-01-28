.class public Lc8/Nmf;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mmf;
    }
.end annotation


# static fields
.field private static a:Lc8/wmf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lc8/mmf;

    invoke-direct {v0}, Lc8/mmf;-><init>()V

    sput-object v0, Lc8/Nmf;->a:Lc8/wmf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TBLoad."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 108
    const-string/jumbo v0, ""

    .line 132
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const-string/jumbo v0, "[seq:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_2
    if-eqz p2, :cond_6

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_1
    add-int/lit8 v1, v0, 0x1

    array-length v3, p2

    if-ge v1, v3, :cond_5

    .line 122
    const-string/jumbo v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, p2, v0

    if-eqz v1, :cond_3

    aget-object v1, p2, v0

    .line 123
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p2, v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p2, v1

    .line 125
    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 122
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_2

    .line 124
    :cond_4
    const-string/jumbo v1, ""

    goto :goto_3

    .line 127
    :cond_5
    array-length v1, p2

    if-ge v0, v1, :cond_6

    .line 128
    const-string/jumbo v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    aget-object v0, p2, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    invoke-static {p0}, Lc8/Nmf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lc8/Nmf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/wmf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x4

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    invoke-static {p0}, Lc8/Nmf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p4}, Lc8/Nmf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lc8/wmf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x4

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    invoke-static {p0}, Lc8/Nmf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lc8/Nmf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/wmf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static getInstance()Lc8/wmf;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    invoke-static {p0}, Lc8/Nmf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lc8/Nmf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/wmf;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static isPrintLog(I)Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    invoke-interface {v0, p0}, Lc8/wmf;->isPrintLog(I)Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setInstance(Lc8/wmf;)V
    .locals 1

    .prologue
    .line 26
    if-nez p0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-interface {p0}, Lc8/wmf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sput-object p0, Lc8/Nmf;->a:Lc8/wmf;

    goto :goto_0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    invoke-static {p0}, Lc8/Nmf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lc8/Nmf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/wmf;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    invoke-static {p0}, Lc8/Nmf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p4}, Lc8/Nmf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lc8/wmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lc8/Nmf;->a:Lc8/wmf;

    invoke-static {p0}, Lc8/Nmf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lc8/Nmf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/wmf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
