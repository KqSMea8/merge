.class public Lc8/tNf;
.super Ljava/lang/Object;
.source "ImageConstants.java"


# static fields
.field public static final isTaobaocdnPic:Ljava/lang/String; = ".*taobao.*|.*cdn.*"

.field private static sCDNPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTaboCDN(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 17
    sget-object v1, Lc8/tNf;->sCDNPattern:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    .line 18
    const-string/jumbo v1, ".*taobao.*|.*cdn.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lc8/tNf;->sCDNPattern:Ljava/util/regex/Pattern;

    .line 21
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    :cond_1
    :goto_0
    return v0

    .line 24
    :cond_2
    const-string/jumbo v1, "a.tbcdn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "b.tbcdn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    sget-object v0, Lc8/tNf;->sCDNPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
