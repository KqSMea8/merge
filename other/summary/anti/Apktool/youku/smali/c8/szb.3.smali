.class public Lc8/szb;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mzb;,
        Lc8/rzb;,
        Lc8/qzb;,
        Lc8/ozb;,
        Lc8/pzb;,
        Lc8/nzb;
    }
.end annotation


# static fields
.field public static G_TRANSFER_URL:Ljava/lang/String; = null

.field public static final SDK_TYPE:Ljava/lang/String; = "mini"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "https://h-adashx.ut.taobao.com/upload"

    sput-object v0, Lc8/szb;->G_TRANSFER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getSdkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "mini"

    return-object v0
.end method
