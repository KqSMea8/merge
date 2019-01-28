.class public final Lc8/Osd;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/Osd;->a:[C

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u5343"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u767e"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u5341"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lc8/Osd;->b:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "\u4e07"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u4ebf"

    aput-object v1, v0, v4

    sput-object v0, Lc8/Osd;->c:[Ljava/lang/String;

    const v0, 0x96f6

    sput-char v0, Lc8/Osd;->d:C

    return-void

    :array_0
    .array-data 2
        0x4e00s
        0x4e8cs
        0x4e09s
        0x56dbs
        0x4e94s
        0x516ds
        0x4e03s
        0x516bs
        0x4e5ds
    .end array-data
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
