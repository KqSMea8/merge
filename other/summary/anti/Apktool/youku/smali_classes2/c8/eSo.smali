.class public Lc8/eSo;
.super Ljava/lang/Object;
.source "VipJniUtil.java"


# static fields
.field public static isVipJniSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lc8/eSo;->isVipJniSupported:Z

    .line 17
    :try_start_0
    const-string/jumbo v0, "vipjniutil"

    invoke-static {v0}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lc8/eSo;->isVipJniSupported:Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lc8/eSo;->isVipJniSupported:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getNormal()Ljava/lang/String;
.end method

.method public native getPri()Ljava/lang/String;
.end method

.method public getReserveAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public native getTest()Ljava/lang/String;
.end method

.method public isReserve(Ljava/lang/String;)Z
    .locals 1
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public reserve()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
