.class public Lc8/lwk;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final MOBILE_PREFIX_EN:Ljava/lang/String; = "44"

.field public static final MOBILE_PREFIX_FR:Ljava/lang/String; = "33"

.field private static final digits:[C

.field private static final htmlScriptPattern:Ljava/util/regex/Pattern;

.field private static final htmlSpecialCharPattern:Ljava/util/regex/Pattern;

.field private static final htmlStylePattern:Ljava/util/regex/Pattern;

.field private static final htmlTagPattern:Ljava/util/regex/Pattern;

.field private static rnd:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 22
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lc8/lwk;->rnd:Ljava/util/Random;

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/lwk;->digits:[C

    .line 39
    const-string/jumbo v0, "<script[^>]*?>[\\s\\S]*?<\\/script>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/lwk;->htmlScriptPattern:Ljava/util/regex/Pattern;

    .line 42
    const-string/jumbo v0, "<style[^>]*?>[\\s\\S]*?<\\/style>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/lwk;->htmlStylePattern:Ljava/util/regex/Pattern;

    .line 45
    const-string/jumbo v0, "<[^>]+>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/lwk;->htmlTagPattern:Ljava/util/regex/Pattern;

    .line 48
    const-string/jumbo v0, "&[a-z]+;"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/lwk;->htmlSpecialCharPattern:Ljava/util/regex/Pattern;

    return-void

    .line 31
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64DecodeBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 417
    if-nez p0, :cond_0

    .line 422
    :goto_0
    return-object v0

    .line 420
    :cond_0
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

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
