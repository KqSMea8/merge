.class public Lc8/qwf;
.super Lc8/RNf;
.source "UnitedLog.java"


# static fields
.field private static final FIRST_TAG:Ljava/lang/String; = "RxPhenix"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lc8/RNf;-><init>()V

    return-void
.end method

.method private static completeHttpPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "needCompletion"    # Z

    .prologue
    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    if-eqz p2, :cond_1

    const-string/jumbo v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    const-string/jumbo v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    const-string/jumbo v2, "%%"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?complete=prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const-string/jumbo v0, "%"

    const-string/jumbo v1, "%%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 113
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x1

    invoke-static {p2, p1, p0, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "formatted"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 119
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "RxPhenix"

    invoke-static {p1, p0}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_0
    return-void
.end method

.method public static varargs dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 107
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x1

    invoke-static {p0, p2, p1, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 167
    const/4 v0, 0x6

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x0

    invoke-static {p2, p1, p0, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "formatted"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 173
    const/4 v0, 0x6

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "RxPhenix"

    invoke-static {p1, p0}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    return-void
.end method

.method public static varargs ep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 161
    const/4 v0, 0x6

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x0

    invoke-static {p0, p2, p1, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 131
    const/4 v0, 0x4

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x1

    invoke-static {p2, p1, p0, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "formatted"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 137
    const/4 v0, 0x4

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "RxPhenix"

    invoke-static {p1, p0}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method public static varargs ip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 125
    const/4 v0, 0x4

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x1

    invoke-static {p0, p2, p1, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method private static predictOutputSize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "formatted"    # Ljava/lang/String;
    .param p1, "requestId"    # I
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secondTag"    # Ljava/lang/String;
    .param p5, "needHttpCompletion"    # Z

    .prologue
    .line 39
    const/4 v0, 0x5

    .line 40
    .local v0, "total":I
    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_0
    if-eqz p4, :cond_1

    .line 44
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 46
    :cond_1
    if-lez p1, :cond_2

    .line 47
    add-int/lit8 v0, v0, 0xb

    .line 49
    :cond_2
    if-eqz p2, :cond_3

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 52
    :cond_3
    if-eqz p3, :cond_4

    .line 53
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 54
    if-eqz p5, :cond_4

    .line 55
    add-int/lit8 v0, v0, 0x15

    .line 59
    :cond_4
    return v0
.end method

.method private static standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "formatted"    # Ljava/lang/String;
    .param p1, "requestId"    # I
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secondTag"    # Ljava/lang/String;
    .param p5, "needHttpCompletion"    # Z

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p5}, Lc8/qwf;->predictOutputSize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    if-lez p1, :cond_0

    .line 66
    const-string/jumbo v1, " ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    if-eqz p2, :cond_1

    .line 69
    const-string/jumbo v1, " MODULE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    if-gtz p1, :cond_2

    if-eqz p2, :cond_4

    .line 72
    :cond_2
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    if-eqz p3, :cond_3

    .line 78
    const-string/jumbo v1, ", PATH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v0, p3, p5}, Lc8/qwf;->completeHttpPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 81
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 74
    :cond_4
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static standardizing(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "formatted"    # Ljava/lang/String;
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "secondTag"    # Ljava/lang/String;
    .param p3, "needHttpCompletion"    # Z

    .prologue
    const/4 v2, 0x0

    .line 31
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lc8/Jxf;->getId()I

    move-result v1

    invoke-virtual {p1}, Lc8/Jxf;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lc8/qwf;->standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lc8/qwf;->standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "formatted"    # Ljava/lang/String;
    .param p1, "secondTag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 27
    const/4 v1, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lc8/qwf;->standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "formatted"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "needHttpCompletion"    # Z

    .prologue
    .line 85
    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lc8/qwf;->standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs v(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x1

    invoke-static {p2, p1, p0, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "formatted"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 101
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "RxPhenix"

    invoke-static {p1, p0}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lc8/RNf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-void
.end method

.method public static varargs vp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 89
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x1

    invoke-static {p0, p2, p1, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 149
    const/4 v0, 0x5

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x0

    invoke-static {p2, p1, p0, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "formatted"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 155
    const/4 v0, 0x5

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "RxPhenix"

    invoke-static {p1, p0}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_0
    return-void
.end method

.method public static varargs wp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "secondTag"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 143
    const/4 v0, 0x5

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "RxPhenix"

    const/4 v1, 0x0

    invoke-static {p0, p2, p1, v1}, Lc8/qwf;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method
