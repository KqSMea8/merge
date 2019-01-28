.class public Lc8/WMg;
.super Ljava/lang/Object;
.source "TrackerUtil.java"


# static fields
.field private static ID_SPECIFIER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "#ID#"

    sput-object v0, Lc8/WMg;->ID_SPECIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpmParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "spm"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 19
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "params":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v2, p1, 0x1

    if-lt v1, v2, :cond_0

    .line 21
    aget-object v1, v0, p1

    .line 23
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method
