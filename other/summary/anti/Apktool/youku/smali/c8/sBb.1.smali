.class public Lc8/sBb;
.super Ljava/lang/Object;
.source "ApiResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tBb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BizResponse"
.end annotation


# static fields
.field public static defaultResponse:Lc8/sBb;


# instance fields
.field public bizCode:Ljava/lang/String;

.field public errCode:Ljava/lang/String;

.field public isSuccess:Z

.field public receiveLen:I

.field public rt:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lc8/sBb;

    invoke-direct {v0}, Lc8/sBb;-><init>()V

    sput-object v0, Lc8/sBb;->defaultResponse:Lc8/sBb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lc8/sBb;->isSuccess:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/sBb;->bizCode:Ljava/lang/String;

    .line 40
    iput v1, p0, Lc8/sBb;->receiveLen:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/sBb;->rt:D

    return-void
.end method


# virtual methods
.method public isNotFoundSecret()Z
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "E0111"

    iget-object v1, p0, Lc8/sBb;->bizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "E0112"

    iget-object v1, p0, Lc8/sBb;->bizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParamError()Z
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "E0101"

    iget-object v1, p0, Lc8/sBb;->bizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignError()Z
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "E0102"

    iget-object v1, p0, Lc8/sBb;->bizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
